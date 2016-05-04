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
		$size = I("size") * 0.8;
		$font = "D:\\wamp\\PHPnow\\htdocs\\ecshop\\yzldiywww\\yzldiy\\assets\\font\\fs.ttf";
		
		if(file_exists("D:\\wamp\\PHPnow\\htdocs\\ecshop\\yzldiywww\\yzldiy\\assets\\font\\".I("font").'.ttf'))
		{
			$font = "D:\\wamp\\PHPnow\\htdocs\\ecshop\\yzldiywww\\yzldiy\\assets\\font\\".I("font").'.ttf';
		}
		$bold = I("bold");

		if ($color[0] == '#')
			$color = substr($color, 1);

		if (strlen($color) == 6)
			list($r, $g, $b) = array($color[0].$color[1],
				$color[2].$color[3],
				$color[4].$color[5]);
		elseif (strlen($color) == 3)
			list($r, $g, $b) = array($color[0].$color[0], $color[1].$color[1], $color[2].$color[2]);
		else
			return false;
		$r = hexdec($r); $g = hexdec($g); $b = hexdec($b);
		
		$line = substr_count($text,"\n");

		if($line <1) $line = 1;
		$len = mb_strlen($text,'utf-8');

		$im = imagecreatetruecolor(($len*$size/$line)*1.5, $size*($line*4));
		$text_color = imagecolorallocate($im, $r,$g,$b);
		imagesavealpha($im, true);
		$trans_colour = imagecolorallocatealpha($im, 0, 0, 0, 127); 
		imagefill($im, 0, 0, $trans_colour);
		
		imagettftext($im,$size,0,0,$size+10, $text_color , $font ,$text); 

		imagepng($im); 
		imagedestroy($im); 
	}

}