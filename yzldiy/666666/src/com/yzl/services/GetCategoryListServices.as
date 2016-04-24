package com.yzl.services
{
	import com.yzl.constant.DOMAINS;
	
	import mx.collections.XMLListCollection;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.mxml.HTTPService;
	
	public class GetCategoryListServices extends HTTPService
	{
		[Bindable]
		public var category:XMLListCollection;
		
		private var _action:String;
		private var _m:String="yzldiy";
		private var _c:String;
		
		public function GetCategoryListServices(action:String="getDecorateCategory",c:String='decorate',rootURL:String=null, destination:String=null)
		{
			super(rootURL, destination);
			this.resultFormat = "e4x";
			this._action = action;
			this._c = c; 
			this.url = DOMAINS.FS_DOMAIN+"/yzldiy.php?m="+_m+"&c="+_c+"&a="+_action;
			addEventListener(ResultEvent.RESULT,category_handler);
		}
		
		protected function category_handler(event:ResultEvent):void
		{
			category = new XMLListCollection(event.result.category);
		}

		public function get action():String
		{
			return _action;
		}

		public function set action(value:String):void
		{
			_action = value;
		}

		public function get m():String
		{
			return _m;
		}

		public function set m(value:String):void
		{
			_m = value;
		}

		public function get c():String
		{
			return _c;
		}

		public function set c(value:String):void
		{
			_c = value;
		}


	}
}