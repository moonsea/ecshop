<?php
namespace yzldiy\Controller;
use Think\Controller;
use Think\Model;

class SaveUserProductController extends Controller {
	
	public function index()
	{
		$this->show("a1");
	}
	
	public function saveStart()
	{
		//数据模型
		$upload_path = "./Uploads/userProductPreview/";
		$model = M("userproduct_yzldiy");
		$uid = I('post.userId');
		$pid = I('post.pid');
		$tid = I('post.tid');
		$type = I('post.type');
		$preview = I('post.preview');
		$info = I('post.info');
		$name = I('post.name');
		$retailprice = I('post.retailprice');
		
		$productId = I('post.productId');
		
		$file_name = $upload_path.md5($uid.date("Y-m-d h:i:s")).".jpg";
		file_put_contents($file_name,base64_decode($preview));
		$data['userId'] = $uid;
		$data['pid'] = $pid;
		$data['tid'] = $tid;
		$data['type'] = $type;
		$data['preview'] = $file_name;
		$data['info'] = $info;
		$data['name'] = $name;
		$data['retailprice'] = $retailprice;
		
		if($productId<=1 || $productId == '') $productId = 1;
				
		$checkProduct = $model->field('id,preview')->where("id=".$productId)->find();

		if($checkProduct)
		{
			@unlink($checkProduct['preview']);
			$model->where("id=".$productId)->save($data);
			echo $productId;
		}
		else
		{
			echo $model->add($data);
		}
		
	}
	
	public function loadUserProduct($uid,$pid)
	{
		$model = M("userproduct_yzldiy");
		$pid = I('pid');
		$uid = I('uid');
		$checkProduct = $model->field('info')->where(" status=1 and userId='".$uid."' and id=".$pid)->find();

		if($checkProduct)
		{
			$this->show($checkProduct["info"],"utf-8","text/xml");
		}
		
	}
	
	public function getProductInfo($pid,$uid)
	{
		//数据模型
		$model = M("userproduct_yzldiy");
		$pid = I('pid');
		$uid = I('uid');	
		$checkProduct = $model->field('tid,type,pageCount,name,retailprice,preview')->where(" status=1 and userId='".$uid."' and id=".$pid)->find();

		if($checkProduct)
		{
			echo json_encode($checkProduct);
		}
		else
		{
			echo 0;
		}
		
	}
}