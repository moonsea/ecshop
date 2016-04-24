package com.king.loadAphaImage
{
	import flash.display.*;
	import flash.events.*;
	
	public class DealImage{
		public static function dealImage(sprite:Sprite):void{
			sprite.addEventListener(MouseEvent.MOUSE_DOWN,mouseDownHandle);
			sprite.addEventListener(MouseEvent.MOUSE_MOVE,mouseMoveHandle);
			sprite.addEventListener(MouseEvent.MOUSE_OUT,mouseOutHandle);
			sprite.addEventListener(MouseEvent.MOUSE_OVER,mouseOverHandle);
			sprite.addEventListener(MouseEvent.MOUSE_UP,mouseUpHandle);
			sprite.addEventListener(MouseEvent.CLICK,mouseClickHandle);
		}
		private static function mouseDownHandle(events:MouseEvent):void {
			var sprite:Sprite=events.currentTarget as Sprite;
			if(checkIsApha(events))sprite.dispatchEvent(new MouseEvent("IMAGE_MOUSE_DOWN"));
		}
		private static function mouseMoveHandle(events:MouseEvent):void {
			var sprite:Sprite=events.currentTarget as Sprite;
			if(checkIsApha(events))sprite.dispatchEvent(new MouseEvent("IMAGE_MOUSE_MOVE"));
		}
		private static function mouseOutHandle(events:MouseEvent):void {
			var sprite:Sprite=events.currentTarget as Sprite;
			if(checkIsApha(events))sprite.dispatchEvent(new MouseEvent("IMAGE_MOUSE_OUT"));
		}
		private static function mouseOverHandle(events:MouseEvent):void {
			var sprite:Sprite=events.currentTarget as Sprite;
			if(checkIsApha(events))sprite.dispatchEvent(new MouseEvent("IMAGE_MOUSE_OVER"));
		}
		private static function mouseUpHandle(events:MouseEvent):void {
			var sprite:Sprite=events.currentTarget as Sprite;
			if(checkIsApha(events))sprite.dispatchEvent(new MouseEvent("IMAGE_MOUSE_UP"));
		}
		private static function mouseClickHandle(events:MouseEvent):void {
			var sprite:Sprite=events.currentTarget as Sprite;
			if(checkIsApha(events))sprite.dispatchEvent(new MouseEvent("IMAGE_MOUSE_CLICK"));
		}
		private static function checkIsApha(events:MouseEvent):Boolean{
			var sprite:Sprite=events.currentTarget as Sprite;
			if((sprite.getChildAt(0) as Bitmap).bitmapData.getPixel32(events.localX,events.localY)){
				return true;
			}
			return false;
		}
	}
}