package com.yzl.manage
{

	import com.yzl.util.ArrayUtil;
	
	[Bindable]
	public class PopupModellocator
	{
		
		private static var instance:PopupModellocator;
		//保存pop出来的窗口
		private var popupArray:Array ;
		
		
		public function DataGridModellocator():void
		{
			if(instance==null){
				instance = this;
			}
		}
		
		public static function getInstance():PopupModellocator{
			if(instance==null){
				instance = new PopupModellocator();
			}
			return instance;
		}
		
		public function push(control:*):void{
			if(!popupArray){
				popupArray = new Array;
			}
			popupArray.push(control);
		}
		
		public function pop(control:*):void{
			if(popupArray){
				ArrayUtil.removeValueFromArray(popupArray,control);
			}
		}
		
		public function popAll():void{
			if(popupArray&&popupArray.length>0){
				PopUpEffect.hide(popupArray[popupArray.length-1]);
				popAll();
			}else{
				return;
			}
		}
	}
}