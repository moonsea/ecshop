<?php

/**
 * $Author: moonsea $
 * $Id: template_category.php 17217 2011-01-19 06:29:08Z moonsea $
*/

define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');
$exc = new exchange($ecs->table("product_category_yzldiy"), $db, 'id', 'name');

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
    /* 模板类型列表 */
    $temp_sql = "select * from ".$ecs->table('product_category_yzldiy')."order by id asc";
    $temp_arr = $db->query($temp_sql);

    $template_category_list = array();
    while ($temp_row = $db->fetchRow($temp_arr))
    {
        $template_category_list[] = $temp_row;
    }
    $smarty->assign('$template_category_list',     $template_category_list);

    /* 模板赋值 */
    $smarty->assign('ur_here',      '模板分类');
    $smarty->assign('action_link',  array('href' => 'template_category.php?act=add', 'text' => '添加模板分类'));
    $smarty->assign('full_page',    1);

    /*pageheader父标题*/
    $smarty->assign('pageheader_title',  $_LANG['03_template']);

    /* 列表页面 */
    assign_query_info();
    $smarty->display('template_category_list.htm');
}

/*------------------------------------------------------ */
//-- 排序、分页、查询
/*------------------------------------------------------ */
elseif ($_REQUEST['act'] == 'query')
{

    /* 模板类型列表 */
    $temp_sql = "select * from ".$ecs->table('product_category_yzldiy')."order by id asc";
    $temp_arr = $db->query($temp_sql);

    $template_category_list = array();
    while ($temp_row = $db->fetchRow($temp_arr))
    {
        $template_category_list[] = $temp_row;
    }
    $smarty->assign('$template_category_list',     $template_category_list);

    make_json_result($smarty->fetch('template_category_list.htm'));
}

/*------------------------------------------------------ */
//-- 编辑类型名称
/*------------------------------------------------------ */

if ($_REQUEST['act'] == 'edit_name')
{
    // check_authz_json('cat_manage');

    $id = intval($_POST['id']);
    $val = $_POST['val'];

    $tmpsql = "UPDATE ". $ecs->table('product_category_yzldiy')."SET name = '".$val."' WHERE id = '".$id."'";

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
    $smarty->assign('ur_here',      '添加模板分类');
    $smarty->assign('action_link',  array('href' => 'template_category.php?act=list', '模板分类列表'));

    // $smarty->assign('goods_type_list',  goods_type_list(0)); // 取得商品类型
    // $smarty->assign('attr_list',        get_attr_list()); // 取得商品属性

    // $smarty->assign('cat_select',   cat_list(0, 0, true));
    $smarty->assign('form_act',     'insert');
    // $smarty->assign('cat_info',     array('is_show' => 1));

    /* 显示页面 */
    assign_query_info();
    $smarty->display('template_category_info.htm');
}

/*------------------------------------------------------ */
//-- 商品装订类型时的处理
/*------------------------------------------------------ */
if ($_REQUEST['act'] == 'insert')
{
    /* 权限检查 */
    admin_priv('cat_manage');

    /* 初始化变量 */
    $category['type_id']       = !empty($_POST['type_id'])       ? trim($_POST['type_id'])     : '0';
    $category['type_name']     = !empty($_POST['type_name'])     ? trim($_POST['type_name'])     : '';

    if (type_exists($category['type_name']))
    {
        /* 不能有重复的类型名称 */
       $link[] = array('text' => $_LANG['go_back'], 'href' => 'javascript:history.back(-1)');
       sys_msg('模板分类重复', 0, $link);
    }

    /* 入库的操作 */
    $sql = "INSERT INTO " . $ecs->table('product_category_yzldiy') .
                " (id,name) ".
                " VALUES ('" . $category['type_id'] . "', '".$category['type_name']."')";
    $db->query($sql);

    admin_log($_POST['type_name'], 'add', 'template_category');   // 记录管理员操作
    clear_cache_files();    // 清除缓存

        /*添加链接*/
    $link[0]['text'] = '继续添加';
    $link[0]['href'] = 'template_category.php?act=add';

    $link[1]['text'] = '回到装订类型列表';
    $link[1]['href'] = 'template_category.php?act=list';

    sys_msg('模板分类添加成功', 0, $link);
    // }
 }

/*------------------------------------------------------ */
//-- 编辑商品分类信息
/*------------------------------------------------------ */
if ($_REQUEST['act'] == 'edit')
{
    admin_priv('cat_manage');   // 权限检查
    $type_id = $_REQUEST['id'];
    $category_info = get_category_info($type_id);  // 查询分类信息数据
    // $attr_list = get_attr_list();
    $filter_attr_list = array();

    /* 模板赋值 */
    $smarty->assign('ur_here',     '编辑模板分类');
    $smarty->assign('action_link', array('text' => '模板分类列表', 'href' => 'template_category.php?act=list'));

    $smarty->assign('category_info',    $category_info);
    $smarty->assign('form_act',    'update');

    /*pageheader父标题*/
    $smarty->assign('pageheader_title',  $_LANG['03_template']);

    /* 显示页面 */
    assign_query_info();
    $smarty->display('template_category_info.htm');
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
    $category['type_name']     = !empty($_POST['type_name'])     ? trim($_POST['type_name'])     : '';

    /* 判断分类名是否重复 */
    if ($category['type_name'] != $old_type_name)
    {
        if (type_exists($category['type_name'],$type_id))
        {
           $link[] = array('text' => $_LANG['go_back'], 'href' => 'javascript:history.back(-1)');
           sys_msg('模板分类已经存在', 0, $link);
        }
    }

    /* 更新类型信息 */
    $sql = "UPDATE " . $ecs->table('product_category_yzldiy') . " SET name = '" . $category['type_name'] . "' WHERE id = '".$type_id."'";
    $db->query($sql);

    /* 更新分类信息成功 */
    clear_cache_files(); // 清除缓存
    admin_log($_POST['type_name'], 'edit', 'template_category'); // 记录管理员操作

    /* 提示信息 */
    $link[] = array('text' => '模板分类列表', 'href' => 'template_category.php?act=list');
    sys_msg('模板分类修改成功', 0, $link);
}

/*------------------------------------------------------ */
//-- 删除商品分类
/*------------------------------------------------------ */
if ($_REQUEST['act'] == 'remove')
{
    check_authz_json('cat_manage');

    /* 初始化分类ID并取得分类名称 */
    $type_id   = intval($_GET['id']);
    $type_name = $db->getOne('SELECT type_name FROM ' .$ecs->table('product_category_yzldiy'). " WHERE id='$typet_id'");

    /* 当前分类下是否存在商品 */
    $goods_count = $db->getOne('SELECT COUNT(*) FROM ' .$ecs->table('product_yzldiy'). " WHERE cid='$type_id'");

    /* 如果不存在商品，则删除之 */
    if ($goods_count == 0)
    {
        /* 删除分类 */
        $sql = 'DELETE FROM ' .$ecs->table('product_category_yzldiy'). " WHERE id = '$type_id'";
        if ($db->query($sql))
        {
            // $db->query("DELETE FROM " . $ecs->table('nav') . "WHERE ctype = 'c' AND cid = '" . $cat_id . "' AND type = 'middle'");
            clear_cache_files();
            admin_log($type_name, 'remove', 'template_category');
        }
    }
    else
    {
        make_json_error($type_name .' '. '存在模板');
    }

    $url = 'template_category.php?act=query&' . str_replace('act=remove', '', $_SERVER['QUERY_STRING']);

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
   $sql = "SELECT COUNT(*) FROM " .$GLOBALS['ecs']->table('product_category_yzldiy').
          " WHERE name = '$type_name' AND type_id<>'$type_id'";
   return ($GLOBALS['db']->getOne($sql) > 0) ? true : false;
}

/**
 * 获得商品分类的所有信息
 *
 * @param   integer     $cat_id     指定的分类ID
 *
 * @return  mix
 */
function get_category_info($type_id)
{
    $sql = "SELECT * FROM " .$GLOBALS['ecs']->table('product_category_yzldiy'). " WHERE id='$type_id' LIMIT 1";
    return $GLOBALS['db']->getRow($sql);
}
?>
