<?php
namespace yzldiy\Controller;
use Think\Controller;
use Think\Model;

class UserController extends Controller {
	
	public function index()
	{
		$this->show("");
	}
	
	public function getUserInfo()
	{
		//数据模型
		$model = M("users");
		$username = I('post.username');
		
		if($userInfo = $model->field('user_id,user_name,email')->where(' username="'.$username.'"')->find())
		{
			$data = "<?xml version='1.0' encoding='utf-8'?><userInfo>";
			$data .= "<userId>".$userInfo['id']."</userId>";
			$data .= "<username>".$userInfo['username']."</username>";
			$data .= "<email>".$userInfo['email']."</email>";
			$data .= "<status>1</status>"; 
			$data .= "</userInfo>";
			$this->show($data,"utf-8","text/xml");
		}
	}
}