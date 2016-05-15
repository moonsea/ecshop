<?php



/**

 * $Author: moonsea $

 * $Id: goods.php 17217 2011-01-19 06:29:08Z moonsea $

*/

define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');

require_once(ROOT_PATH . '/' . ADMIN_PATH . '/includes/lib_goods.php');

include_once(ROOT_PATH . '/includes/cls_image.php');

$image = new cls_image($_CFG['bgcolor']);

$exc = new exchange($ecs->table('goods'), $db, 'goods_id', 'goods_name');



/*------------------------------------------------------ */

//-- 商品列表，商品回收站

/*------------------------------------------------------ */



if ($_REQUEST['act'] == 'list' || $_REQUEST['act'] == 'trash')

{

    admin_priv('goods_manage');



    $cat_id = empty($_REQUEST['cat_id']) ? 0 : intval($_REQUEST['cat_id']);

    $goods_bind_type = empty($_REQUEST['goods_bind_type']) ? 0 : intval($_REQUEST['goods_bind_type']);

    $code   = empty($_REQUEST['extension_code']) ? '' : trim($_REQUEST['extension_code']);

    $suppliers_id = isset($_REQUEST['suppliers_id']) ? (empty($_REQUEST['suppliers_id']) ? '' : trim($_REQUEST['suppliers_id'])) : '';

    $is_on_sale = isset($_REQUEST['is_on_sale']) ? ((empty($_REQUEST['is_on_sale']) && $_REQUEST['is_on_sale'] === 0) ? '' : trim($_REQUEST['is_on_sale'])) : '';



    $handler_list = array();

    $handler_list['virtual_card'][] = array('url'=>'virtual_card.php?act=card', 'title'=>$_LANG['card'], 'img'=>'icon_send_bonus.gif');

    $handler_list['virtual_card'][] = array('url'=>'virtual_card.php?act=replenish', 'title'=>$_LANG['replenish'], 'img'=>'icon_add.gif');

    $handler_list['virtual_card'][] = array('url'=>'virtual_card.php?act=batch_card_add', 'title'=>$_LANG['batch_card_add'], 'img'=>'icon_output.gif');



    if ($_REQUEST['act'] == 'list' && isset($handler_list[$code]))

    {

        $smarty->assign('add_handler',      $handler_list[$code]);

    }



    /* 供货商名 */

    $suppliers_list_name = suppliers_list_name();

    $suppliers_exists = 1;

    if (empty($suppliers_list_name))

    {

        $suppliers_exists = 0;

    }

    $smarty->assign('is_on_sale', $is_on_sale);

    $smarty->assign('suppliers_id', $suppliers_id);

    $smarty->assign('suppliers_exists', $suppliers_exists);

    $smarty->assign('suppliers_list_name', $suppliers_list_name);

    unset($suppliers_list_name, $suppliers_exists);



    /* 模板赋值 */

    $goods_ur = array('' => $_LANG['01_goods_list'], 'virtual_card'=>$_LANG['50_virtual_card_list']);

    $ur_here = ($_REQUEST['act'] == 'list') ? $goods_ur[$code] : $_LANG['11_goods_trash'];

    $smarty->assign('ur_here', $ur_here);



    $action_link = ($_REQUEST['act'] == 'list') ? add_link($code) : array('href' => 'goods.php?act=list', 'text' => $_LANG['01_goods_list']);

    $smarty->assign('action_link',  $action_link);

    $smarty->assign('code',     $code);

    $smarty->assign('cat_list',     cat_list(0, $cat_id));



    $smarty->assign('brand_list',   get_brand_list());

    $smarty->assign('intro_list',   get_intro_list());

    $smarty->assign('lang',         $_LANG);

    $smarty->assign('list_type',    $_REQUEST['act'] == 'list' ? 'goods' : 'trash');

    $smarty->assign('use_storage',  empty($_CFG['use_storage']) ? 0 : 1);



    $suppliers_list = suppliers_list_info(' is_check = 1 ');

    $suppliers_list_count = count($suppliers_list);

    $smarty->assign('suppliers_list', ($suppliers_list_count == 0 ? 0 : $suppliers_list)); // 取供货商列表



    $goods_list = goods_list($_REQUEST['act'] == 'list' ? 0 : 1, ($_REQUEST['act'] == 'list') ? (($code == '') ? 1 : 0) : -1);

    $smarty->assign('goods_list',   $goods_list['goods']);

    $smarty->assign('filter',       $goods_list['filter']);

    $smarty->assign('record_count', $goods_list['record_count']);

    $smarty->assign('page_count',   $goods_list['page_count']);

    $smarty->assign('full_page',    1);



    /*pageheader父标题*/

    $smarty->assign('pageheader_title',  $_LANG['02_cat_and_goods']);





    /* 排序标记 */

    $sort_flag  = sort_flag($goods_list['filter']);

    $smarty->assign($sort_flag['tag'], $sort_flag['img']);



    /* 获取商品类型存在规格的类型 */

    $specifications = get_goods_type_specifications();

    $smarty->assign('specifications', $specifications);



    /* 显示商品列表页面 */

    assign_query_info();

    $htm_file = ($_REQUEST['act'] == 'list') ?

        'goods_list.htm' : (($_REQUEST['act'] == 'trash') ? 'goods_trash.htm' : 'group_list.htm');

    $smarty->display($htm_file);

}



/*------------------------------------------------------ */

//-- 添加新商品 编辑商品

/*------------------------------------------------------ */



elseif ($_REQUEST['act'] == 'add' || $_REQUEST['act'] == 'edit' || $_REQUEST['act'] == 'copy')

{

    include_once(ROOT_PATH . 'includes/fckeditor/fckeditor.php'); // 包含 html editor 类文件



    $is_add = $_REQUEST['act'] == 'add'; // 添加还是编辑的标识

    $is_copy = $_REQUEST['act'] == 'copy'; //是否复制



    admin_priv('goods_manage'); // 检查权限



    /* 如果是安全模式，检查目录是否存在 */

    // if (ini_get('safe_mode') == 1 && (!file_exists('../' . IMAGE_DIR . '/'.date('Ym')) || !is_dir('../' . IMAGE_DIR . '/'.date('Ym'))))

    // {

    //     if (@!mkdir('../' . IMAGE_DIR . '/'.date('Ym'), 0777))

    //     {

    //         $warning = sprintf($_LANG['safe_mode_warning'], '../' . IMAGE_DIR . '/'.date('Ym'));

    //         $smarty->assign('warning', $warning);

    //     }

    // }



    /* 如果目录存在但不可写，提示用户 */

    // elseif (file_exists('../' . IMAGE_DIR . '/'.date('Ym')) && file_mode_info('../' . IMAGE_DIR . '/'.date('Ym')) < 2)

    // {

    //     $warning = sprintf($_LANG['not_writable_warning'], '../' . IMAGE_DIR . '/'.date('Ym'));

    //     $smarty->assign('warning', $warning);

    // }





    /* 装订类型列表 */

    $temp_sql = "select * from ".$ecs->table('goods_bind_type')."order by type_id desc";

    $temp_arr = $db->query($temp_sql);



    $bind_type_list = array();

    while ($temp_row = $db->fetchRow($temp_arr))

    {

        $bind_type_list[] = $temp_row;

    }

    $smarty->assign('bind_type_list',     $bind_type_list);



    // 内页材质类型

    $inner_type_list = array();

    $sql = "SELECT type_id,type_name FROM " . $ecs->table('material_type') . " ORDER BY type_id";

    $temp_arr = $db->query($sql);

    while ($temp_row = $db->fetchRow($temp_arr))

    {

        $inner_type_list[] = $temp_row;

    }

    $smarty->assign('inner_type_list', $inner_type_list);



    /* 添加商品 */

    if ($is_add)

    {

        /* 默认值 */

        $last_choose = array(0, 0);

        if (!empty($_COOKIE['ECSCP']['last_choose']))

        {

            $last_choose = explode('|', $_COOKIE['ECSCP']['last_choose']);

        }

        $goods = array(

            'goods_id'      => 0,

            'goods_desc'    => '',

            'unit'          => '件',

            'cat_id'        => $last_choose[0],

            'brand_id'      => $last_choose[1],

            'is_on_sale'    => '1',

            'is_alone_sale' => '1',

            'is_shipping' => '0',

            'other_cat'     => array(), // 扩展分类

            'goods_type'    => 0,       // 商品类型

            'shop_price'    => 0,

            'promote_price' => 0,

            'market_price'  => 0,

            'integral'      => 0,

            'goods_number'  => $_CFG['default_storage'],

            'warn_number'   => 1,

            'promote_start_date' => local_date('Y-m-d'),

            'promote_end_date'   => local_date('Y-m-d', local_strtotime('+1 month')),

            'goods_weight'  => 0,

            'give_integral' => -1,

            'rank_integral' => -1

        );



        /* 图片列表 */

        $img_list = array();

    }

    else

    {

        /* 商品信息 */

        $sql = "SELECT * FROM " . $ecs->table('goods') . " WHERE goods_id = '$_REQUEST[goods_id]'";

        $goods = $db->getRow($sql);



        if (empty($goods) === true)

        {

            /* 默认值 */

            $goods = array(

                'goods_id'      => 0,

                'goods_name'    => '',

                'goods_brief'    => '',

                'goods_bind_type'   => 1,

                'shop_price'    => '0',

                'goods_add_page_max' => '1',

                'goods_inner_type' => '0'

            );

        }



        if (!empty($goods['goods_brief']))

        {

            //$goods['goods_brief'] = trim_right($goods['goods_brief']);

            $goods['goods_brief'] = $goods['goods_brief'];

        }



        /* 商品小图列表 */

        $sql = "SELECT * FROM " . $ecs->table('goods_gallery') . " WHERE goods_id = '$goods[goods_id]'";

        $img_list = $db->getAll($sql);

    }



    /* 模板赋值 */

    // $smarty->assign('code',    $code);

    $smarty->assign('info_act',  $is_add);

    $smarty->assign('ur_here', ($_REQUEST['act'] == 'edit' ? $_LANG['edit_goods'] : $_LANG['02_goods_add']));

    $smarty->assign('action_link', list_link($is_add, $code));

    $smarty->assign('goods', $goods);

    $smarty->assign('cat_list', cat_list(0, $goods['cat_id']));

    $smarty->assign('cfg', $_CFG);

    $smarty->assign('form_act', $is_add ? 'insert' : ($_REQUEST['act'] == 'edit' ? 'update' : 'insert'));

    if ($_REQUEST['act'] == 'add' || $_REQUEST['act'] == 'edit')

    {

        $smarty->assign('is_add', true);

    }

    $smarty->assign('img_list', $img_list);

    $smarty->assign('gd', gd_version());

    $smarty->assign('thumb_width', $_CFG['thumb_width']);

    $smarty->assign('thumb_height', $_CFG['thumb_height']);



    /*pageheader父标题*/

    $smarty->assign('pageheader_title',  $_LANG['02_cat_and_goods']);



    /* 显示商品信息页面 */

    assign_query_info();

    $smarty->display('goods_info.htm');

}



/*------------------------------------------------------ */

//-- 插入商品 更新商品

/*------------------------------------------------------ */



elseif ($_REQUEST['act'] == 'insert' || $_REQUEST['act'] == 'update')

{

    // $code = empty($_REQUEST['extension_code']) ? '' : trim($_REQUEST['extension_code']);



    /* 是否处理缩略图 */

    // $proc_thumb = (isset($GLOBALS['shop_id']) && $GLOBALS['shop_id'] > 0)? false : true;



    admin_priv('goods_manage'); // 检查权限



    /* 检查货号是否重复 */

    if ($_POST['goods_sn'])

    {

        $sql = "SELECT COUNT(*) FROM " . $ecs->table('goods') .

                " WHERE goods_sn = '$_POST[goods_sn]' AND is_delete = 0 AND goods_id <> '$_POST[goods_id]'";

        if ($db->getOne($sql) > 0)

        {

            sys_msg($_LANG['goods_sn_exists'], 1, array(), false);

        }

    }



    /* 检查图片：如果有错误，检查尺寸是否超过最大值；否则，检查文件类型 */

    // if (isset($_FILES['goods_img']['error'])) // php 4.2 版本才支持 error

    // {

    //     // 最大上传文件大小

    //     // $php_maxsize = ini_get('upload_max_filesize');

    //     // $htm_maxsize = '2M';

    //

    //     // 商品图片

    //     // if ($_FILES['goods_img']['error'] == 0)

    //     // {

    //     //     if (!$image->check_img_type($_FILES['goods_img']['type']))

    //     //     {

    //     //         sys_msg($_LANG['invalid_goods_img'], 1, array(), false);

    //     //     }

    //     // }

    //     // elseif ($_FILES['goods_img']['error'] == 1)

    //     // {

    //     //     sys_msg(sprintf($_LANG['goods_img_too_big'], $php_maxsize), 1, array(), false);

    //     // }

    //     // elseif ($_FILES['goods_img']['error'] == 2)

    //     // {

    //     //     sys_msg(sprintf($_LANG['goods_img_too_big'], $htm_maxsize), 1, array(), false);

    //     // }

    //

    //     // 商品缩略图

    //     // if (isset($_FILES['goods_thumb']))

    //     // {

    //     //     if ($_FILES['goods_thumb']['error'] == 0)

    //     //     {

    //     //         if (!$image->check_img_type($_FILES['goods_thumb']['type']))

    //     //         {

    //     //             sys_msg($_LANG['invalid_goods_thumb'], 1, array(), false);

    //     //         }

    //     //     }

    //     //     elseif ($_FILES['goods_thumb']['error'] == 1)

    //     //     {

    //     //         sys_msg(sprintf($_LANG['goods_thumb_too_big'], $php_maxsize), 1, array(), false);

    //     //     }

    //     //     elseif ($_FILES['goods_thumb']['error'] == 2)

    //     //     {

    //     //         sys_msg(sprintf($_LANG['goods_thumb_too_big'], $htm_maxsize), 1, array(), false);

    //     //     }

    //     // }

    //

    //     // 相册图片

    //     // foreach ($_FILES['img_url']['error'] AS $key => $value)

    //     // {

    //     //     if ($value == 0)

    //     //     {

    //     //         if (!$image->check_img_type($_FILES['img_url']['type'][$key]))

    //     //         {

    //     //             sys_msg(sprintf($_LANG['invalid_img_url'], $key + 1), 1, array(), false);

    //     //         }

    //     //     }

    //     //     elseif ($value == 1)

    //     //     {

    //     //         sys_msg(sprintf($_LANG['img_url_too_big'], $key + 1, $php_maxsize), 1, array(), false);

    //     //     }

    //     //     elseif ($_FILES['img_url']['error'] == 2)

    //     //     {

    //     //         sys_msg(sprintf($_LANG['img_url_too_big'], $key + 1, $htm_maxsize), 1, array(), false);

    //     //     }

    //     // }

    // }

    // /* 4.1版本 */

    // else

    // {

    //     // 商品图片

    //     // if ($_FILES['goods_img']['tmp_name'] != 'none')

    //     // {

    //     //     if (!$image->check_img_type($_FILES['goods_img']['type']))

    //     //     {

    //     //

    //     //         sys_msg($_LANG['invalid_goods_img'], 1, array(), false);

    //     //     }

    //     // }

    //

    //     // 商品缩略图

    //     // if (isset($_FILES['goods_thumb']))

    //     // {

    //     //     if ($_FILES['goods_thumb']['tmp_name'] != 'none')

    //     //     {

    //     //         if (!$image->check_img_type($_FILES['goods_thumb']['type']))

    //     //         {

    //     //             sys_msg($_LANG['invalid_goods_thumb'], 1, array(), false);

    //     //         }

    //     //     }

    //     // }

    //

    //     // 相册图片

    //     // foreach ($_FILES['img_url']['tmp_name'] AS $key => $value)

    //     // {

    //     //     if ($value != 'none')

    //     //     {

    //     //         if (!$image->check_img_type($_FILES['img_url']['type'][$key]))

    //     //         {

    //     //             sys_msg(sprintf($_LANG['invalid_img_url'], $key + 1), 1, array(), false);

    //     //         }

    //     //     }

    //     // }

    // }



    /* 插入还是更新的标识 */

    $is_insert = $_REQUEST['act'] == 'insert';



    /* 处理商品图片 */

    $goods_img        = '';  // 初始化商品图片

    $goods_thumb      = '';  // 初始化商品缩略图

    $original_img     = '';  // 初始化原始图片

    $old_original_img = '';  // 初始化原始图片旧图



    // 如果上传了商品图片，相应处理

    // if (($_FILES['goods_img']['tmp_name'] != '' && $_FILES['goods_img']['tmp_name'] != 'none') or (($_POST['goods_img_url'] != $_LANG['lab_picture_url'] && $_POST['goods_img_url'] != 'http://') && $is_url_goods_img = 1))

    // {

    //     if ($_REQUEST['goods_id'] > 0)

    //     {

    //         /* 删除原来的图片文件 */

    //         $sql = "SELECT goods_thumb, goods_img, original_img " .

    //                 " FROM " . $ecs->table('goods') .

    //                 " WHERE goods_id = '$_REQUEST[goods_id]'";

    //         $row = $db->getRow($sql);

    //         if ($row['goods_thumb'] != '' && is_file('../' . $row['goods_thumb']))

    //         {

    //             @unlink('../' . $row['goods_thumb']);

    //         }

    //         if ($row['goods_img'] != '' && is_file('../' . $row['goods_img']))

    //         {

    //             @unlink('../' . $row['goods_img']);

    //         }

    //         if ($row['original_img'] != '' && is_file('../' . $row['original_img']))

    //         {

    //             /* 先不处理，以防止程序中途出错停止 */

    //             //$old_original_img = $row['original_img']; //记录旧图路径

    //         }

    //         /* 清除原来商品图片 */

    //         if ($proc_thumb === false)

    //         {

    //             get_image_path($_REQUEST[goods_id], $row['goods_img'], false, 'goods', true);

    //             get_image_path($_REQUEST[goods_id], $row['goods_thumb'], true, 'goods', true);

    //         }

    //     }

    //

    //     if (empty($is_url_goods_img))

    //     {

    //         $original_img   = $image->upload_image($_FILES['goods_img']); // 原始图片

    //     }

    //     elseif ($_POST['goods_img_url'])

    //     {

    //

    //         if(preg_match('/(.jpg|.png|.gif|.jpeg)$/',$_POST['goods_img_url']) && copy(trim($_POST['goods_img_url']), ROOT_PATH . 'temp/' . basename($_POST['goods_img_url'])))

    //         {

    //               $original_img = 'temp/' . basename($_POST['goods_img_url']);

    //         }

    //

    //     }

    //

    //     if ($original_img === false)

    //     {

    //         sys_msg($image->error_msg(), 1, array(), false);

    //     }

    //     $goods_img      = $original_img;   // 商品图片

    //

    //     /* 复制一份相册图片 */

    //     /* 添加判断是否自动生成相册图片 */

    //     if ($_CFG['auto_generate_gallery'])

    //     {

    //         $img        = $original_img;   // 相册图片

    //         $pos        = strpos(basename($img), '.');

    //         $newname    = dirname($img) . '/' . $image->random_filename() . substr(basename($img), $pos);

    //         if (!copy('../' . $img, '../' . $newname))

    //         {

    //             sys_msg('fail to copy file: ' . realpath('../' . $img), 1, array(), false);

    //         }

    //         $img        = $newname;

    //

    //         $gallery_img    = $img;

    //         $gallery_thumb  = $img;

    //     }

    //

    //     // 如果系统支持GD，缩放商品图片，且给商品图片和相册图片加水印

    //     if ($proc_thumb && $image->gd_version() > 0 && $image->check_img_function($_FILES['goods_img']['type']) || $is_url_goods_img)

    //     {

    //

    //         if (empty($is_url_goods_img))

    //         {

    //             // 如果设置大小不为0，缩放图片

    //             if ($_CFG['image_width'] != 0 || $_CFG['image_height'] != 0)

    //             {

    //                 $goods_img = $image->make_thumb('../'. $goods_img , $GLOBALS['_CFG']['image_width'],  $GLOBALS['_CFG']['image_height']);

    //                 if ($goods_img === false)

    //                 {

    //                     sys_msg($image->error_msg(), 1, array(), false);

    //                 }

    //             }

    //

    //             /* 添加判断是否自动生成相册图片 */

    //             if ($_CFG['auto_generate_gallery'])

    //             {

    //                 $newname    = dirname($img) . '/' . $image->random_filename() . substr(basename($img), $pos);

    //                 if (!copy('../' . $img, '../' . $newname))

    //                 {

    //                     sys_msg('fail to copy file: ' . realpath('../' . $img), 1, array(), false);

    //                 }

    //                 $gallery_img        = $newname;

    //             }

    //

    //             // 加水印

    //             if (intval($_CFG['watermark_place']) > 0 && !empty($GLOBALS['_CFG']['watermark']))

    //             {

    //                 if ($image->add_watermark('../'.$goods_img,'',$GLOBALS['_CFG']['watermark'], $GLOBALS['_CFG']['watermark_place'], $GLOBALS['_CFG']['watermark_alpha']) === false)

    //                 {

    //                     sys_msg($image->error_msg(), 1, array(), false);

    //                 }

    //                 /* 添加判断是否自动生成相册图片 */

    //                 if ($_CFG['auto_generate_gallery'])

    //                 {

    //                     if ($image->add_watermark('../'. $gallery_img,'',$GLOBALS['_CFG']['watermark'], $GLOBALS['_CFG']['watermark_place'], $GLOBALS['_CFG']['watermark_alpha']) === false)

    //                     {

    //                         sys_msg($image->error_msg(), 1, array(), false);

    //                     }

    //                 }

    //             }

    //         }

    //

    //         // 相册缩略图

    //         /* 添加判断是否自动生成相册图片 */

    //         if ($_CFG['auto_generate_gallery'])

    //         {

    //             if ($_CFG['thumb_width'] != 0 || $_CFG['thumb_height'] != 0)

    //             {

    //                 $gallery_thumb = $image->make_thumb('../' . $img, $GLOBALS['_CFG']['thumb_width'],  $GLOBALS['_CFG']['thumb_height']);

    //                 if ($gallery_thumb === false)

    //                 {

    //                     sys_msg($image->error_msg(), 1, array(), false);

    //                 }

    //             }

    //         }

    //     }

    //     /* 取消该原图复制流程 */

    //     // else

    //     // {

    //     //     /* 复制一份原图 */

    //     //     $pos        = strpos(basename($img), '.');

    //     //     $gallery_img = dirname($img) . '/' . $image->random_filename() . // substr(basename($img), $pos);

    //     //     if (!copy('../' . $img, '../' . $gallery_img))

    //     //     {

    //     //         sys_msg('fail to copy file: ' . realpath('../' . $img), 1, array(), false);

    //     //     }

    //     //     $gallery_thumb = '';

    //     // }

    // }

    /* 如果没有输入商品货号则自动生成一个商品货号 */

    if (empty($_POST['goods_sn']))

    {

        $max_id     = $is_insert ? $db->getOne("SELECT MAX(goods_id) + 1 FROM ".$ecs->table('goods')) : $_REQUEST['goods_id'];

        $goods_sn   = generate_goods_sn($max_id);

    }

    else

    {

        $goods_sn   = $_POST['goods_sn'];

    }



    /* 处理商品数据 */

    $goods_unit = !empty($_POST['goods_unit']) ? $_POST['goods_unit'] : "件";

	$goods_number = !empty($_POST['goods_number']) ? $_POST['goods_number'] : 0;

    $shop_price = !empty($_POST['shop_price']) ? $_POST['shop_price'] : 0;

    $goods_bind_type = !empty($_POST['goods_bind_type']) ? $_POST['goods_bind_type'] : "1";

    $goods_add_page_max = !empty($_POST['goods_add_page_max']) ? $_POST['goods_add_page_max'] : "1";

    $goods_composite_page = !empty($_POST['goods_composite_page']) ? $_POST['goods_composite_page'] : "0";

    $goods_composite_pic = !empty($_POST['goods_composite_pic']) ? $_POST['goods_composite_pic'] : "0";

    $goods_gray = !empty($_POST['goods_gray']) ? $_POST['goods_gray'] : "0";

    $goods_composite_pdf = !empty($_POST['goods_composite_pdf']) ? $_POST['goods_composite_pdf'] : "1";

    $goods_inner_type = !empty($_POST['goods_inner_type']) ? $_POST['goods_inner_type'] : "1";

    $goods_size_width = !empty($_POST['goods_size_width']) ? $_POST['goods_size_width'] : "0";

    $goods_size_length = !empty($_POST['goods_size_length']) ? $_POST['goods_size_length'] : "0";

    /* 入库 */

    if ($is_insert)

    {

        /* 处理商品大图 */

        $goods_img = (!empty($_POST['goods_img']) && goods_parse_url($_POST['goods_img']))? htmlspecialchars(trim($_POST['goods_img'])) : "";

        $sql = "INSERT INTO " . $ecs->table('goods') . " (goods_name, goods_sn, " .

                    "shop_price,unit,goods_number" .

                    "goods_img,".

                    // "goods_thumb,".

                    "goods_brief, " .

                    "add_time, last_update, " .

                    "goods_bind_type, goods_add_page_max,goods_composite_page, goods_composite_pic, goods_gray," .

                    "goods_composite_pdf, goods_inner_type,goods_size_width, goods_size_length " .

                    ")" .

                "VALUES ('$_POST[goods_name]', '$goods_sn', " .

                    "'$shop_price', '$goods_unit','$goods_number'".

                    "'$goods_img',".

                    // " '$goods_thumb', ".

                    "'$_POST[goods_brief]',".

                    "'".gmtime() . "', '". gmtime() .

                    "', '$goods_bind_type', '$goods_add_page_max', '$goods_composite_page', '$goods_composite_pic', '$goods_gray',".

                    "'$goods_composite_pdf','$goods_inner_type','$goods_size_width','$goods_size_length' " .

                    ")";

    }

    else

    {

        $sql = "UPDATE " . $ecs->table('goods') . " SET " .

                "goods_name = '$_POST[goods_name]', " .

                "goods_sn = '$goods_sn', " .

                "shop_price = '$shop_price', " .

                "unit = '$goods_unit', " .

				"goods_number = '$goods_number', " .

                "goods_brief = '$_POST[goods_brief]',".

                "goods_bind_type = '$goods_bind_type'," .

                "goods_add_page_max = '$goods_add_page_max',".

                "goods_composite_page = '$goods_composite_page',".

                "goods_composite_pic = '$goods_composite_pic',".

                "goods_gray = '$goods_gray',".

                "goods_composite_pdf = '$goods_composite_pdf',".

                "goods_inner_type = '$goods_inner_type',".

                "goods_size_width = '$goods_size_width',".

                "goods_size_length = '$goods_size_length',";



        $sql .= "last_update = '". gmtime() ."'".

                "WHERE goods_id = '$_REQUEST[goods_id]' LIMIT 1";

    }


    $db->query($sql);



    /* 商品编号 */

    $goods_id = $is_insert ? $db->insert_id() : $_REQUEST['goods_id'];



    if ($is_insert)

    {

        /* 处理商品小图 */

        $gallery_img = (!empty($_POST['gallery_img_list']) && isset($_POST['gallery_img_list']))? $_POST['gallery_img_list'] : "";



        foreach ($gallery_img as $img) {

            $sql = "INSERT INTO " . $ecs->table('goods_gallery') . " ( ".

                    "goods_id,img_url".

                    " ) VALUES (".

                    "'$goods_id','$img'".

                    ")";

            $db->query($sql);

        }



    }



    /* 记录日志 */

    if ($is_insert)

    {

        admin_log($_POST['goods_name'], 'add', 'goods');

    }

    else

    {

        admin_log($_POST['goods_name'], 'edit', 'goods');

    }



    if ($is_insert)

    {

        /* 处理关联商品 */

        handle_link_goods($goods_id);



        /* 处理组合商品 */

        handle_group_goods($goods_id);



        /* 处理关联文章 */

        handle_goods_article($goods_id);

    }



    /* 记录上一次选择的分类和品牌 */

    setcookie('ECSCP[last_choose]', $catgory_id . '|' . $brand_id, gmtime() + 86400);

    /* 清空缓存 */

    clear_cache_files();



    /* 提示页面 */

    $link = array();

    if (check_goods_specifications_exist($goods_id))

    {

        $link[0] = array('href' => 'goods.php?act=product_list&goods_id=' . $goods_id, 'text' => $_LANG['product']);

    }

    if ($code == 'virtual_card')

    {

        $link[1] = array('href' => 'virtual_card.php?act=replenish&goods_id=' . $goods_id, 'text' => $_LANG['add_replenish']);

    }

    if ($is_insert)

    {

        $link[2] = add_link($code);

    }

    $link[3] = list_link($is_insert, $code);



    //$key_array = array_keys($link);

    for($i=0;$i<count($link);$i++)

    {

       $key_array[]=$i;

    }

    krsort($link);

    $link = array_combine($key_array, $link);





    sys_msg($is_insert ? $_LANG['add_goods_ok'] : $_LANG['edit_goods_ok'], 0, $link);

}



/*------------------------------------------------------ */

//-- 修改商品大图url

/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'edit_goods_img')

{

    check_authz_json('goods_manage');



    $goods_id = intval($_POST['id']);



    $goods_img = json_str_iconv(trim($_POST['val']));



    if($goods_id)

    {

        $sql = "UPDATE ". $ecs->table('goods'). " SET goods_img = '".$goods_img."' WHERE goods_id = '".$goods_id."'";

    }



    if ($db->query($sql))

    {

        clear_cache_files();

        make_json_result(stripslashes($goods_img));

    }

}



/*------------------------------------------------------ */

//-- 添加商品小图

/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'add_gallery_img')

{

    check_authz_json('goods_manage');



    $goods_id = intval($_POST['id']);



    $img_url = json_str_iconv(trim($_POST['val']));



    /* 查询gallery表中最大id */



    $sql = "SELECT MAX(img_id)+1 FROM ". $ecs->table('goods_gallery');

    $img_id = $db->getOne($sql);



    if($goods_id){

        $sql = "INSERT INTO ". $ecs->table('goods_gallery'). " ( ".

                    " img_id, goods_id,img_url ".

                    " ) VALUES ( ".

                    "'$img_id','$goods_id','$img_url'".

                    " )";

    }



    if ($db->query($sql))

    {

        clear_cache_files();

        make_json_result(stripslashes($img_id));

    }

}



/*------------------------------------------------------ */

//-- 批量操作

/*------------------------------------------------------ */



elseif ($_REQUEST['act'] == 'batch')

{

    $code = empty($_REQUEST['extension_code'])? '' : trim($_REQUEST['extension_code']);



    /* 取得要操作的商品编号 */

    $goods_id = !empty($_POST['checkboxes']) ? join(',', $_POST['checkboxes']) : 0;



    if (isset($_POST['type']))

    {

        /* 放入回收站 */

        if ($_POST['type'] == 'trash')

        {

            /* 检查权限 */

            admin_priv('remove_back');



            update_goods($goods_id, 'is_delete', '1');



            /* 记录日志 */

            admin_log('', 'batch_trash', 'goods');

        }

        /* 上架 */

        elseif ($_POST['type'] == 'on_sale')

        {

            /* 检查权限 */

            admin_priv('goods_manage');

            update_goods($goods_id, 'is_on_sale', '1');

        }



        /* 下架 */

        elseif ($_POST['type'] == 'not_on_sale')

        {

            /* 检查权限 */

            admin_priv('goods_manage');

            update_goods($goods_id, 'is_on_sale', '0');

        }



        /* 设为精品 */

        elseif ($_POST['type'] == 'best')

        {

            /* 检查权限 */

            admin_priv('goods_manage');

            update_goods($goods_id, 'is_best', '1');

        }



        /* 取消精品 */

        elseif ($_POST['type'] == 'not_best')

        {

            /* 检查权限 */

            admin_priv('goods_manage');

            update_goods($goods_id, 'is_best', '0');

        }



        /* 设为新品 */

        elseif ($_POST['type'] == 'new')

        {

            /* 检查权限 */

            admin_priv('goods_manage');

            update_goods($goods_id, 'is_new', '1');

        }



        /* 取消新品 */

        elseif ($_POST['type'] == 'not_new')

        {

            /* 检查权限 */

            admin_priv('goods_manage');

            update_goods($goods_id, 'is_new', '0');

        }



        /* 设为热销 */

        elseif ($_POST['type'] == 'hot')

        {

            /* 检查权限 */

            admin_priv('goods_manage');

            update_goods($goods_id, 'is_hot', '1');

        }



        /* 取消热销 */

        elseif ($_POST['type'] == 'not_hot')

        {

            /* 检查权限 */

            admin_priv('goods_manage');

            update_goods($goods_id, 'is_hot', '0');

        }



        /* 转移到分类 */

        elseif ($_POST['type'] == 'move_to')

        {

            /* 检查权限 */

            admin_priv('goods_manage');

            update_goods($goods_id, 'cat_id', $_POST['target_cat']);

        }



        /* 转移到供货商 */

        elseif ($_POST['type'] == 'suppliers_move_to')

        {

            /* 检查权限 */

            admin_priv('goods_manage');

            update_goods($goods_id, 'suppliers_id', $_POST['suppliers_id']);

        }



        /* 还原 */

        elseif ($_POST['type'] == 'restore')

        {

            /* 检查权限 */

            admin_priv('remove_back');



            update_goods($goods_id, 'is_delete', '0');



            /* 记录日志 */

            admin_log('', 'batch_restore', 'goods');

        }

        /* 删除 */

        elseif ($_POST['type'] == 'drop')

        {

            /* 检查权限 */

            admin_priv('remove_back');



            delete_goods($goods_id);



            /* 记录日志 */

            admin_log('', 'batch_remove', 'goods');

        }

    }



    /* 清除缓存 */

    clear_cache_files();



    if ($_POST['type'] == 'drop' || $_POST['type'] == 'restore')

    {

        $link[] = array('href' => 'goods.php?act=trash', 'text' => $_LANG['11_goods_trash']);

    }

    else

    {

        $link[] = list_link(true, $code);

    }

    sys_msg($_LANG['batch_handle_ok'], 0, $link);

}



/*------------------------------------------------------ */

//-- 显示图片

/*------------------------------------------------------ */



elseif ($_REQUEST['act'] == 'show_image')

{



    if (isset($GLOBALS['shop_id']) && $GLOBALS['shop_id'] > 0)

    {

        $img_url = $_GET['img_url'];

    }

    else

    {

        if (strpos($_GET['img_url'], 'http://') === 0)

        {

            $img_url = $_GET['img_url'];

        }

        else

        {

            $img_url = '../' . $_GET['img_url'];

        }

    }

    $smarty->assign('img_url', $img_url);

    $smarty->display('goods_show_image.htm');

}



/*------------------------------------------------------ */

//-- 修改商品名称

/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'edit_goods_name')

{

    check_authz_json('goods_manage');



    $goods_id   = intval($_POST['id']);

    $goods_name = json_str_iconv(trim($_POST['val']));



    if ($exc->edit("goods_name = '$goods_name', last_update=" .gmtime(), $goods_id))

    {

        clear_cache_files();

        make_json_result(stripslashes($goods_name));

    }

}



/*------------------------------------------------------ */

//-- 修改商品单位

/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'edit_goods_unit')

{

    check_authz_json('goods_manage');



    $goods_id   = intval($_POST['id']);

    $goods_unit = json_str_iconv(trim($_POST['val']));



    if ($exc->edit("unit = '$goods_unit', last_update=" .gmtime(), $goods_id))

    {

        clear_cache_files();

        make_json_result(stripslashes($goods_unit));

    }

}



elseif ($_REQUEST['act'] == 'check_goods_sn')

{

    check_authz_json('goods_manage');



    $goods_id = intval($_REQUEST['goods_id']);

    $goods_sn = htmlspecialchars(json_str_iconv(trim($_REQUEST['goods_sn'])));



    /* 检查是否重复 */

    if (!$exc->is_only('goods_sn', $goods_sn, $goods_id))

    {

        make_json_error($_LANG['goods_sn_exists']);

    }

    if(!empty($goods_sn))

    {

        $sql="SELECT goods_id FROM ". $ecs->table('products')."WHERE product_sn='$goods_sn'";

        if($db->getOne($sql))

        {

            make_json_error($_LANG['goods_sn_exists']);

        }

    }

    make_json_result('');

}

elseif ($_REQUEST['act'] == 'check_products_goods_sn')

{

    check_authz_json('goods_manage');



    $goods_id = intval($_REQUEST['goods_id']);

    $goods_sn = json_str_iconv(trim($_REQUEST['goods_sn']));

    $products_sn=explode('||',$goods_sn);

    if(!is_array($products_sn))

    {

        make_json_result('');

    }

    else

    {

        foreach ($products_sn as $val)

        {

            if(empty($val))

            {

                 continue;

            }

            if(is_array($int_arry))

            {

                if(in_array($val,$int_arry))

                {

                     make_json_error($val.$_LANG['goods_sn_exists']);

                }

            }

            $int_arry[]=$val;

            if (!$exc->is_only('goods_sn', $val, '0'))

            {

                make_json_error($val.$_LANG['goods_sn_exists']);

            }

            $sql="SELECT goods_id FROM ". $ecs->table('products')."WHERE product_sn='$val'";

            if($db->getOne($sql))

            {

                make_json_error($val.$_LANG['goods_sn_exists']);

            }

        }

    }

    /* 检查是否重复 */

    make_json_result('');

}



/*------------------------------------------------------ */

//-- 修改商品价格

/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'edit_goods_price')

{

    check_authz_json('goods_manage');



    $goods_id       = intval($_POST['id']);

    $goods_price    = floatval($_POST['val']);

    $price_rate     = floatval($_CFG['market_price_rate'] * $goods_price);



    if ($goods_price < 0 || $goods_price == 0 && $_POST['val'] != "$goods_price")

    {

        make_json_error($_LANG['shop_price_invalid']);

    }

    else

    {

        if ($exc->edit("shop_price = '$goods_price', market_price = '$price_rate', last_update=" .gmtime(), $goods_id))

        {

            clear_cache_files();

            make_json_result(number_format($goods_price, 2, '.', ''));

        }

    }

}



/*------------------------------------------------------ */

//-- 修改商品库存数量

/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'edit_goods_number')

{

    check_authz_json('goods_manage');



    $goods_id   = intval($_POST['id']);

    $goods_num  = intval($_POST['val']);



    if($goods_num < 0 || $goods_num == 0 && $_POST['val'] != "$goods_num")

    {

        make_json_error($_LANG['goods_number_error']);

    }



    if(check_goods_product_exist($goods_id) == 1)

    {

        make_json_error($_LANG['sys']['wrong'] . $_LANG['cannot_goods_number']);

    }



    if ($exc->edit("goods_number = '$goods_num', last_update=" .gmtime(), $goods_id))

    {

        clear_cache_files();

        make_json_result($goods_num);

    }

}



/*------------------------------------------------------ */

//-- 修改上架状态

/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'toggle_on_sale')

{

    check_authz_json('goods_manage');



    $goods_id       = intval($_POST['id']);

    $on_sale        = intval($_POST['val']);



    if ($exc->edit("is_on_sale = '$on_sale', last_update=" .gmtime(), $goods_id))

    {

        clear_cache_files();

        make_json_result($on_sale);

    }

}



/*------------------------------------------------------ */

//-- 修改精品推荐状态

/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'toggle_best')

{

    check_authz_json('goods_manage');



    $goods_id       = intval($_POST['id']);

    $is_best        = intval($_POST['val']);



    if ($exc->edit("is_best = '$is_best', last_update=" .gmtime(), $goods_id))

    {

        clear_cache_files();

        make_json_result($is_best);

    }

}



/*------------------------------------------------------ */

//-- 修改新品推荐状态

/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'toggle_new')

{

    check_authz_json('goods_manage');



    $goods_id       = intval($_POST['id']);

    $is_new         = intval($_POST['val']);



    if ($exc->edit("is_new = '$is_new', last_update=" .gmtime(), $goods_id))

    {

        clear_cache_files();

        make_json_result($is_new);

    }

}



/*------------------------------------------------------ */

//-- 修改热销推荐状态

/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'toggle_hot')

{

    check_authz_json('goods_manage');



    $goods_id       = intval($_POST['id']);

    $is_hot         = intval($_POST['val']);



    if ($exc->edit("is_hot = '$is_hot', last_update=" .gmtime(), $goods_id))

    {

        clear_cache_files();

        make_json_result($is_hot);

    }

}



/*------------------------------------------------------ */

//-- 修改商品排序

/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'edit_sort_order')

{

    check_authz_json('goods_manage');



    $goods_id       = intval($_POST['id']);

    $sort_order     = intval($_POST['val']);



    if ($exc->edit("sort_order = '$sort_order', last_update=" .gmtime(), $goods_id))

    {

        clear_cache_files();

        make_json_result($sort_order);

    }

}



/*------------------------------------------------------ */

//-- 排序、分页、查询

/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'query')

{

    $is_delete = empty($_REQUEST['is_delete']) ? 0 : intval($_REQUEST['is_delete']);

    $code = empty($_REQUEST['extension_code']) ? '' : trim($_REQUEST['extension_code']);

    $goods_list = goods_list($is_delete, ($code=='') ? 1 : 0);



    $handler_list = array();

    $handler_list['virtual_card'][] = array('url'=>'virtual_card.php?act=card', 'title'=>$_LANG['card'], 'img'=>'icon_send_bonus.gif');

    $handler_list['virtual_card'][] = array('url'=>'virtual_card.php?act=replenish', 'title'=>$_LANG['replenish'], 'img'=>'icon_add.gif');

    $handler_list['virtual_card'][] = array('url'=>'virtual_card.php?act=batch_card_add', 'title'=>$_LANG['batch_card_add'], 'img'=>'icon_output.gif');



    if (isset($handler_list[$code]))

    {

        $smarty->assign('add_handler',      $handler_list[$code]);

    }

    $smarty->assign('code',         $code);

    $smarty->assign('goods_list',   $goods_list['goods']);

    $smarty->assign('filter',       $goods_list['filter']);

    $smarty->assign('record_count', $goods_list['record_count']);

    $smarty->assign('page_count',   $goods_list['page_count']);

    $smarty->assign('list_type',    $is_delete ? 'trash' : 'goods');

    $smarty->assign('use_storage',  empty($_CFG['use_storage']) ? 0 : 1);



    /* 排序标记 */

    $sort_flag  = sort_flag($goods_list['filter']);

    $smarty->assign($sort_flag['tag'], $sort_flag['img']);



    /* 获取商品类型存在规格的类型 */

    $specifications = get_goods_type_specifications();

    $smarty->assign('specifications', $specifications);



    $tpl = $is_delete ? 'goods_trash.htm' : 'goods_list.htm';



    make_json_result($smarty->fetch($tpl), '',

        array('filter' => $goods_list['filter'], 'page_count' => $goods_list['page_count']));

}



/*------------------------------------------------------ */

//-- 放入回收站

/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'remove')

{

    $goods_id = intval($_REQUEST['id']);



    /* 检查权限 */

    check_authz_json('remove_back');



    if ($exc->edit("is_delete = 1", $goods_id))

    {

        clear_cache_files();

        $goods_name = $exc->get_name($goods_id);



        admin_log(addslashes($goods_name), 'trash', 'goods'); // 记录日志



        $url = 'goods.php?act=query&' . str_replace('act=remove', '', $_SERVER['QUERY_STRING']);



        ecs_header("Location: $url\n");

        exit;

    }

}



/*------------------------------------------------------ */

//-- 还原回收站中的商品

/*------------------------------------------------------ */



elseif ($_REQUEST['act'] == 'restore_goods')

{

    $goods_id = intval($_REQUEST['id']);



    check_authz_json('remove_back'); // 检查权限



    $exc->edit("is_delete = 0, add_time = '" . gmtime() . "'", $goods_id);

    clear_cache_files();



    $goods_name = $exc->get_name($goods_id);



    admin_log(addslashes($goods_name), 'restore', 'goods'); // 记录日志



    $url = 'goods.php?act=query&' . str_replace('act=restore_goods', '', $_SERVER['QUERY_STRING']);



    ecs_header("Location: $url\n");

    exit;

}



/*------------------------------------------------------ */

//-- 彻底删除商品

/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'drop_goods')

{

    // 检查权限

    check_authz_json('remove_back');



    // 取得参数

    $goods_id = intval($_REQUEST['id']);

    if ($goods_id <= 0)

    {

        make_json_error('invalid params');

    }



    /* 取得商品信息 */

    $sql = "SELECT goods_id, goods_name, is_delete, is_real, goods_thumb, " .

                "goods_img, original_img " .

            "FROM " . $ecs->table('goods') .

            " WHERE goods_id = '$goods_id'";

    $goods = $db->getRow($sql);

    if (empty($goods))

    {

        make_json_error($_LANG['goods_not_exist']);

    }



    if ($goods['is_delete'] != 1)

    {

        make_json_error($_LANG['goods_not_in_recycle_bin']);

    }



    /* 删除商品图片和轮播图片 */

    if (!empty($goods['goods_thumb']))

    {

        @unlink('../' . $goods['goods_thumb']);

    }

    if (!empty($goods['goods_img']))

    {

        @unlink('../' . $goods['goods_img']);

    }

    if (!empty($goods['original_img']))

    {

        @unlink('../' . $goods['original_img']);

    }

    /* 删除商品 */

    $exc->drop($goods_id);



    /* 删除商品的货品记录 */

    $sql = "DELETE FROM " . $ecs->table('products') .

            " WHERE goods_id = '$goods_id'";

    $db->query($sql);



    /* 记录日志 */

    admin_log(addslashes($goods['goods_name']), 'remove', 'goods');



    /* 删除商品相册 */

    $sql = "SELECT img_url, thumb_url, img_original " .

            "FROM " . $ecs->table('goods_gallery') .

            " WHERE goods_id = '$goods_id'";

    $res = $db->query($sql);

    while ($row = $db->fetchRow($res))

    {

        if (!empty($row['img_url']))

        {

            @unlink('../' . $row['img_url']);

        }

        if (!empty($row['thumb_url']))

        {

            @unlink('../' . $row['thumb_url']);

        }

        if (!empty($row['img_original']))

        {

            @unlink('../' . $row['img_original']);

        }

    }



    $sql = "DELETE FROM " . $ecs->table('goods_gallery') . " WHERE goods_id = '$goods_id'";

    $db->query($sql);



    /* 删除相关表记录 */

    $sql = "DELETE FROM " . $ecs->table('collect_goods') . " WHERE goods_id = '$goods_id'";

    $db->query($sql);

    $sql = "DELETE FROM " . $ecs->table('goods_article') . " WHERE goods_id = '$goods_id'";

    $db->query($sql);

    $sql = "DELETE FROM " . $ecs->table('goods_attr') . " WHERE goods_id = '$goods_id'";

    $db->query($sql);

    $sql = "DELETE FROM " . $ecs->table('goods_cat') . " WHERE goods_id = '$goods_id'";

    $db->query($sql);

    $sql = "DELETE FROM " . $ecs->table('member_price') . " WHERE goods_id = '$goods_id'";

    $db->query($sql);

    $sql = "DELETE FROM " . $ecs->table('group_goods') . " WHERE parent_id = '$goods_id'";

    $db->query($sql);

    $sql = "DELETE FROM " . $ecs->table('group_goods') . " WHERE goods_id = '$goods_id'";

    $db->query($sql);

    $sql = "DELETE FROM " . $ecs->table('link_goods') . " WHERE goods_id = '$goods_id'";

    $db->query($sql);

    $sql = "DELETE FROM " . $ecs->table('link_goods') . " WHERE link_goods_id = '$goods_id'";

    $db->query($sql);

    $sql = "DELETE FROM " . $ecs->table('tag') . " WHERE goods_id = '$goods_id'";

    $db->query($sql);

    $sql = "DELETE FROM " . $ecs->table('comment') . " WHERE comment_type = 0 AND id_value = '$goods_id'";

    $db->query($sql);

    $sql = "DELETE FROM " . $ecs->table('collect_goods') . " WHERE goods_id = '$goods_id'";

    $db->query($sql);

    $sql = "DELETE FROM " . $ecs->table('booking_goods') . " WHERE goods_id = '$goods_id'";

    $db->query($sql);

    $sql = "DELETE FROM " . $ecs->table('goods_activity') . " WHERE goods_id = '$goods_id'";

    $db->query($sql);



    /* 如果不是实体商品，删除相应虚拟商品记录 */

    if ($goods['is_real'] != 1)

    {

        $sql = "DELETE FROM " . $ecs->table('virtual_card') . " WHERE goods_id = '$goods_id'";

        if (!$db->query($sql, 'SILENT') && $db->errno() != 1146)

        {

            die($db->error());

        }

    }



    clear_cache_files();

    $url = 'goods.php?act=query&' . str_replace('act=drop_goods', '', $_SERVER['QUERY_STRING']);



    ecs_header("Location: $url\n");



    exit;

}



/*------------------------------------------------------ */

//-- 切换商品类型

/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'get_attr')

{

    check_authz_json('goods_manage');



    $goods_id   = empty($_GET['goods_id']) ? 0 : intval($_GET['goods_id']);

    $goods_type = empty($_GET['goods_type']) ? 0 : intval($_GET['goods_type']);



    $content    = build_attr_html($goods_type, $goods_id);



    make_json_result($content);

}



/*------------------------------------------------------ */

//-- 删除图片

/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'drop_image')

{

    check_authz_json('goods_manage');



    $img_id = empty($_REQUEST['img_id']) ? 0 : intval($_REQUEST['img_id']);



    /* 删除图片文件 */

    $sql = "SELECT img_url, thumb_url, img_original " .

            " FROM " . $GLOBALS['ecs']->table('goods_gallery') .

            " WHERE img_id = '$img_id'";

    $row = $GLOBALS['db']->getRow($sql);



    if ($row['img_url'] != '' && is_file('../' . $row['img_url']))

    {

        @unlink('../' . $row['img_url']);

    }

    if ($row['thumb_url'] != '' && is_file('../' . $row['thumb_url']))

    {

        @unlink('../' . $row['thumb_url']);

    }

    if ($row['img_original'] != '' && is_file('../' . $row['img_original']))

    {

        @unlink('../' . $row['img_original']);

    }



    /* 删除数据 */

    $sql = "DELETE FROM " . $GLOBALS['ecs']->table('goods_gallery') . " WHERE img_id = '$img_id' LIMIT 1";

    $GLOBALS['db']->query($sql);



    clear_cache_files();

    make_json_result($img_id);

}



/*------------------------------------------------------ */

//-- 搜索商品，仅返回名称及ID

/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'get_goods_list')

{

    include_once(ROOT_PATH . 'includes/cls_json.php');

    $json = new JSON;



    $filters = $json->decode($_GET['JSON']);



    $arr = get_goods_list($filters);

    $opt = array();



    foreach ($arr AS $key => $val)

    {

        $opt[] = array('value' => $val['goods_id'],

                        'text' => $val['goods_name'],

                        'data' => $val['shop_price']);

    }



    make_json_result($opt);

}



/*------------------------------------------------------ */

//-- 货品列表

/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'product_list')

{

    admin_priv('goods_manage');



    /* 是否存在商品id */

    if (empty($_GET['goods_id']))

    {

        $link[] = array('href' => 'goods.php?act=list', 'text' => $_LANG['cannot_found_goods']);

        sys_msg($_LANG['cannot_found_goods'], 1, $link);

    }

    else

    {

        $goods_id = intval($_GET['goods_id']);

    }



    /* 取出商品信息 */

    $sql = "SELECT goods_sn, goods_name, goods_type, shop_price FROM " . $ecs->table('goods') . " WHERE goods_id = '$goods_id'";

    $goods = $db->getRow($sql);

    if (empty($goods))

    {

        $link[] = array('href' => 'goods.php?act=list', 'text' => $_LANG['01_goods_list']);

        sys_msg($_LANG['cannot_found_goods'], 1, $link);

    }

    $smarty->assign('sn', sprintf($_LANG['good_goods_sn'], $goods['goods_sn']));

    $smarty->assign('price', sprintf($_LANG['good_shop_price'], $goods['shop_price']));

    $smarty->assign('goods_name', sprintf($_LANG['products_title'], $goods['goods_name']));

    $smarty->assign('goods_sn', sprintf($_LANG['products_title_2'], $goods['goods_sn']));





    /* 获取商品规格列表 */

    $attribute = get_goods_specifications_list($goods_id);

    if (empty($attribute))

    {

        $link[] = array('href' => 'goods.php?act=edit&goods_id=' . $goods_id, 'text' => $_LANG['edit_goods']);

        sys_msg($_LANG['not_exist_goods_attr'], 1, $link);

    }

    foreach ($attribute as $attribute_value)

    {

        //转换成数组

        $_attribute[$attribute_value['attr_id']]['attr_values'][] = $attribute_value['attr_value'];

        $_attribute[$attribute_value['attr_id']]['attr_id'] = $attribute_value['attr_id'];

        $_attribute[$attribute_value['attr_id']]['attr_name'] = $attribute_value['attr_name'];

    }

    $attribute_count = count($_attribute);



    $smarty->assign('attribute_count',          $attribute_count);

    $smarty->assign('attribute_count_3',        ($attribute_count + 3));

    $smarty->assign('attribute',                $_attribute);

    $smarty->assign('product_sn',               $goods['goods_sn'] . '_');

    $smarty->assign('product_number',           $_CFG['default_storage']);



    /* 取商品的货品 */

    $product = product_list($goods_id, '');



    $smarty->assign('ur_here',      $_LANG['18_product_list']);

    $smarty->assign('action_link',  array('href' => 'goods.php?act=list', 'text' => $_LANG['01_goods_list']));

    $smarty->assign('product_list', $product['product']);

    $smarty->assign('product_null', empty($product['product']) ? 0 : 1);

    $smarty->assign('use_storage',  empty($_CFG['use_storage']) ? 0 : 1);

    $smarty->assign('goods_id',     $goods_id);

    $smarty->assign('filter',       $product['filter']);

    $smarty->assign('full_page',    1);



    /* 显示商品列表页面 */

    assign_query_info();



    $smarty->display('product_info.htm');

}



/*------------------------------------------------------ */

//-- 货品排序、分页、查询

/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'product_query')

{

    /* 是否存在商品id */

    if (empty($_REQUEST['goods_id']))

    {

        make_json_error($_LANG['sys']['wrong'] . $_LANG['cannot_found_goods']);

    }

    else

    {

        $goods_id = intval($_REQUEST['goods_id']);

    }



    /* 取出商品信息 */

    $sql = "SELECT goods_sn, goods_name, goods_type, shop_price FROM " . $ecs->table('goods') . " WHERE goods_id = '$goods_id'";

    $goods = $db->getRow($sql);

    if (empty($goods))

    {

        make_json_error($_LANG['sys']['wrong'] . $_LANG['cannot_found_goods']);

    }

    $smarty->assign('sn', sprintf($_LANG['good_goods_sn'], $goods['goods_sn']));

    $smarty->assign('price', sprintf($_LANG['good_shop_price'], $goods['shop_price']));

    $smarty->assign('goods_name', sprintf($_LANG['products_title'], $goods['goods_name']));

    $smarty->assign('goods_sn', sprintf($_LANG['products_title_2'], $goods['goods_sn']));





    /* 获取商品规格列表 */

    $attribute = get_goods_specifications_list($goods_id);

    if (empty($attribute))

    {

        make_json_error($_LANG['sys']['wrong'] . $_LANG['cannot_found_goods']);

    }

    foreach ($attribute as $attribute_value)

    {

        //转换成数组

        $_attribute[$attribute_value['attr_id']]['attr_values'][] = $attribute_value['attr_value'];

        $_attribute[$attribute_value['attr_id']]['attr_id'] = $attribute_value['attr_id'];

        $_attribute[$attribute_value['attr_id']]['attr_name'] = $attribute_value['attr_name'];

    }

    $attribute_count = count($_attribute);



    $smarty->assign('attribute_count',          $attribute_count);

    $smarty->assign('attribute',                $_attribute);

    $smarty->assign('attribute_count_3',        ($attribute_count + 3));

    $smarty->assign('product_sn',               $goods['goods_sn'] . '_');

    $smarty->assign('product_number',           $_CFG['default_storage']);



    /* 取商品的货品 */

    $product = product_list($goods_id, '');



    $smarty->assign('ur_here', $_LANG['18_product_list']);

    $smarty->assign('action_link', array('href' => 'goods.php?act=list', 'text' => $_LANG['01_goods_list']));

    $smarty->assign('product_list',  $product['product']);

    $smarty->assign('use_storage',  empty($_CFG['use_storage']) ? 0 : 1);

    $smarty->assign('goods_id',    $goods_id);

    $smarty->assign('filter',       $product['filter']);



    /* 排序标记 */

    $sort_flag  = sort_flag($product['filter']);

    $smarty->assign($sort_flag['tag'], $sort_flag['img']);



    make_json_result($smarty->fetch('product_info.htm'), '',

        array('filter' => $product['filter'], 'page_count' => $product['page_count']));

}



/*------------------------------------------------------ */

//-- 货品删除

/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'product_remove')

{

    /* 检查权限 */

    check_authz_json('remove_back');



    /* 是否存在商品id */

    if (empty($_REQUEST['id']))

    {

        make_json_error($_LANG['product_id_null']);

    }

    else

    {

        $product_id = intval($_REQUEST['id']);

    }



    /* 货品库存 */

    $product = get_product_info($product_id, 'product_number, goods_id');



    /* 删除货品 */

    $sql = "DELETE FROM " . $ecs->table('products') . " WHERE product_id = '$product_id'";

    $result = $db->query($sql);

    if ($result)

    {

        /* 修改商品库存 */

        if (update_goods_stock($product['goods_id'], $product_number - $product['product_number']))

        {

            //记录日志

            admin_log('', 'update', 'goods');

        }



        //记录日志

        admin_log('', 'trash', 'products');



        $url = 'goods.php?act=product_query&' . str_replace('act=product_remove', '', $_SERVER['QUERY_STRING']);



        ecs_header("Location: $url\n");

        exit;

    }

}



/*------------------------------------------------------ */

//-- 修改货品价格

/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'edit_product_sn')

{

    check_authz_json('goods_manage');



    $product_id       = intval($_POST['id']);

    $product_sn       = json_str_iconv(trim($_POST['val']));

    $product_sn       = ($_LANG['n_a'] == $product_sn) ? '' : $product_sn;



    if (check_product_sn_exist($product_sn, $product_id))

    {

        make_json_error($_LANG['sys']['wrong'] . $_LANG['exist_same_product_sn']);

    }



    /* 修改 */

    $sql = "UPDATE " . $ecs->table('products') . " SET product_sn = '$product_sn' WHERE product_id = '$product_id'";

    $result = $db->query($sql);

    if ($result)

    {

        clear_cache_files();

        make_json_result($product_sn);

    }

}



/*------------------------------------------------------ */

//-- 货品添加 执行

/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'product_add_execute')

{

    admin_priv('goods_manage');



    $product['goods_id']        = intval($_POST['goods_id']);

    $product['attr']            = $_POST['attr'];

    $product['product_sn']      = $_POST['product_sn'];

    $product['product_number']  = $_POST['product_number'];



    /* 是否存在商品id */

    if (empty($product['goods_id']))

    {

        sys_msg($_LANG['sys']['wrong'] . $_LANG['cannot_found_goods'], 1, array(), false);

    }



    /* 判断是否为初次添加 */

    $insert = true;

    if (product_number_count($product['goods_id']) > 0)

    {

        $insert = false;

    }



    /* 取出商品信息 */

    $sql = "SELECT goods_sn, goods_name, goods_type, shop_price FROM " . $ecs->table('goods') . " WHERE goods_id = '" . $product['goods_id'] . "'";

    $goods = $db->getRow($sql);

    if (empty($goods))

    {

        sys_msg($_LANG['sys']['wrong'] . $_LANG['cannot_found_goods'], 1, array(), false);

    }



    /*  */

    foreach($product['product_sn'] as $key => $value)

    {

        //过滤

        $product['product_number'][$key] = empty($product['product_number'][$key]) ? (empty($_CFG['use_storage']) ? 0 : $_CFG['default_storage']) : trim($product['product_number'][$key]); //库存



        //获取规格在商品属性表中的id

        foreach($product['attr'] as $attr_key => $attr_value)

        {

            /* 检测：如果当前所添加的货品规格存在空值或0 */

            if (empty($attr_value[$key]))

            {

                continue 2;

            }



            $is_spec_list[$attr_key] = 'true';



            $value_price_list[$attr_key] = $attr_value[$key] . chr(9) . ''; //$key，当前



            $id_list[$attr_key] = $attr_key;

        }

        $goods_attr_id = handle_goods_attr($product['goods_id'], $id_list, $is_spec_list, $value_price_list);



        /* 是否为重复规格的货品 */

        $goods_attr = sort_goods_attr_id_array($goods_attr_id);

        $goods_attr = implode('|', $goods_attr['sort']);

        if (check_goods_attr_exist($goods_attr, $product['goods_id']))

        {

            continue;

            //sys_msg($_LANG['sys']['wrong'] . $_LANG['exist_same_goods_attr'], 1, array(), false);

        }

        //货品号不为空

        if (!empty($value))

        {

            /* 检测：货品货号是否在商品表和货品表中重复 */

            if (check_goods_sn_exist($value))

            {

                continue;

                //sys_msg($_LANG['sys']['wrong'] . $_LANG['exist_same_goods_sn'], 1, array(), false);

            }

            if (check_product_sn_exist($value))

            {

                continue;

                //sys_msg($_LANG['sys']['wrong'] . $_LANG['exist_same_product_sn'], 1, array(), false);

            }

        }



        /* 插入货品表 */

        $sql = "INSERT INTO " . $GLOBALS['ecs']->table('products') . " (goods_id, goods_attr, product_sn, product_number)  VALUES ('" . $product['goods_id'] . "', '$goods_attr', '$value', '" . $product['product_number'][$key] . "')";

        if (!$GLOBALS['db']->query($sql))

        {

            continue;

            //sys_msg($_LANG['sys']['wrong'] . $_LANG['cannot_add_products'], 1, array(), false);

        }



        //货品号为空 自动补货品号

        if (empty($value))

        {

            $sql = "UPDATE " . $GLOBALS['ecs']->table('products') . "

                    SET product_sn = '" . $goods['goods_sn'] . "g_p" . $GLOBALS['db']->insert_id() . "'

                    WHERE product_id = '" . $GLOBALS['db']->insert_id() . "'";

            $GLOBALS['db']->query($sql);

        }



        /* 修改商品表库存 */

        $product_count = product_number_count($product['goods_id']);

        if (update_goods($product['goods_id'], 'goods_number', $product_count))

        {

            //记录日志

            admin_log($product['goods_id'], 'update', 'goods');

        }

    }



    clear_cache_files();



    /* 返回 */

    if ($insert)

    {

         $link[] = array('href' => 'goods.php?act=add', 'text' => $_LANG['02_goods_add']);

         $link[] = array('href' => 'goods.php?act=list', 'text' => $_LANG['01_goods_list']);

         $link[] = array('href' => 'goods.php?act=product_list&goods_id=' . $product['goods_id'], 'text' => $_LANG['18_product_list']);

    }

    else

    {

         $link[] = array('href' => 'goods.php?act=list&uselastfilter=1', 'text' => $_LANG['01_goods_list']);

         $link[] = array('href' => 'goods.php?act=edit&goods_id=' . $product['goods_id'], 'text' => $_LANG['edit_goods']);

         $link[] = array('href' => 'goods.php?act=product_list&goods_id=' . $product['goods_id'], 'text' => $_LANG['18_product_list']);

    }

    sys_msg($_LANG['save_products'], 0, $link);

}



/*------------------------------------------------------ */

//-- 货品批量操作

/*------------------------------------------------------ */

elseif ($_REQUEST['act'] == 'batch_product')

{

    /* 定义返回 */

    $link[] = array('href' => 'goods.php?act=product_list&goods_id=' . $_POST['goods_id'], 'text' => $_LANG['item_list']);



    /* 批量操作 - 批量删除 */

    if ($_POST['type'] == 'drop')

    {

        //检查权限

        admin_priv('remove_back');



        //取得要操作的商品编号

        $product_id = !empty($_POST['checkboxes']) ? join(',', $_POST['checkboxes']) : 0;

        $product_bound = db_create_in($product_id);



        //取出货品库存总数

        $sum = 0;

        $goods_id = 0;

        $sql = "SELECT product_id, goods_id, product_number FROM  " . $GLOBALS['ecs']->table('products') . " WHERE product_id $product_bound";

        $product_array = $GLOBALS['db']->getAll($sql);

        if (!empty($product_array))

        {

            foreach ($product_array as $value)

            {

                $sum += $value['product_number'];

            }

            $goods_id = $product_array[0]['goods_id'];



            /* 删除货品 */

            $sql = "DELETE FROM " . $ecs->table('products') . " WHERE product_id $product_bound";

            if ($db->query($sql))

            {

                //记录日志

                admin_log('', 'delete', 'products');

            }



            /* 修改商品库存 */

            if (update_goods_stock($goods_id, -$sum))

            {

                //记录日志

                admin_log('', 'update', 'goods');

            }



            /* 返回 */

            sys_msg($_LANG['product_batch_del_success'], 0, $link);

        }

        else

        {

            /* 错误 */

            sys_msg($_LANG['cannot_found_products'], 1, $link);

        }

    }



    /* 返回 */

    sys_msg($_LANG['no_operation'], 1, $link);

}



/**

 * 列表链接

 * @param   bool    $is_add         是否添加（插入）

 * @param   string  $extension_code 虚拟商品扩展代码，实体商品为空

 * @return  array('href' => $href, 'text' => $text)

 */

function list_link($is_add = true, $extension_code = '')

{

    $href = 'goods.php?act=list';

    if (!empty($extension_code))

    {

        $href .= '&extension_code=' . $extension_code;

    }

    if (!$is_add)

    {

        $href .= '&' . list_link_postfix();

    }



    if ($extension_code == 'virtual_card')

    {

        $text = $GLOBALS['_LANG']['50_virtual_card_list'];

    }

    else

    {

        $text = $GLOBALS['_LANG']['01_goods_list'];

    }



    return array('href' => $href, 'text' => $text);

}



/**

 * 添加链接

 * @param   string  $extension_code 虚拟商品扩展代码，实体商品为空

 * @return  array('href' => $href, 'text' => $text)

 */

function add_link($extension_code = '')

{

    $href = 'goods.php?act=add';

    if (!empty($extension_code))

    {

        $href .= '&extension_code=' . $extension_code;

    }



    if ($extension_code == 'virtual_card')

    {

        $text = $GLOBALS['_LANG']['51_virtual_card_add'];

    }

    else

    {

        $text = $GLOBALS['_LANG']['02_goods_add'];

    }



    return array('href' => $href, 'text' => $text);

}



/**

 * 检查图片网址是否合法

 *

 * @param string $url 网址

 *

 * @return boolean

 */

function goods_parse_url($url)

{

    $parse_url = @parse_url($url);

    return (!empty($parse_url['scheme']) && !empty($parse_url['host']));

}



/**

 * 保存某商品的优惠价格

 * @param   int     $goods_id    商品编号

 * @param   array   $number_list 优惠数量列表

 * @param   array   $price_list  价格列表

 * @return  void

 */

function handle_volume_price($goods_id, $number_list, $price_list)

{

    $sql = "DELETE FROM " . $GLOBALS['ecs']->table('volume_price') .

           " WHERE price_type = '1' AND goods_id = '$goods_id'";

    $GLOBALS['db']->query($sql);





    /* 循环处理每个优惠价格 */

    foreach ($price_list AS $key => $price)

    {

        /* 价格对应的数量上下限 */

        $volume_number = $number_list[$key];



        if (!empty($price))

        {

            $sql = "INSERT INTO " . $GLOBALS['ecs']->table('volume_price') .

                   " (price_type, goods_id, volume_number, volume_price) " .

                   "VALUES ('1', '$goods_id', '$volume_number', '$price')";

            $GLOBALS['db']->query($sql);

        }

    }

}



/**

 * 修改商品库存

 * @param   string  $goods_id   商品编号，可以为多个，用 ',' 隔开

 * @param   string  $value      字段值

 * @return  bool

 */

function update_goods_stock($goods_id, $value)

{

    if ($goods_id)

    {

        /* $res = $goods_number - $old_product_number + $product_number; */

        $sql = "UPDATE " . $GLOBALS['ecs']->table('goods') . "

                SET goods_number = goods_number + $value,

                    last_update = '". gmtime() ."'

                WHERE goods_id = '$goods_id'";

        $result = $GLOBALS['db']->query($sql);



        /* 清除缓存 */

        clear_cache_files();



        return $result;

    }

    else

    {

        return false;

    }

}

?>
