<?php
namespace yzldiy\Controller;
use Think\Controller;
use Think\Model;

class ProductController extends Controller {
	
	public function index()
	{
		$this->show("a1");
	}
	
	public function getProductInfo($pid)
	{
		//数据模型
		$model = M("product_yzldiy");
		$pid = I('pid');		
		$checkProduct = $model->field('tid,type,pageCount,name,retailprice,preview')->where(" status=1 and pid=".$pid)->find();

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