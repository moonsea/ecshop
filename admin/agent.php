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
    
    /* 按日查询 */
    $sale_list_data = get_sale_list();
    
    /* 按周查询 */
    $sale_list_data_week = get_sale_list_week();
    
    
    /* 按月查询 */
    $sale_list_data_month = get_sale_list_month();
    
    /* 赋值到模板 */
    $smarty->assign('filter',       $sale_list_data['filter']);
    $smarty->assign('record_count', $sale_list_data['record_count']);
    $smarty->assign('page_count',   $sale_list_data['page_count']);
    $smarty->assign('page_count_week',   $sale_list_data['page_count_week']);
    $smarty->assign('page_count_month',   $sale_list_data['page_count_month']);
    $smarty->assign('goods_sales_list', $sale_list_data['sale_list_data']);
    $smarty->assign('goods_sales_list_week', $sale_list_data_week['sale_list_data_week']);
    $smarty->assign('goods_sales_list_month', $sale_list_data_month['sale_list_data_month']);
    $smarty->assign('ur_here',          $_LANG['01_statistics']);
    $smarty->assign('full_page',        1);
    $smarty->assign('start_date',       local_date('Y-m-d', $start_date));
    $smarty->assign('end_date',         local_date('Y-m-d', $end_date));
    $smarty->assign('cfg_lang',     $_CFG['lang']);
    // $smarty->assign('action_link',  array('text' => $_LANG['down_sales'],'href'=>'#download'));
    
    /*pageheader父标题*/
    $smarty->assign('pageheader_title',  $_LANG['12_agent']);

    /* 显示页面 */
    assign_query_info();
    $smarty->display('agent_list.htm');
}
/*------------------------------------------------------ */
//--每日商品明细列表
/*------------------------------------------------------ */
elseif($_REQUEST['act'] == 'detail_day')
{
    /* 权限判断 */
    admin_priv('sale_order_stats');
    
    /* 按日或周或月查询订单信息 */
    if (isset($_REQUEST['day_num']))
    {
        $day_num = $_REQUEST['day_num'];
        $order_list_data = order_detail_day($day_num);
    }
    else
    {
        /* 如果参数不存在，退出 */
        die('invalid parameter');
    }
    
    /* 赋值到模板 */
    $smarty->assign('filter',       $order_list_data['filter']);
    $smarty->assign('record_count', $order_list_data['record_count']);
    $smarty->assign('page_count',   $order_list_data['page_count']);
    $smarty->assign('order_list_data', $order_list_data['order_list_data']);
    $smarty->assign('ur_here',          $_LANG['01_statistics']);
    $smarty->assign('full_page',        1);
    $smarty->assign('start_date',       local_date('Y-m-d', $start_date));
    $smarty->assign('end_date',         local_date('Y-m-d', $end_date));
    $smarty->assign('cfg_lang',     $_CFG['lang']);
    // $smarty->assign('action_link',  array('text' => $_LANG['down_sales'],'href'=>'#download'));
    
    /*pageheader父标题*/
    $smarty->assign('pageheader_title',  $_LANG['12_agent']);

    /* 显示页面 */
    assign_query_info();
    $smarty->display('agent_detail.htm');
}
/*
* 按周查询
*/
elseif($_REQUEST['act'] == 'detail_week')
{
    /* 权限判断 */
    admin_priv('sale_order_stats');
    
    /* 按日或周或月查询订单信息 */
    if (isset($_REQUEST['week_num']))
    {
        if(isset($_REQUEST['day_num']))
        {
            $day_num = $_REQUEST['day_num'];
        }
        
        $week_num = $_REQUEST['week_num'];
        $order_list_data = get_sale_list_week_day($week_num);
    }
    else
    {
        /* 如果参数不存在，退出 */
        die('invalid parameter');
    }
    
    /* 赋值到模板 */
    $smarty->assign('filter',       $order_list_data['filter']);
    $smarty->assign('record_count', $order_list_data['record_count']);
    $smarty->assign('page_count',   $order_list_data['page_count']);
    $smarty->assign('order_list_data', $order_list_data['order_list_data']);
    $smarty->assign('week_num', $week_num);
    $smarty->assign('ur_here',          $_LANG['01_statistics']);
    $smarty->assign('full_page',        1);
    $smarty->assign('start_date',       local_date('Y-m-d', $start_date));
    $smarty->assign('end_date',         local_date('Y-m-d', $end_date));
    $smarty->assign('cfg_lang',     $_CFG['lang']);
    // $smarty->assign('action_link',  array('text' => $_LANG['down_sales'],'href'=>'#download'));
    
    /*pageheader父标题*/
    $smarty->assign('pageheader_title',  $_LANG['12_agent']);

    /* 显示页面 */
    assign_query_info();
    $smarty->display('agent_list_detail.htm');
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
//--按日查询
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
  
    /* 按日查询 */
    
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


/*------------------------------------------------------ */
//-- 按周查询
/*------------------------------------------------------ */
/**
 * 取得销售明细数据信息
 * @param   bool  $is_pagination  是否分页
 * @return  array   销售明细数据
 */
function get_sale_list_week($is_pagination = true){
  
    /* 按周查询 */
 
    /*获取当前登录用户的id*/
    $user_id = $_SESSION['admin_id'];

    /* 添加邀请码查询条件 */
    $where = " WHERE au.user_id = '" . $user_id . "' AND au.invitation_code = oi.invitation_code";
    
    /* 添加已经付款的查询条件 */
    $where = $where . " AND oi.pay_status = 2";
    
    /* 添加按照付款时间每日分组 */
    $group = " GROUP BY CEIL((oi.pay_time - au.add_time)/(3600*24*7))";

    /* 按照付款时间按周数分组查询记录数 */
    $sql = "SELECT COUNT(oi.order_id) FROM " . 
           $GLOBALS['ecs']->table('order_info') . ' AS oi,'.
           $GLOBALS['ecs']->table('admin_user') . ' AS au '.
           $where .
           $group;
    $filter['record_count_week'] = $GLOBALS['db']->getOne($sql);
      
    /* 分页大小 */
    $filter = page_and_size($filter);
    
    /* 查询距添加代理用户第几周 */
    $sql = "SELECT CEIL((oi.pay_time - au.add_time)/(3600*24*7)) AS week_num, ";
    
    /* 查询每日订单数 */
    $sql = $sql . " COUNT(oi.order_id) AS order_sum_week, ";
    
    /* 查询每日产品数 */
    $sql = $sql . " COUNT(og.goods_id) AS product_sum_week ";
    
    /* 查询条件 */
    $where = $where . " AND og.order_id = oi.order_id ";
    
    /* 查询 */
    $sql = $sql . " FROM " . 
           $GLOBALS['ecs']->table('order_info') . ' AS oi,'.
           $GLOBALS['ecs']->table('order_goods') . ' AS og, '.
           $GLOBALS['ecs']->table('admin_user') . ' AS au'.
           $where .
           $group . " ORDER BY week_num";
    
    if ($is_pagination)
    {
        $sql .= " LIMIT " . $filter['start'] . ', ' . $filter['page_size'];
    }

    $sale_list_data_week = $GLOBALS['db']->getAll($sql);

    $arr = array('sale_list_data_week' => $sale_list_data_week, 'filter' => $filter, 'page_count_week' => $filter['page_count_week'], 'record_count_week' => $filter['record_count_week']);
  
    return $arr;
}

/*------------------------------------------------------ */
//-- 按月查询
/*------------------------------------------------------ */
/**
 * 取得销售明细数据信息
 * @param   bool  $is_pagination  是否分页
 * @return  array   销售明细数据
 */
function get_sale_list_month($is_pagination = true){
  
    /* 按周查询 */
 
    /*获取当前登录用户的id*/
    $user_id = $_SESSION['admin_id'];

    /* 添加邀请码查询条件 */
    $where = " WHERE au.user_id = '" . $user_id . "' AND au.invitation_code = oi.invitation_code";
    
    /* 添加已经付款的查询条件 */
    $where = $where . " AND oi.pay_status = 2";
    
    /* 添加按照付款时间每日分组 */
    $group = " GROUP BY CEIL((oi.pay_time - au.add_time)/(3600*24*30))";

    /* 按照付款时间按周数分组查询记录数 */
    $sql = "SELECT COUNT(oi.order_id) FROM " . 
           $GLOBALS['ecs']->table('order_info') . ' AS oi,'.
           $GLOBALS['ecs']->table('admin_user') . ' AS au '.
           $where .
           $group;
    $filter['record_count_month'] = $GLOBALS['db']->getOne($sql);
      
    /* 分页大小 */
    $filter = page_and_size($filter);
    
    /* 查询距添加代理用户第几周 */
    $sql = "SELECT CEIL((oi.pay_time - au.add_time)/(3600*24*30)) AS month_num, ";
    
    /* 查询每日订单数 */
    $sql = $sql . " COUNT(oi.order_id) AS order_sum_month, ";
    
    /* 查询每日产品数 */
    $sql = $sql . " COUNT(og.goods_id) AS product_sum_month ";
    
    /* 查询条件 */
    $where = $where . " AND og.order_id = oi.order_id ";
    
    /* 查询 */
    $sql = $sql . " FROM " . 
           $GLOBALS['ecs']->table('order_info') . ' AS oi,'.
           $GLOBALS['ecs']->table('order_goods') . ' AS og, '.
           $GLOBALS['ecs']->table('admin_user') . ' AS au'.
           $where .
           $group . " ORDER BY month_num";
    
    if ($is_pagination)
    {
        $sql .= " LIMIT " . $filter['start'] . ', ' . $filter['page_size'];
    }

    $sale_list_data_month = $GLOBALS['db']->getAll($sql);

    $arr = array('sale_list_data_month' => $sale_list_data_month, 'filter' => $filter, 'page_count' => $filter['page_count'], 'record_count_month' => $filter['record_count_month']);
  
    return $arr;
}

/*------------------------------------------------------ */
//-- 按日查询订单明细 
/*------------------------------------------------------ */
/**
 * 取得销售明细数据信息
 * @param   bool  $is_pagination  是否分页
 * @return  array   销售明细数据
 */
function order_detail_day($day_num){
  
    /*获取当前登录用户的id*/
    $user_id = $_SESSION['admin_id'];

    /* 添加邀请码查询条件 */
    $where = " WHERE au.user_id = '" . $user_id . "' AND au.invitation_code = oi.invitation_code";
    
    /* 添加已经付款的查询条件 */
    $where = $where . " AND oi.pay_status = 2";
    
    /* 添加查询日期条件 */
    $where = $where . " AND FROM_UNIXTIME(oi.pay_time,'%Y年%m月%d日') = '" . $day_num . "'";
    
    /* 添加按照付款时间每日分组 */
    // $group = " GROUP BY CEIL((oi.pay_time - au.add_time)/(3600*24*30))";

    /* 按照付款时间查询记录数 */
    $sql = "SELECT COUNT(oi.order_id) FROM " . 
           $GLOBALS['ecs']->table('order_info') . ' AS oi,'.
           $GLOBALS['ecs']->table('admin_user') . ' AS au '.
           $where;
    $filter['record_count'] = $GLOBALS['db']->getOne($sql);
      
    /* 分页大小 */
    $filter = page_and_size($filter);
    
    /* 查询内容 */
    $sql = "SELECT oi.order_sn,oi.add_time,oi.goods_amount,u.user_name,u.mobile_phone,au.user_name as agent_name ";
    
    /* 查询条件 */
    $where = $where . " AND oi.user_id = u.user_id ";
    
    /* 查询 */
    $sql = $sql . " FROM " . 
           $GLOBALS['ecs']->table('order_info') . ' AS oi,'.
           $GLOBALS['ecs']->table('users') . ' AS u, '.
           $GLOBALS['ecs']->table('admin_user') . ' AS au'.
           $where . " ORDER BY order_sn";
    
    $is_pagination = true;
    if ($is_pagination)
    {
        $sql .= " LIMIT " . $filter['start'] . ', ' . $filter['page_size'];
    }

    $order_list_data = $GLOBALS['db']->getAll($sql);

    $arr = array('order_list_data' => $order_list_data, 'filter' => $filter, 'page_count' => $filter['page_count'], 'record_count' => $filter['record_count']);
  
    return $arr;
}



/*------------------------------------------------------ */
//-- 按周查询获取每日订单列表
/*------------------------------------------------------ */
/**
 * 取得销售明细数据信息
 * @param   bool  $is_pagination  是否分页
 * @return  array   销售明细数据
 */
function get_sale_list_week_day($week_num){
  
    /* 按周查询 */
 
    /*获取当前登录用户的id*/
    $user_id = $_SESSION['admin_id'];

    /* 添加邀请码查询条件 */
    $where = " WHERE au.user_id = '" . $user_id . "' AND au.invitation_code = oi.invitation_code";
    
    /* 添加已经付款的查询条件 */
    $where = $where . " AND oi.pay_status = 2";
    
    /* 添加制定周的查询条件 */
    $where = $where . " AND CEIL((oi.pay_time - au.add_time)/(3600*24*7)) = ". $week_num;
    
    /* 添加按照付款时间每日分组 */
    $group = " GROUP BY FROM_UNIXTIME(oi.pay_time - au.add_time,'%Y%m%d')";

    /* 按照付款时间按周数分组查询记录数 */
    $sql = "SELECT COUNT(oi.order_id) FROM " . 
           $GLOBALS['ecs']->table('order_info') . ' AS oi,'.
           $GLOBALS['ecs']->table('admin_user') . ' AS au '.
           $where .
           $group;
    $filter['record_count'] = $GLOBALS['db']->getOne($sql);
      
    /* 分页大小 */
    $filter = page_and_size($filter);
    
    $new_week = $week_num - 1;
    
    /* 查询距添加代理用户第几周 */
    $sql = "SELECT CEIL(((oi.pay_time - au.add_time)-(604800 * " . $new_week ."))/(86400)) AS day_num, ";
    
    /* 查询每日订单数 */
    $sql = $sql . " COUNT(oi.order_id) AS order_sum, ";
    
    /* 查询每日产品数 */
    $sql = $sql . " COUNT(og.goods_id) AS product_sum ";
    
    /* 查询条件 */
    $where = $where . " AND og.order_id = oi.order_id ";
    
    /* 查询 */
    $sql = $sql . " FROM " . 
           $GLOBALS['ecs']->table('order_info') . ' AS oi,'.
           $GLOBALS['ecs']->table('order_goods') . ' AS og, '.
           $GLOBALS['ecs']->table('admin_user') . ' AS au'.
           $where .
           $group . " ORDER BY day_num";
    
    $is_pagination = true;
    if ($is_pagination)
    {
        $sql .= " LIMIT " . $filter['start'] . ', ' . $filter['page_size'];
    }

    $order_list_data = $GLOBALS['db']->getAll($sql);

    $arr = array('order_list_data' => $order_list_data, 'filter' => $filter, 'page_count' => $filter['page_count'], 'record_count' => $filter['record_count']);
  
    return $arr;
}

?>