<?php
define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');
require(dirname(__FILE__) . '/includes/info.php');

if ((DEBUG_MODE & 2) != 2)
{
    $smarty->caching = true;
}

$prev = $_COOKIE['prev'];
$token = $_COOKIE['token'];
$userimg = $_COOKIE['userimg'];
$username = $_COOKIE['username'];
$album_id = isset($_REQUEST['album'])  ? intval($_REQUEST['album']) : 0;//相册id

$smarty->assign('username',$username);
$smarty->assign('prev',$prev);
$smarty->assign('token',$token);
$smarty->assign('userimg',$userimg);
$smarty->assign('album_id',$album_id);

$step = isset($_GET['step'])?intval(trim($_GET['step'])):1;

if($step == 1)//选择规格
{
	$sql   = "SELECT COUNT(*) FROM " .$ecs->table('goods'). 
        "WHERE is_delete = 0 AND is_on_sale = 1 AND is_alone_sale = 1";
    $count = $db->getOne($sql);
	$size = 6;
	$page = isset($_GET['page'])?intval(trim($_GET['page'])):1;
    $max_page = ($count> 0) ? ceil($count / $size) : 1;
    if ($page > $max_page)
    {
        $page = $max_page;
    }

    /* 查询商品 */
    $sql = "SELECT * FROM " .$ecs->table('goods').
			"WHERE is_delete = 0 AND is_on_sale = 1 AND is_alone_sale = 1 order by goods_id desc";
    $res = $db->SelectLimit($sql, $size, ($page - 1) * $size);
    $arr = array();
    while ($row = $db->FetchRow($res))
    {
		$row['pictures'] = get_goods_gallery($row['goods_id']);
		$arr[] = $row;
    }
	$smarty->assign("list",$arr);
	$pages = array();
	for($i=1;$i<=$max_page;$i++)
	{
		$pages[] = $i;
	}
	$smarty->assign("pages",$pages);
	$smarty->assign("current_page",$page);
	$smarty->display("stepone.dwt");
}

if($step == 2)
{
	//获取goods_id
	if(isset($_GET['goods_id']))
	{
		$goods_id = intval(trim($_GET['goods_id']));
		$smarty->assign("goods_id",$goods_id);
	}
	else
	{
		ecs_header("Location: ./\n");
   		exit;
	}
	//查询所有的模板类别
	$sql = "select * from ecs_product_category_yzldiy";
	$res = $db->query($sql);
	$categories = array();
	while($row = $db->FetchRow($res))
	{
		$categories[] = $row;		
	}
	$smarty->assign("categories",$categories);
	//查询对应类别下边的所有模板
	$category = isset($_GET['category'])?intval(trim($_GET['category'])):1;
	$page = isset($_GET['page'])?intval(trim($_GET['page'])):1;
	$size = 6;
	$sql = "select count(*) from ecs_product_yzldiy where cid=$category";
	$count = $db->getOne($sql);
	$max_page = ($count> 0) ? ceil($count / $size) : 1;
    if ($page > $max_page)
    {
        $page = $max_page;
    }
	$pages = array();
	for($i=1;$i<=$max_page;$i++)
	{
		$pages[] = $i;
	}
	$smarty->assign("pages",$pages);
	
	$start = ($page-1)*$size;
	$sql = "select * from ecs_product_yzldiy where cid=$category order by pid desc limit $start,$size";
	$res = $db->query($sql);
	$arr = array();
    while ($row = $db->FetchRow($res))
    {
		$arr[] = $row;
    }
	$smarty->assign("list",$arr);
	$smarty->assign("category",$category);
	$smarty->display("steptwo.dwt");
}


?>








