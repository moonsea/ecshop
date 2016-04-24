<?php
namespace yzldiy\Controller;
use Think\Controller;
use Think\Model;

class DownController extends Controller {
	
	public function index()
	{
		$this->show("d");
	}
	
	/**
 * 下载文件
 * @param string $file
 *               被下载文件的路径
 * @param string $name
 *               用户看到的文件名
 */
 public function download(){
    $fileName = "15991m.png";
    $filePath = "http://st1.yxp.126.net/img2012/flash2/images/decorator/";
	$savePath = "./temp";
	if(!file_exists($savePath))
	{
		mkdir($savePath.'/');
	}
  	$file = file_get_contents( $filePath.$fileName);
    file_put_contents($savePath.'/'.$fileName,$file);       
 }

}