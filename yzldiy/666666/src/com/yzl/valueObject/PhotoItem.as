package com.yzl.valueObject
{
	import com.yzl.manage.ZoomDraw;
	
	import flash.display.BitmapData;
	import flash.display.Loader;
	import flash.events.Event;
	import flash.net.FileReference;
	import flash.net.URLRequest;

	public class PhotoItem
	{
		public var id:String;
		public var name:String;
		public var file:FileReference;
		[Bindable]
		public var time:Date;
		[Bindable]
		public var img:BitmapData;
		public var status:int=1;
		public var isUpload:Boolean = true;
		private var _useCount:int = -1;
		
		
		public function PhotoItem(id:String='-1',name:String='',time:Date = null, file:FileReference=null,img:BitmapData=null,status:int=1){
			this.id = id;
			this.name = name;
			this.time = time;
			this.file = file;
			this.img = img;
			this.status = status;
		}
		
		public static function buildMyPhoto(o:Object):PhotoItem{
			var mp:PhotoItem;
			mp = new PhotoItem(o.id,o.name,o.file,o.img,o.status);
			return mp;
		}

		public function get useCount():int{
			return _useCount;
		}

		public function set useCount(value:int):void{
			_useCount = value;
		}
		
		public function getImage(w,h):BitmapData {
			var bmd:BitmapData = ZoomDraw.getZoomDraw(img, w, h,false);
			return bmd;
		}

	}
}