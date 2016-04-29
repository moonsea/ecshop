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
 * $Id: print.php 17217 2011-01-19 06:29:08Z moonsea $
*/

define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');
require_once(ROOT_PATH . 'includes/lib_order.php');
require_once(ROOT_PATH . 'languages/' .$_CFG['lang']. '/admin/statistic.php');
$smarty->assign('lang', $_LANG);

/*------------------------------------------------------ */
//--未完成订单列表
/*------------------------------------------------------ */
if($_REQUEST['act'] == 'unfinished_list')
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
    
    /* 查询 */
    $sale_list_data = get_sale_list('0');
    
    /* 赋值到模板 */
    $smarty->assign('filter',       $sale_list_data['filter']);
    $smarty->assign('record_count', $sale_list_data['record_count']);
    $smarty->assign('page_count',   $sale_list_data['page_count']);
    $smarty->assign('order_list_data', $sale_list_data['sale_list_data']);
    $smarty->assign('ur_here',          $_LANG['01_unfinished']);
    $smarty->assign('full_page',        1);
    $smarty->assign('start_date',       local_date('Y-m-d', $start_date));
    $smarty->assign('end_date',         local_date('Y-m-d', $end_date));
    $smarty->assign('cfg_lang',     $_CFG['lang']);
    // $smarty->assign('action_link',  array('text' => $_LANG['down_sales'],'href'=>'#download'));
    
    /*pageheader父标题*/
    $smarty->assign('pageheader_title',  $_LANG['14_post']);

    /* 显示页面 */
    assign_query_info();
    $smarty->display('post_list.htm');
}
elseif($_REQUEST['act'] == 'finished_list')
{
    /* 权限判断 */
    admin_priv('sale_order_stats');
    /* 时间参数 */
    // if (!isset($_REQUEST['start_date']))
    // {
    //     $start_date = local_strtotime('-7 days');
    // }
    // if (!isset($_REQUEST['end_date']))
    // {
    //     $end_date = local_strtotime('today');
    // }
    
    /* 查询 */
    $sale_list_data = get_sale_list('1');
    /* 赋值到模板 */
    $smarty->assign('filter',       $sale_list_data['filter']);
    $smarty->assign('record_count', $sale_list_data['record_count']);
    $smarty->assign('page_count',   $sale_list_data['page_count']);
    $smarty->assign('order_list_data', $sale_list_data['sale_list_data']);
    $smarty->assign('ur_here',          $_LANG['02_finished']);
    $smarty->assign('full_page',        1);
    // $smarty->assign('start_date',       local_date('Y-m-d', $start_date));
    // $smarty->assign('end_date',         local_date('Y-m-d', $end_date));
    $smarty->assign('cfg_lang',     $_CFG['lang']);
    // $smarty->assign('action_link',  array('text' => $_LANG['down_sales'],'href'=>'#download'));
    
    /*pageheader父标题*/
    $smarty->assign('pageheader_title',  $_LANG['13_print']);

    /* 显示页面 */
    assign_query_info();
    $smarty->display('post_list.htm');
}
/*------------------------------------------------------ */
//--每日商品明细列表
/*------------------------------------------------------ */
elseif($_REQUEST['act'] == 'order_datail')
{
    /* 权限判断 */
    admin_priv('sale_order_stats');
    
    $stauts = $_REQUEST['shipping_status'];
    /* 获取订单编号 */
    if (isset($_REQUEST['order_sn']))
    {
        $order_sn = $_REQUEST['order_sn'];
        $order_list_data = order_detail($order_sn,$stauts);
    }
    else
    {
        /* 如果参数不存在，退出 */
        die('invalid parameter');
    }
    
    /* 赋值到模板 */
    // $smarty->assign('filter',       $order_list_data['filter']);
    // $smarty->assign('record_count', $order_list_data['record_count']);
    // $smarty->assign('page_count',   $order_list_data['page_count']);
    $smarty->assign('order_list_data', $order_list_data['order_list_data']);
    $smarty->assign('goods_list_data', $order_list_data['goods_list_data']);
    if($status == '1')
    {
        $smarty->assign('ur_here',          $_LANG['02_finished']);
    }else {
        $smarty->assign('ur_here',          $_LANG['01_unfinished']);
    }
    $smarty->assign('full_page',        1);
    // $smarty->assign('start_date',       local_date('Y-m-d', $start_date));
    // $smarty->assign('end_date',         local_date('Y-m-d', $end_date));
    $smarty->assign('cfg_lang',     $_CFG['lang']);
    $smarty->assign('order_status',     $stauts);
    // $smarty->assign('action_link',  array('text' => $_LANG['down_sales'],'href'=>'#download'));
    
    /*pageheader父标题*/
    $smarty->assign('pageheader_title',  $_LANG['14_post']);

    /* 显示页面 */
    assign_query_info();
    $smarty->display('post_order.htm');
}
/*
* 确认订单
*/
elseif($_REQUEST['act'] == 'confirm')
{
    /* 权限判断 */
    admin_priv('sale_order_stats');
    
    $a = array();
    
    $order_sn = isset($_GET['order_sn'])? $_GET['order_sn']:"0" ;
    $invoice_no = isset($_GET['invoice_no'])? $_GET['invoice_no']:"" ;
    
    if($invoice_no == "")
    {
        $msg = '只有完成填写快递单号才可以确认订单!';
        // sys_msg($msg);
        $a['result'] = $msg;
        echo json_encode($a);
        exit();
    }
    
    $temp_sql = "UPDATE ".$ecs->table('order_info')." SET invoice_no = '". $invoice_no ."', shipping_status = '1' WHERE order_sn = '". $order_sn."'";
    if($db->query($temp_sql))
    {
        $a['result'] = "success";
    }
    else {
        $a['result'] = "操作失败";
    }
    
    // $a['result'] = $temp_sql;
    echo json_encode($a);
    exit();
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

    /*pageheader父标题*/
    $smarty->assign('pageheader_title',  $_LANG['13_print']);

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
function get_sale_list($shipping_status){

    // /* 时间参数 */
    // $filter['start_date'] = empty($_REQUEST['start_date']) ? local_strtotime('-7 days') : local_strtotime($_REQUEST['start_date']);
    // $filter['end_date'] = empty($_REQUEST['end_date']) ? local_strtotime('today') : local_strtotime($_REQUEST['end_date']);
  
    /* 查询数据的条件 */
    // $where = " WHERE ";
  
    /* 按日查询 */
    
    /*获取当前登录用户的id*/
    // $user_id = $_SESSION['admin_id'];
    
    /* 添加邀请码查询条件 */
    // $where = " WHERE au.user_id = '" . $user_id . "' AND au.invitation_code = oi.invitation_code";
    
    /* 添加印刷厂未处理的查询条件 */
    $where = " WHERE ( oi.shipping_status = '". $shipping_status ."')";
    
    /* 添加按照付款时间每日分组 */
    // $group = " GROUP BY FROM_UNIXTIME(oi.pay_time,'%y-%m-%d')";

    /* 按照付款时间每日分组查询记录数 */
    $sql = "SELECT COUNT(oi.order_id) FROM " . 
           $GLOBALS['ecs']->table('order_info') . ' AS oi '.
        //    $GLOBALS['ecs']->table('admin_user') . ' AS au '.
           $where;
        //    $group;
    $filter['record_count'] = $GLOBALS['db']->getOne($sql);
    
    /* 分页大小 */
    $filter = page_and_size($filter);
    
    /* 查询订单编号 */
    $sql = "SELECT oi.order_sn, ";
    
    /* 查询用户id */
    $sql = $sql . " oi.user_id, ";
    
    /* 查询收货人 */
    $sql = $sql . " oi.consignee, ";
    
    /* 查询下单时间 */
    $sql = $sql . " oi.add_time, ";
    
    /* 查询订单状态 */
    $sql = $sql . " oi.shipping_status ";
    
    /* 查询条件 */
    // $where = $where . " AND og.order_id = oi.order_id ";
    
    /* 查询 */
    $sql = $sql . " FROM " . 
           $GLOBALS['ecs']->table('order_info') . ' AS oi '.
        //    $GLOBALS['ecs']->table('order_goods') . ' AS og, '.
        //    $GLOBALS['ecs']->table('admin_user') . ' AS au'.
           $where . " ORDER BY order_sn";
    
    $is_pagination = true;
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
function order_detail($order_sn,$stauts){
    
    /* 查询订单信息 */
    $sql = "SELECT oi.order_sn,u.user_name,oi.add_time,oi.consignee,oi.address,oi.mobile,oi.zipcode,oi.postscript,oi.invoice_no ";
    
    $where = " WHERE oi.order_sn = '" . $order_sn . "' AND oi.user_id = u.user_id ";
    
    /* 印刷厂条件 */
    $where = $where . " AND oi.shipping_status = '".$stauts."' ";
    
    /* 查询 */
    $sql = $sql . " FROM " . 
           $GLOBALS['ecs']->table('order_info') . ' AS oi,'.
           $GLOBALS['ecs']->table('users') . ' AS u '.
           $where;

    $order_list_data = $GLOBALS['db']->getAll($sql);
    
    /* 查询订单商品信息 */
    $sql = "SELECT og.goods_name,og.goods_number,og.goods_url, ";
    
    /* 查询商品规格信息 */
    $sql = $sql . " bt.type_name as bind_type,mt.type_name as material_type,og.goods_height,og.goods_width,og.goods_page_count ";
    
    /* 查询用户条件 */
    // $where = " WHERE oi.user_id = u.user_id ";
    
    /* 查询订单商品条件 */
    $where = $where . " AND og.order_id = oi.order_id ";
    
    /* 查询装订类型条件 */
    $where = $where . " AND og.bind_type = bt.type_id ";
    
    /* 查询材质条件 */
    $where = $where . " AND og.material_type = mt.type_id ";
    
    /* 查询 */
    $sql = $sql . " FROM " . 
           $GLOBALS['ecs']->table('order_info') . ' AS oi,'.
           $GLOBALS['ecs']->table('order_goods') . ' AS og,'.
           $GLOBALS['ecs']->table('users') . ' AS u, '.
           $GLOBALS['ecs']->table('goods_bind_type') . ' AS bt,'.
           $GLOBALS['ecs']->table('material_type') . ' AS mt'.
           $where . " ORDER BY og.goods_id";

    $goods_list_data = $GLOBALS['db']->getAll($sql);
    
    $arr = array('order_list_data' => $order_list_data,'goods_list_data' => $goods_list_data);
  
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

/*------------------------------------------------------ */
//-- 按月查询获取每日订单列表
/*------------------------------------------------------ */
/**
 * 取得销售明细数据信息
 * @param   bool  $is_pagination  是否分页
 * @return  array   销售明细数据
 */
function get_sale_list_month_day($month_num){
  
    /* 按周查询 */
 
    /*获取当前登录用户的id*/
    $user_id = $_SESSION['admin_id'];

    /* 添加邀请码查询条件 */
    $where = " WHERE au.user_id = '" . $user_id . "' AND au.invitation_code = oi.invitation_code";
    
    /* 添加已经付款的查询条件 */
    $where = $where . " AND oi.pay_status = 2";
    
    /* 添加制定周的查询条件 */
    $where = $where . " AND CEIL((oi.pay_time - au.add_time)/(2592000)) = ". $month_num;
    
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
    
    $new_month = $month_num - 1;
    
    /* 查询距添加代理用户第几周 */
    $sql = "SELECT CEIL(((oi.pay_time - au.add_time)-(604800 * " . $new_month ."))/(86400)) AS day_num, ";
    
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