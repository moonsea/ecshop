package com.yzl.services
{
	import flash.display.BitmapData;

	public interface IPreviewDrawer
	{
		public function IPreviewDrawer();
		
		function getPreviewData() : BitmapData;
		
		function getSharePreviewData() : BitmapData;
		
	}
}