<?php

/**
 * ECSHOP 商品分类管理程序
 * ============================================================================
 * * 版权所有 2005-2012 上海商派网络科技有限公司，并保留所有权利。
 * 网站地址: http://www.ecshop.com；
 * ----------------------------------------------------------------------------
 * 这不是一个自由软件！您只能在不用于商业目的的前提下对程序代码进行修改和
 * 使用；不允许对程序代码以任何形式任何目的的再发布。
 * ============================================================================
 * $Author: moonsea $
 * $Id: bind.php 17217 2011-01-19 06:29:08Z liubo $
*/

define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');
$exc = new exchange($ecs->table("goods_bind_type"), $db, 'type_id', 'type_name');

/* act操作项的初始化 */
if (empty($_REQUEST['act']))
{
    $_REQUEST['act'] = 'list';
}
else
{
    $_REQUEST['act'] = trim($_REQUEST['act']);
}

/*------------------------------------------------------ */
//-- 商品分类列表
/*------------------------------------------------------ */
if ($_REQUEST['act'] == 'list')
{
    /* 获取分类列表 */
    //$cat_list = cat_list(0, 0, false);
    
    /* 装订类型列表 */
    $temp_sql = "select * from ".$ecs->table('goods_bind_type')."order by type_id asc";
    $temp_arr = $db->query($temp_sql);

    $bind_type_list = array();
    while ($temp_row = $db->fetchRow($temp_arr))
    {
        $bind_type_list[] = $temp_row;
    }
    $smarty->assign('bind_type_list',     $bind_type_list);
    

    /* 模板赋值 */
    $smarty->assign('ur_here',      $_LANG['03_goods_bind_type']);
    $smarty->assign('action_link',  array('href' => 'bind.php?act=add', 'text' => $_LANG['04_goods_bind_type_add']));
    $smarty->assign('full_page',    1);

    $smarty->assign('bind_type_list',     $bind_type_list);

    /*pageheader父标题*/
    $smarty->assign('pageheader_title',  $_LANG['02_cat_and_goods']);

    /* 列表页面 */
    assign_query_info();
    $smarty->display('bind_type_list.htm');
}

/*------------------------------------------------------ */
//-- 排序、分页、查询
/*------------------------------------------------------ */
elseif ($_REQUEST['act'] == 'query')
{
    
    /* 装订类型列表 */
    $temp_sql = "select * from ".$ecs->table('goods_bind_type')."order by type_id asc";
    $temp_arr = $db->query($temp_sql);

    $bind_type_list = array();
    while ($temp_row = $db->fetchRow($temp_arr))
    {
        $bind_type_list[] = $temp_row;
    }
    $smarty->assign('bind_type_list',     $bind_type_list);
    
    $cat_list = cat_list(0, 0, false);
    $smarty->assign('cat_info',     $cat_list);

    make_json_result($smarty->fetch('bind_type_list.htm'));
}

/*------------------------------------------------------ */
//-- 编辑类型名称
/*------------------------------------------------------ */

if ($_REQUEST['act'] == 'edit_type_name')
{
    check_authz_json('cat_manage');

    $id = intval($_POST['id']);
    $val = $_POST['val'];

    $tmpsql = "UPDATE ". $ecs->table('goods_bind_type')."SET type_name = '".$val."' WHERE type_id = '".$id."'";
    
    if ($db->query($tmpsql))
    {
        clear_cache_files(); // 清除缓存
        make_json_result($val);
    }
    else
    {
        make_json_error($db->error());
    }
}

/*------------------------------------------------------ */
//-- 添加商品分类
/*------------------------------------------------------ */
if ($_REQUEST['act'] == 'add')
{
    /* 权限检查 */
    admin_priv('cat_manage');



    /* 模板赋值 */
    $smarty->assign('ur_here',      $_LANG['04_goods_bind_type_add']);
    $smarty->assign('action_link',  array('href' => 'bind.php?act=list', 'text' => $_LANG['03_goods_bind_type']));

    // $smarty->assign('goods_type_list',  goods_type_list(0)); // 取得商品类型
    // $smarty->assign('attr_list',        get_attr_list()); // 取得商品属性

    // $smarty->assign('cat_select',   cat_list(0, 0, true));
    $smarty->assign('form_act',     'insert');
    $smarty->assign('cat_info',     array('is_show' => 1));



    /* 显示页面 */
    assign_query_info();
    $smarty->display('bind_type_info.htm');
}

/*------------------------------------------------------ */
//-- 商品装订类型时的处理
/*------------------------------------------------------ */
if ($_REQUEST['act'] == 'insert')
{
    /* 权限检查 */
    admin_priv('cat_manage');

    /* 初始化变量 */
    $bind['type_id']       = !empty($_POST['type_id'])       ? trim($_POST['type_id'])     : '0';
    $bind['type_name']     = !empty($_POST['type_name'])     ? trim($_POST['type_name'])     : '';
    // $cat['show_in_nav']  = !empty($_POST['show_in_nav'])  ? intval($_POST['show_in_nav']): 0;
    // $cat['style']        = !empty($_POST['style'])        ? trim($_POST['style'])        : '';
    // $cat['is_show']      = !empty($_POST['is_show'])      ? intval($_POST['is_show'])    : 0;
    // $cat['grade']        = !empty($_POST['grade'])        ? intval($_POST['grade'])      : 0;
    // $cat['filter_attr']  = !empty($_POST['filter_attr'])  ? implode(',', array_unique(array_diff($_POST['filter_attr'],array(0)))) : 0;

    // $cat['cat_recommend']  = !empty($_POST['cat_recommend'])  ? $_POST['cat_recommend'] : array();

    if (type_exists($bind['type_name']))
    {
        /* 不能有重复的类型名称 */
       $link[] = array('text' => $_LANG['go_back'], 'href' => 'javascript:history.back(-1)');
       sys_msg('装订类型重复', 0, $link);
    }

    // if($cat['grade'] > 10 || $cat['grade'] < 0)
    // {
    //     /* 价格区间数超过范围 */
    //    $link[] = array('text' => $_LANG['go_back'], 'href' => 'javascript:history.back(-1)');
    //    sys_msg($_LANG['grade_error'], 0, $link);
    // }

    /* 入库的操作 */
    $sql = "INSERT INTO " . $ecs->table('goods_bind_type') .
                " (type_id,type_name) ".
                " VALUES ('" . $bind['type_id'] . "', '".$bind['type_name']."')";
    $db->query($sql);
    
    
    // if ($db->autoExecute($ecs->table('category'), $cat) !== false)
    // {
    //     $cat_id = $db->insert_id();
    //     if($cat['show_in_nav'] == 1)
    //     {
    //         $vieworder = $db->getOne("SELECT max(vieworder) FROM ". $ecs->table('nav') . " WHERE type = 'middle'");
    //         $vieworder += 2;
    //         //显示在自定义导航栏中
    //         $sql = "INSERT INTO " . $ecs->table('nav') .
    //             " (name,ctype,cid,ifshow,vieworder,opennew,url,type)".
    //             " VALUES('" . $cat['cat_name'] . "', 'c', '".$db->insert_id()."','1','$vieworder','0', '" . build_uri('category', array('cid'=> $cat_id), $cat['cat_name']) . "','middle')";
    //         $db->query($sql);
    //     }
    //     insert_cat_recommend($cat['cat_recommend'], $cat_id);

    admin_log($_POST['type_name'], 'add', 'bind');   // 记录管理员操作
    clear_cache_files();    // 清除缓存

        /*添加链接*/
    $link[0]['text'] = '继续添加';
    $link[0]['href'] = 'bind.php?act=add';

    $link[1]['text'] = '回到装订类型列表';
    $link[1]['href'] = 'bind.php?act=list';

    sys_msg($_LANG['catadd_succed'], 0, $link);
    // }
 }

/*------------------------------------------------------ */
//-- 编辑商品分类信息
/*------------------------------------------------------ */
if ($_REQUEST['act'] == 'edit')
{
    admin_priv('cat_manage');   // 权限检查
    $type_id = $_REQUEST['type_id'];
    $bind_type_info = get_bind_info($type_id);  // 查询分类信息数据
    // $attr_list = get_attr_list();
    $filter_attr_list = array();


    /* 模板赋值 */
    $smarty->assign('ur_here',     '编辑装订类型');
    $smarty->assign('action_link', array('text' => $_LANG['03_goods_bind_type'], 'href' => 'bind.php?act=list'));

    $smarty->assign('bind_type_info',    $bind_type_info);
    $smarty->assign('form_act',    'update');

    /*pageheader父标题*/
    $smarty->assign('pageheader_title',  $_LANG['02_cat_and_goods']);


    /* 显示页面 */
    assign_query_info();
    $smarty->display('bind_type_info.htm');
}

/*------------------------------------------------------ */
//-- 编辑装订类型信息
/*------------------------------------------------------ */
if ($_REQUEST['act'] == 'update')
{
    /* 权限检查 */
    admin_priv('cat_manage');

    /* 初始化变量 */
    $type_id              = !empty($_POST['old_type_id'])       ? intval($_POST['old_type_id'])     : 0;
    $old_type_name        = $_POST['old_type_name'];
    $bind['type_name']     = !empty($_POST['type_name'])     ? trim($_POST['type_name'])     : '';

    /* 判断分类名是否重复 */
    if ($bind['type_name'] != $old_type_name)
    {
        
        if (type_exists($bind['type_name'],$type_id))
        {
           $link[] = array('text' => $_LANG['go_back'], 'href' => 'javascript:history.back(-1)');
           sys_msg('装订类型已经存在', 0, $link);
        }
    }

    /* 更新类型信息 */
    $sql = "UPDATE " . $ecs->table('goods_bind_type') . " SET type_name = '" . $bind['type_name'] . "' WHERE type_id = '".$type_id."'";
    $db->query($sql);

    /* 更新分类信息成功 */
    clear_cache_files(); // 清除缓存
    admin_log($_POST['type_name'], 'edit', 'bind'); // 记录管理员操作

    /* 提示信息 */
    $link[] = array('text' => $_LANG['back_list'], 'href' => 'bind.php?act=list');
    sys_msg('装订类型修改成功', 0, $link);
}

/*------------------------------------------------------ */
//-- 删除商品分类
/*------------------------------------------------------ */
if ($_REQUEST['act'] == 'remove')
{
    check_authz_json('cat_manage');

    /* 初始化分类ID并取得分类名称 */
    $type_id   = intval($_GET['id']);
    $type_name = $db->getOne('SELECT type_name FROM ' .$ecs->table('goods_bind_type'). " WHERE type_id='$typet_id'");

    /* 当前分类下是否存在商品 */
    $goods_count = $db->getOne('SELECT COUNT(*) FROM ' .$ecs->table('goods'). " WHERE goods_bind_type='$type_id'");

    /* 如果不存在商品，则删除之 */
    if ($goods_count == 0)
    {
        /* 删除分类 */
        $sql = 'DELETE FROM ' .$ecs->table('goods_bind_type'). " WHERE type_id = '$type_id'";
        if ($db->query($sql))
        {
            // $db->query("DELETE FROM " . $ecs->table('nav') . "WHERE ctype = 'c' AND cid = '" . $cat_id . "' AND type = 'middle'");
            clear_cache_files();
            admin_log($type_name, 'remove', 'bind');
        }
    }
    else
    {
        make_json_error($type_name .' '. '存在商品');
    }

    $url = 'bind.php?act=query&' . str_replace('act=remove', '', $_SERVER['QUERY_STRING']);

    ecs_header("Location: $url\n");
    exit;
}

/*------------------------------------------------------ */
//-- PRIVATE FUNCTIONS
/*------------------------------------------------------ */
//
///**
// * 检查分类是否已经存在
// *
// * @param   string      $cat_name       分类名称
// * @param   integer     $parent_cat     上级分类
// * @param   integer     $exclude        排除的分类ID
// *
// * @return  boolean
// */
function type_exists($type_name,$type_id = 0)
{
   $sql = "SELECT COUNT(*) FROM " .$GLOBALS['ecs']->table('goods_bind_type').
          " WHERE type_name = '$type_name' AND type_id<>'$type_id'";
   return ($GLOBALS['db']->getOne($sql) > 0) ? true : false;
}

/**
 * 获得商品分类的所有信息
 *
 * @param   integer     $cat_id     指定的分类ID
 *
 * @return  mix
 */
function get_bind_info($type_id)
{
    $sql = "SELECT * FROM " .$GLOBALS['ecs']->table('goods_bind_type'). " WHERE type_id='$type_id' LIMIT 1";
    return $GLOBALS['db']->getRow($sql);
}
?>