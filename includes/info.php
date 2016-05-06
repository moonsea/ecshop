<?php
if (!defined('IN_ECS'))
{
    die('Hacking attempt');
}

error_reporting(E_ALL);

if(isset($_COOKIE['userid']))
{
	$user_id = $_COOKIE['userid'];
}
else
{
	exit();
}

/*取未完成信息*/
$count = $db->getOne("SELECT COUNT(*) FROM " .$ecs->table('userproduct_yzldiy'). " WHERE userId = '$user_id' and status=1");
$smarty->assign("undone",$count);
?>