package com.yzl.manage
{
	
	
	
	import mx.managers.PopUpManager;
	
	public class PopUpEffect   
	{   
		
		public function PopUpEffect()   
		{   
		}   
		
		public static function show(parent:*,control:*,modal:Boolean=false):void   
		{   
			PopUpManager.addPopUp(control,parent,modal);   
			PopUpManager.centerPopUp(control);   
			PopupModellocator.getInstance().push(control);
			
		}   
		
		public static function hide(control:*):void   
		{   
			PopUpManager.removePopUp(control);
			PopupModellocator.getInstance().pop(control);
		}   
	}   
}  
