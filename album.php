<?php
define('IN_ECS', true);

require(dirname(__FILE__) . '/includes/init.php');

if ((DEBUG_MODE & 2) != 2)
{
    $smarty->caching = true;
}
$cache_id = $goods_id . '-' . $_SESSION['user_rank'].'-'.$_CFG['lang'];
$album_id = isset($_REQUEST['id'])  ? intval($_REQUEST['id']) : 0;//相册id
$username = isset($_GET['name']) ? $_GET['name']:'UNKNOWN';
$smarty->assign('username',$username);
if(isset($_GET['prev']))
{
	$prev = $_GET['prev'];
	$smarty->assign('prev',$prev);
	if(isset($_GET['token']))
	{
		$token = $_GET['token'];
		$smarty->assign('token',$token);
		if(isset($_GET['img']))
		{
			$userimg = $_GET['img'];
			$smarty->assign('userimg',$userimg);
		}
		else
		{
			echo "img";
			ecs_header("Location: ./\n");
    		exit;
		}
	}
	else
	{
		echo "token";
		ecs_header("Location: ./\n");
    	exit;
	}
}
else
{
	echo "prev";
	ecs_header("Location: ./\n");
    exit;
}
$url = "http://app.itimepost.com/homealbum";
$post_data = array("album_id"=>$album_id,"type"=>1,"token"=>$token);
$ch = curl_init();
curl_setopt($ch, CURLOPT_URL, $url);
curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
curl_setopt($ch,CURLOPT_POST,1);
curl_setopt($ch, CURLOPT_POSTFIELDS, $post_data);
$output = curl_exec($ch);
curl_close($ch);
$output = json_decode($output,true);
$cover = $output["data"]["album_info"]["img"];
$name = $output["data"]["album_info"]["album_name"];
$desc = $output["data"]["album_info"]["album_desc"];
$list = $output["data"]["image_list"];
$mem_desc = $output["data"]["album_info"]["member_desc"];

$smarty->assign('cover',$cover);//相册封面
$smarty->assign('name',$name);//相册名字
$smarty->assign('desc',$desc);//相册描述
$smarty->assign('list',$list);//图片列表
$smarty->assign('mem_desc',$mem_desc);//用户签名

$smarty->assign('page_title', 'Timepost-'.$name);// 页面标题
    
$smarty->display('album.dwt');

?>