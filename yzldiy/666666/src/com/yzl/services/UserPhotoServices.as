package com.yzl.services
{
	import com.yzl.constant.DOMAINS;
	import com.yzl.valueObject.BackgroundVO;
	import com.yzl.valueObject.DecoratorVO;
	import com.yzl.valueObject.PhotoItem;
	import com.yzl.valueObject.PhotoVO;
	
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.collections.XMLListCollection;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.mxml.HTTPService;
	
	public class UserPhotoServices extends HTTPService
	{
		[Bindable]
		public var photoList:ArrayCollection = new ArrayCollection();
		
		[Bindable]
		public var pagesList:XMLListCollection;
		
		public var action:String = "getUserPhoto";
				
		public function UserPhotoServices(rootURL:String=null, destination:String=null)
		{
			super(rootURL, destination);
			this.resultFormat = "e4x";
			this.url = DOMAINS.FS_DOMAIN+"/yzldiy.php";
			addEventListener(ResultEvent.RESULT,decorate_handler);
		}
		
		protected function decorate_handler(event:ResultEvent):void
		{
			
			photoList.removeAll();
			if(pagesList)
			{
				pagesList.removeAll();
			}
			if(event.result != "")
			{
				pagesList = new XMLListCollection(event.result..page);
				var resultData:XMLList = event.result..photo;
				for each(var d:XML in resultData)
				{
					var photo:PhotoVO = new PhotoVO();
					photo.fromXML(d);
					photoList.addItem(photo);
					
				}
			}
			
		}

	}
}