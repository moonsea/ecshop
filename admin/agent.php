<?php

/**
 * ECSHOP 商品管理程序
 * ============================================================================
 * * 版权所有 2005-2012 上海商派网络科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com；
 * ----------------------------------------------------------------------------
 * 这不是一个自由软件！您只能在不用于商业目的的前提下对程序代码进行修改和
 * 使用；不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 * $Author: moonsea $
 * $Id: agent.php 17217 2011-01-19 06:29:08Z liubo $
*/

define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');
require_once(ROOT_PATH . 'includes/lib_order.php');
require_once(ROOT_PATH . 'languages/' .$_CFG['lang']. '/admin/statistic.php');
$smarty->assign('lang', $_LANG);

if(isset($_REQUEST['order_list'])&&isset($_REQUEST['way']))
{
    if($_REQUEST['order_list'] == 'agent')
    {
        if($_REQUEST['way'] == 'day')
        {
            //request the data
            $data =  array('data' => '1','data2'=>'2' );;
            echo json_encode($data);
            exit();
        }
        if($_REQUEST['way'] == 'week')
        {
            //request the data
        }
        if($_REQUEST['way'] == 'month')
        {
            //request the data
        }
    }
}

if (isset($_REQUEST['act']) && ($_REQUEST['act'] == 'query' ||  $_REQUEST['act'] == 'download'))
{
    /* 检查权限 */
    check_authz_json('sale_order_stats');
    if (strstr($_REQUEST['start_date'], '-') === false)
    {
        $_REQUEST['start_date'] = local_date('Y-m-d', $_REQUEST['start_date']);
        $_REQUEST['end_date'] = local_date('Y-m-d', $_REQUEST['end_date']);
    }
    /*------------------------------------------------------ */
    //--Excel文件下载
    /*------------------------------------------------------ */
    if ($_REQUEST['act'] == 'download')
    {
        $file_name = $_REQUEST['start_date'].'_'.$_REQUEST['end_date'] . '_sale';
        $goods_sales_list = get_sale_list(false);
        header("Content-type: application/vnd.ms-excel; charset=utf-8");
        header("Content-Disposition: attachment; filename=$file_name.xls");

        /* 文件标题 */
        echo ecs_iconv(EC_CHARSET, 'GB2312', $_REQUEST['start_date']. $_LANG['to'] .$_REQUEST['end_date']. $_LANG['sales_list']) . "\t\n";

        /* 商品名称,订单号,商品数量,销售价格,销售日期 */
        echo ecs_iconv(EC_CHARSET, 'GB2312', $_LANG['goods_name']) . "\t";
        echo ecs_iconv(EC_CHARSET, 'GB2312', $_LANG['order_sn']) . "\t";
        echo ecs_iconv(EC_CHARSET, 'GB2312', $_LANG['amount']) . "\t";
        echo ecs_iconv(EC_CHARSET, 'GB2312', $_LANG['sell_price']) . "\t";
        echo ecs_iconv(EC_CHARSET, 'GB2312', $_LANG['sell_date']) . "\t\n";

        foreach ($goods_sales_list['sale_list_data'] AS $key => $value)
        {
            echo ecs_iconv(EC_CHARSET, 'GB2312', $value['goods_name']) . "\t";
            echo ecs_iconv(EC_CHARSET, 'GB2312', '[ ' . $value['order_sn'] . ' ]') . "\t";
            echo ecs_iconv(EC_CHARSET, 'GB2312', $value['goods_num']) . "\t";
            echo ecs_iconv(EC_CHARSET, 'GB2312', $value['sales_price']) . "\t";
            echo ecs_iconv(EC_CHARSET, 'GB2312', $value['sales_time']) . "\t";
            echo "\n";
        }
        exit;
    }
    $sale_list_data = get_sale_list();
    $smarty->assign('goods_sales_list', $sale_list_data['sale_list_data']);
    $smarty->assign('filter',       $sale_list_data['filter']);
    $smarty->assign('record_count', $sale_list_data['record_count']);
    $smarty->assign('page_count',   $sale_list_data['page_count']);

    make_json_result($smarty->fetch('sale_list.htm'), '', array('filter' => $sale_list_data['filter'], 'page_count' => $sale_list_data['page_count']));
}
/*------------------------------------------------------ */
//--商品明细列表
/*------------------------------------------------------ */
elseif($_REQUEST['act'] == 'list')
{
    /* 权限判断 */
    admin_priv('sale_order_stats');
    /* 时间参数 */
    if (!isset($_REQUEST['start_date']))
    {
        $start_date = local_strtotime('-7 days');
    }
    if (!isset($_REQUEST['end_date']))
    {
        $end_date = local_strtotime('today');
    }
    
    $sale_list_data = get_sale_list();
    /* 赋值到模板 */
    $smarty->assign('filter',       $sale_list_data['filter']);
    $smarty->assign('record_count', $sale_list_data['record_count']);
    $smarty->assign('page_count',   $sale_list_data['page_count']);
    $smarty->assign('goods_sales_list', $sale_list_data['sale_list_data']);
    $smarty->assign('ur_here',          $_LANG['01_statistics']);
    $smarty->assign('full_page',        1);
    $smarty->assign('start_date',       local_date('Y-m-d', $start_date));
    $smarty->assign('end_date',         local_date('Y-m-d', $end_date));
    $smarty->assign('cfg_lang',     $_CFG['lang']);
    $smarty->assign('action_link',  array('text' => $_LANG['down_sales'],'href'=>'#download'));
    
    
    /*pageheader父标题*/
    $smarty->assign('pageheader_title',  $_LANG['12_agent']);

    /* 显示页面 */
    assign_query_info();
    $smarty->display('agent_list.htm');
}
/*------------------------------------------------------ */
//-- 编辑代理个人信息
/*------------------------------------------------------ */
elseif ($_REQUEST['act'] == 'info')
{
    // /* 不能编辑demo这个管理员 */
    // if ($_SESSION['admin_name'] == 'demo')
    // {
    //    $link[] = array('text' => $_LANG['back_list'], 'href'=>'privilege.php?act=list');
    //    sys_msg($_LANG['edit_admininfo_cannot'], 0, $link);
    // }

    $user_id = $_SESSION['admin_id'];
    // echo $username;

    // $_REQUEST['id'] = !empty($_REQUEST['id']) ? intval($_REQUEST['id']) : 0;

    // /* 查看是否有权限编辑其他管理员的信息 */
    // if ($_SESSION['admin_id'] != $_REQUEST['id'])
    // {
    //     admin_priv('admin_manage');
    // }

    /* 获取管理员信息 */
    $sql = "SELECT * FROM " .$ecs->table('admin_user').
           " WHERE user_id = '".$user_id."'";
    $user_info = $db->getRow($sql);


    // /* 取得该管理员负责的办事处名称 */
    // if ($user_info['agency_id'] > 0)
    // {
    //     $sql = "SELECT agency_name FROM " . $ecs->table('agency') . " WHERE agency_id = '$user_info[agency_id]'";
    //     $user_info['agency_name'] = $db->getOne($sql);
    // }

    /* 模板赋值 */
    $smarty->assign('ur_here',     '信息编辑');
    // $smarty->assign('action_link', array('text' => $_LANG['admin_list'], 'href'=>'privilege.php?act=list'));
    $smarty->assign('user', $user_info);    

    /* 获得该管理员的权限 */
    // $priv_str = $db->getOne("SELECT action_list FROM " .$ecs->table('admin_user'). " WHERE user_id = '$_GET[id]'");

    /* 如果被编辑的管理员拥有了all这个权限，将不能编辑 */
    // if ($priv_str != 'all')
    // {
    //    $smarty->assign('select_role',  get_role_list());
    // }
    $smarty->assign('form_act',    'change_info');
    // $smarty->assign('action',      'edit');
    // 

    /*pageheader父标题*/
    $smarty->assign('pageheader_title',  $_LANG['12_agent']);


    assign_query_info();
    $smarty->display('agent_info.htm');
}
/*------------------------------------------------------ */
//-- 修改密码
/*------------------------------------------------------ */
elseif ($_REQUEST['act'] == 'change_pwd')
{

    $user_id = $_SESSION['admin_id'];

    /* 获取管理员信息 */
    $sql = "SELECT * FROM " .$ecs->table('admin_user').
           " WHERE user_id = '".$user_id."'";
    $user_info = $db->getRow($sql);

    /* 模板赋值 */
    $smarty->assign('ur_here', '修改密码');
    // $smarty->assign('action_link', array('text' => $_LANG['admin_list'], 'href'=>'privilege.php?act=list'));
    $smarty->assign('user', $user_info);    

    $smarty->assign('form_act',    'change_passwd');
    // $smarty->assign('action',      'edit');
    // 

    /*pageheader父标题*/
    $smarty->assign('pageheader_title',  $_LANG['12_agent']);

    assign_query_info();
    $smarty->display('agent_change_passwd.htm');
}

/*------------------------------------------------------ */
//-- 更新管理员信息
/*------------------------------------------------------ */
elseif ($_REQUEST['act'] == 'change_passwd' || $_REQUEST['act'] == 'change_info')
{

    /* 变量初始化 */
    $admin_id    = !empty($_REQUEST['id'])        ? intval($_REQUEST['id'])      : 0;
    $phone    = !empty($_REQUEST['phone'])        ? intval($_REQUEST['phone'])      : 0;
    $bank_card    = !empty($_REQUEST['bank_card'])        ? intval($_REQUEST['bank_card'])      : 0;
    $ec_salt=rand(1,9999);
    $password = !empty($_POST['new_password']) ? ", password = '".md5(md5($_POST['new_password']).$ec_salt)."'"    : '';
    
    //修改密码
    $pwd_modified = false;

    if (!empty($_POST['new_password']))
    {
        /* 查询旧密码并与输入的旧密码比较是否相同 */
        $sql = "SELECT password FROM ".$ecs->table('admin_user')." WHERE user_id = '$admin_id'";

        $old_password = $db->getOne($sql);
        $sql ="SELECT ec_salt FROM ".$ecs->table('admin_user')." WHERE user_id = '$admin_id'";
        $old_ec_salt= $db->getOne($sql);
        if(empty($old_ec_salt))
        {
            $old_ec_password=md5($_POST['old_password']);
        }
        else
        {
            $old_ec_password=md5(md5($_POST['old_password']).$old_ec_salt);
        }
        if ($old_password <> $old_ec_password)
        {
           $link[] = array('text' => $_LANG['go_back'], 'href'=>'javascript:history.back(-1)');
           sys_msg('输入的旧密码错误', 0, $link);
        }

        /* 比较新密码和确认密码是否相同 */
        if ($_POST['new_password'] <> $_POST['pwd_confirm'])
        {
           $link[] = array('text' => $_LANG['go_back'], 'href'=>'javascript:history.back(-1)');
           sys_msg('输入的旧密码错误', 0, $link);
        }
        else
        {
            $pwd_modified = true;
        }
    }
    // sys_msg($admin_id, 0, $link);
    // exit();

    //更新管理员密码
    if($pwd_modified)
    {
        $sql = "UPDATE " .$ecs->table('admin_user'). " SET ".
               "ec_salt = '$ec_salt' ".
               $password.
               " WHERE user_id = '$admin_id'";
    }
    else
    {
        $sql = "UPDATE " .$ecs->table('admin_user'). " SET ".
               "phone = '$phone', ".
               "bank_card = '$bank_card' ".
               "WHERE user_id = '$admin_id'";
    }
   
   $db->query($sql);
   /* 记录管理员操作 */
   admin_log($_POST['user_name'], 'change_info', 'agent');

   /* 如果修改了密码，则需要将session中该管理员的数据清空 */
   if ($pwd_modified && $_REQUEST['act'] == 'change_passwd')
   {
       $sess->delete_spec_admin_session($_SESSION['admin_id']);
       $msg = '您已经成功的修改了密码，因此您必须重新登录!';
       sys_msg($msg);
   }
    else
   {
       $msg = '您已经成功的修改了个人帐号信息!';
   }

   /* 提示信息 */
   $link[] = array('text' => strpos($g_link, 'list') ? $_LANG['back_admin_list'] : $_LANG['modif_info'], 'href'=>$g_link);
   sys_msg("$msg<script>parent.document.getElementById('header-frame').contentWindow.document.location.reload();</script>", 0, $link);

}


/*------------------------------------------------------ */
//--获取销售明细需要的函数
/*------------------------------------------------------ */
/**
 * 取得销售明细数据信息
 * @param   bool  $is_pagination  是否分页
 * @return  array   销售明细数据
 */
function get_sale_list($is_pagination = true){

    // /* 时间参数 */
    // $filter['start_date'] = empty($_REQUEST['start_date']) ? local_strtotime('-7 days') : local_strtotime($_REQUEST['start_date']);
    // $filter['end_date'] = empty($_REQUEST['end_date']) ? local_strtotime('today') : local_strtotime($_REQUEST['end_date']);
  
    /* 查询数据的条件 */
    // $where = " WHERE ";
    
    /*获取当前登录用户的id*/
    $user_id = $_SESSION['admin_id'];
    
    /* 添加邀请码查询条件 */
    $where = " WHERE au.user_id = '" . $user_id . "' AND au.invitation_code = oi.invitation_code";
    
    /* 添加已经付款的查询条件 */
    $where = $where . " AND oi.pay_status = 2";
    
    /* 添加按照付款时间每日分组 */
    $group = " GROUP BY FROM_UNIXTIME(oi.pay_time,'%y-%m-%d')";

    /* 按照付款时间每日分组查询记录数 */
    $sql = "SELECT COUNT(oi.order_id) FROM " . 
           $GLOBALS['ecs']->table('order_info') . ' AS oi,'.
           $GLOBALS['ecs']->table('admin_user') . ' AS au '.
           $where .
           $group;
    $filter['record_count'] = $GLOBALS['db']->getOne($sql);
    
    /* 分页大小 */
    $filter = page_and_size($filter);
    
    /* 查询距添加代理用户第几天 */
    $sql = "SELECT FROM_UNIXTIME(oi.pay_time,'%Y年%m月%d日') AS day_num, ";
    
    /* 查询每日订单数 */
    $sql = $sql . " COUNT(oi.order_id) AS order_sum_day, ";
    
    /* 查询每日产品数 */
    $sql = $sql . " COUNT(og.goods_id) AS product_sum_day ";
    
    /* 查询条件 */
    $where = $where . " AND og.order_id = oi.order_id ";
    
    /* 查询 */
    $sql = $sql . " FROM " . 
           $GLOBALS['ecs']->table('order_info') . ' AS oi,'.
           $GLOBALS['ecs']->table('order_goods') . ' AS og, '.
           $GLOBALS['ecs']->table('admin_user') . ' AS au'.
           $where .
           $group . " ORDER BY day_num";
    
    if ($is_pagination)
    {
        $sql .= " LIMIT " . $filter['start'] . ', ' . $filter['page_size'];
    }

    $sale_list_data = $GLOBALS['db']->getAll($sql);

    $arr = array('sale_list_data' => $sale_list_data, 'filter' => $filter, 'page_count' => $filter['page_count'], 'record_count' => $filter['record_count']);
    return $arr;
}
?>