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
	
	public function saveListStart()
	{
		$username = I('post.username');
		$title = I('post.title');
		$name = I('post.name');
		$preview = I('post.preview');
		
		$upload_path = "./Uploads/userProductPreview/";
		
		$file_name = $upload_path.$name.".jpg";
		file_put_contents($file_name,base64_decode($preview));
		echo $file_name;
	}
	
	
	public function sizeImage()
	{
		//图片的等比缩放
		$imageimage = I('post.img');
		$imgstream = file_get_contents($image);
		$im = imagecreatefromstring($imgstream);
		$x = imagesx($im);
		$y = imagesy($im);
		
		//放大200%,缩小雷同
		$thumbw = $x*2; // 期望的目标图宽
		$thumbh = $y*2; // 期望的目标图高
		
		if(function_exists("imagecreatetruecolor"))
		  $dim = imagecreatetruecolor($thumbw, $thumbh); // 创建目标图gd2
		else
		  $dim = imagecreate($thumbw, $thumbh); // 创建目标图gd1
		imagecopyresized ($dim,$im,0,0,0,0,$thumbw,$thumbh,$x,$y);
		
		header ("Content-type: image/jpeg");
		imagejpeg ($dim);

		echo "ok";
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