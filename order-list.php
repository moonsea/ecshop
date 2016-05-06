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
$user_id = $_COOKIE['userid'];

$smarty->assign('username',$username);
$smarty->assign('prev',$prev);
$smarty->assign('token',$token);
$smarty->assign('userimg',$userimg);

include_once(ROOT_PATH . 'includes/lib_transaction.php');

$page = isset($_REQUEST['page']) ? intval($_REQUEST['page']) : 1;

$count = $db->getOne("SELECT COUNT(*) FROM " .$ecs->table('userproduct_yzldiy'). " WHERE userId = $user_id and status=1");

$page = isset($_REQUEST['page'])   && intval($_REQUEST['page'])  > 0 ? intval($_REQUEST['page']):1;
$page_size = 8;
$max_page = ceil($count/$page_size);
if($page > $max_page)
{
	$page = $max_page;
}
$start = ($page-1)*$page_size;
$sql = "select * from ecs_userproduct_yzldiy WHERE userId = $user_id and status=1 order by id desc limit $start,$page_size";
$res = $db->query($sql);
$list = array();
while($temp = $db->fetchRow($res))
{
	$list[] = $temp;
}
$temp = array();

foreach($list as $item)
{
	$sql = "select * from ecs_goods where goods_id=".$item['goods_id'];
	$data = $db->getRow($sql);
	$item['goods'] = $data;
	$sql = "select name from ecs_product_yzldiy where pid=".$item['pid'];
	$item['catname'] = $db->getOne($sql);
	$temp[] = $item;	
}
$smarty->assign('list',$temp);

$i = 1;
$pages = array();
while($i<$max_page)
{
	$pages[] = $i;
	$i++;
}

if(count($pages)>1)
{
	$smarty->assign("pages",$pages);
}
$smarty->display("order-list.dwt");
?>


















