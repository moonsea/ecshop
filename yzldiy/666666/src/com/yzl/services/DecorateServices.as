package com.yzl.services
{
	import com.yzl.constant.URLS;
	import com.yzl.valueObject.BackgroundVO;
	import com.yzl.valueObject.DecoratorVO;
	import com.yzl.valueObject.FrameVO;
	
	import mx.collections.ArrayCollection;
	import mx.collections.XMLListCollection;
	import mx.rpc.events.ResultEvent;
	import mx.rpc.http.mxml.HTTPService;
	
	import spark.collections.Sort;
	import spark.collections.SortField;
	
	public class DecorateServices extends HTTPService
	{
		[Bindable]
		public var decorateList:ArrayCollection = new ArrayCollection();
		
		private var _action:String="getDecorate";
		private var _page:Number = 1;
		private var _limit:Number = 12;
		private var _category:Number = 0;
		
		public function DecorateServices(action:String="getDecorate",page:Number=1,category:Number=0,limit:Number=12,rootURL:String=null, destination:String=null)
		{
			
			super(rootURL, destination);
			this.resultFormat = "e4x";
			this.action = action;
			this.page = page;
			this.category = category;
			this.limit = limit;
			this.url = URLS.FLASH_DECORATE_ROOT+"&c=Decorate&a="+action+"&category="+category+"&page="+page+"&limit="+limit;
			var decorateSort:Sort = new Sort();
			var sortField:SortField = new SortField("id");
			decorateSort.fields = [sortField];
			decorateList.sort = decorateSort;
			decorateList.refresh();
			addEventListener(ResultEvent.RESULT,decorate_handler);
			
		}
		
		protected function decorate_handler(event:ResultEvent):void
		{
			//var decorates:Array = new Array();
			var resultData:XMLList = event.result..decorates;
			for each(var d:XML in resultData)
			{
				if(this._action == "getDecorate")
				{
					var decorate:DecoratorVO = new DecoratorVO();
					decorate.fromXML(d);
					decorateList.addItem(decorate);
				}
				else if(this._action == "getBackground")
				{
					var background:BackgroundVO = new BackgroundVO();
					background.fromXML(d);
					decorateList.addItem(background);
				}
				else if(this._action == "getFrame")
				{
					var frame:FrameVO = new FrameVO();
					frame.fromXML(d);
					decorateList.addItem(frame);
				}
			}
		}
		
		public function get category():Number
		{
			return _category;
		}

		public function set category(value:Number):void
		{
			_category = value;
		}

		public function get limit():Number
		{
			return _limit;
		}

		public function set limit(value:Number):void
		{
			_limit = value;
		}

		public function get page():Number
		{
			return _page;
		}

		public function set page(value:Number):void
		{
			_page = value;
		}

		public function get action():String
		{
			return _action;
		}

		public function set action(value:String):void
		{
			_action = value;
		}


	}
}