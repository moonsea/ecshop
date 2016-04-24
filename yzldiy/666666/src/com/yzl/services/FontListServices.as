package com.yzl.services
{
	import com.yzl.constant.DOMAINS;
	import com.yzl.model.DataModel;
	
	import mx.collections.XMLListCollection;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.mxml.HTTPService;
	
	public class FontListServices extends HTTPService
	{
		[Bindable]
		public var fontList:XMLListCollection;
		
		public function FontListServices(rootURL:String=null, destination:String=null)
		{
			super(rootURL, destination);
			this.resultFormat="e4x";
			this.url = DOMAINS.FS_DOMAIN+"/fontList.xml";
			addEventListener(ResultEvent.RESULT,fontList_resultHandler);
		}
		
		protected function fontList_resultHandler(event:ResultEvent):void
		{
			fontList= new XMLListCollection(event.result.fonts);
			DataModel.getInstance().fontlist = fontList;
		}
	}
}