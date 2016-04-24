package com.yzl.util
{
	import flash.display.BitmapData;
	import flash.geom.Rectangle;
	import flash.utils.ByteArray;

	public class TransformTextToPNG
	{
		public function TransformTextToPNG()
		{
		}
		
		//最小矩形(非透明最小区域)
		public static function getMinRect(target:BitmapData):Rectangle{
			return target.getColorBoundsRect(0xffffffff,0x00000000,false);
		}
		
		//去除多余透明区域
		public static function removeTransparentRect(target:BitmapData,minRect:Rectangle):BitmapData{   
			if(minRect.left==0 && minRect.top==0){
				return target;
			}
			var bytes:ByteArray=target.getPixels(minRect);
			var fillRect:Rectangle=new Rectangle(0,0,minRect.right-minRect.left, minRect.bottom-minRect.top);
			var resultBitmapData:BitmapData = new BitmapData(minRect.right-minRect.left, minRect.bottom-minRect.top,true,0);
			
			bytes.position=0;
			resultBitmapData.setPixels(fillRect,bytes);
			
			return resultBitmapData;
		}
	}
}