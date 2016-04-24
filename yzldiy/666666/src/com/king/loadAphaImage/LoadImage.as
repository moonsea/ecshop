package com.king.loadAphaImage
{
	import flash.display.*;
	import flash.events.*;
	import flash.net.*;
	
	public class LoadImage{
		private var fun:Function;
		private var obj:Object;
		public function LoadImage(completeFun:Function,obj:Object){
			fun=completeFun;
			this.obj = obj;
		}
		public function Loading(url:String):void{
			try {
				var loader:Loader=new Loader();
				loader.contentLoaderInfo.addEventListener(Event.COMPLETE,completeHandler);
				loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,cancel);
				loader.load(new URLRequest(url));
			} catch (error:Error) {
				trace(error);
			}
		}
		private function cancel(events:IOErrorEvent):void {
			trace(events);
		}
		private function completeHandler(events:Event):void {
			fun(events,obj);
		}
	}
}