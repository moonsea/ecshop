package com.yzl.services
{
	import com.yzl.constant.DOMAINS;
	import com.yzl.valueObject.BackgroundVO;
	import com.yzl.valueObject.DecoratorVO;
	import com.yzl.valueObject.FrameVO;
	
	import flash.events.Event;
	
	import mx.collections.ArrayCollection;
	import mx.collections.XMLListCollection;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.mxml.HTTPService;
	
	public class GetDecorates extends HTTPService
	{
		[Bindable]
		public var decorateList:ArrayCollection = new ArrayCollection();
		
		[Bindable]
		public var pagesList:XMLListCollection;
		
		public var action:String = "getDecorate";
				
		public function GetDecorates(rootURL:String=null, destination:String=null)
		{
			super(rootURL, destination);
			this.resultFormat = "e4x";
			this.url = DOMAINS.FS_DOMAIN+"/yzldiy.php";
			addEventListener(ResultEvent.RESULT,decorate_handler);
		}
		
		protected function decorate_handler(event:ResultEvent):void
		{
			
			decorateList.removeAll();
			if(pagesList)
			{
				pagesList.removeAll();
			}
			if(event.result != "")
			{
				pagesList = new XMLListCollection(event.result..page);
				var resultData:XMLList = event.result..decorates;
				
				for each(var d:XML in resultData)
				{
					if(this.action == "getDecorate")
					{
						var decorate:DecoratorVO = new DecoratorVO();
						decorate.fromXML(d);
						decorateList.addItem(decorate);
					}
					else if(this.action == "getBackground")
					{
						var background:BackgroundVO = new BackgroundVO();
						background.fromXML(d);
						decorateList.addItem(background);
					}
					else if(this.action == "getFrame")
					{
						var frame:FrameVO = new FrameVO();
						frame.fromXML(d);
						decorateList.addItem(frame);
					}
				}
			}
			
		}

	}
}