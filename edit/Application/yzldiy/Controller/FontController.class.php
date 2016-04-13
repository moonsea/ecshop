<?php
namespace yzldiy\Controller;
use Think\Controller;
use Think\Model;

class FontController extends Controller {
	
	public function index()
	{
		$this->show("");
	}
	
	public function getFontToImg()
	{
		header("Content-type: text/html; charset=utf-8");
		header ('Content-type: image/png'); 
		$text = $_POST["content"];
		
		$color = I("color");
		$size = I("size")*0.75;
		$font = "D:\\wamp\\apps\\yershop\\assets\\font\\fs.ttf";
		
		if(file_exists("D:\\wamp\\apps\\yershop\\assets\\font\\".I("font").'.ttf'))
		{
			$font = "D:\\wamp\\apps\\yershop\\assets\\font\\".I("font").'.ttf';
		}
		$bold = I("bold");
		
		$R = hexdec(substr($color,0,2));
		$G = hexdec(substr($color,2,2));
		$B = hexdec(substr($color,4,2));
		
		$line = substr_count($text,"\n");
		//exit($line.'d');
		if($line <1) $line = 1;
		//$text = str_replace("\n","\r\n",$text);
		$len = mb_strlen($text,'utf-8');
		

		
		$im = imagecreatetruecolor(($len*$size/$line)*1.5, $size*($line*4)); 
		$text_color = imagecolorallocate($im, $R, $G, $B);
		imagesavealpha($im, true);
		$black = imagecolorallocate($im, 0, 0, 0); 
		$trans_colour = imagecolorallocatealpha($im, 0, 0, 0, 127); 
		imagefill($im, 0, 0, $trans_colour);
		$position_x = 0;//first Character coordinate x;
		$position_y = $size+10;//first Character coordinate x;
		//output text from array
		
		imagettftext($im,$size,0,0,$size+10, $text_color , $font ,$text); 


		imagepng($im); 
		imagedestroy($im); 
	}

}