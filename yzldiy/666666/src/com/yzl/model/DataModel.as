package com.yzl.model
{
	import com.yzl.services.IPreviewDrawer;
	import com.yzl.valueObject.*;
	import com.yzl.valueObject.DisplayObjectVO;
	
	import flash.display.BitmapData;
	import flash.events.EventDispatcher;
	import flash.events.IEventDispatcher;
	
	import mx.collections.XMLListCollection;

	[Bindable]
	public class DataModel extends Object
	{
		private var _userName:String = "yzluser";
		private var _isDesign:Boolean = false;
		private var _version:String = "1";
		private var _nickname:String = "";
		private var _userId:String = "2";
		private var _cookie:String = "";
		private var _productVO:ProductVO;
		public var realProductType:int = 0;
		public var initProductType:int = 0;
		private var _dataChanged:Boolean;
		private var _pageHeadIndex:int;
		private var _mainEditScale:Number = 1;
		public var stageWidth:Number;
		public var stageHeight:Number;
		public var maximizePhotoView:Boolean = false;
		public var previewDrawer:IPreviewDrawer;
		public var previewBitmapData:BitmapData;
		//public var currentSnapshot:WorkView; //当前快照？
		public var currentCanvasSnapshot:BitmapData;
		
		public var currentMicroPageIndex:int;
		public var currentCoverIndex:int;
		private var _coverPageVO:PageVO;
		public var backCoverPageVO:PageVO;
		public var secondBackCoverPageVO:PageVO;
		public var isPopupLayoutChange:Boolean = true;
		public var isEditCoverText:Boolean = false;
		public var clipboardVO:DisplayObjectVO;
		public var clipboardPasterOffset:Number = 0;
		public var scale:Number = 1;
		private var _currentScale:Number = 0;
		private var _minScale:Number = 0;
		private var _calendarStartMonth:int = 0;
		public var loadLayout:Boolean = false;
		public var finishGenLayout:Boolean = false;
		public var needLocationTip:Boolean = true;
		public var isFromCart:Boolean = false;
		private var _title:String = "";
		private var _disney:Boolean = false;
		private var _isBadTemplate:Boolean = false;
		private var _cutWorkviewBg:uint;
		private var _productName_:String = "";
		private var _count:int = 1;
		private var _productId:String = "";
		private var _cartId:String = "";
		private var _retailprice:String;
		public var fontlist:XMLListCollection;
		private var _tag:String;
		private static var instance_:DataModel;
		
		private var _pageNum:int = 0;
		
		public var redoArr:Array = new Array();
		public var undoArr:Array = new Array();
		
		public function DataModel()
		{
			return;
		}
		
		public static function getInstance() : DataModel
		{
			if (instance_ == null)
			{
				instance_ = new DataModel;
			}
			return instance_;
		}

		public function get userName():String
		{
			return _userName;
		}

		
		public function set userName(value:String):void
		{
			_userName = value;
		}

		public function get version():String
		{
			return _version;
		}

		public function set version(value:String):void
		{
			_version = value;
		}

		public function get nickname():String
		{
			return _nickname;
		}

		public function set nickname(value:String):void
		{
			_nickname = value;
		}

		public function get userId():String
		{
			return _userId;
		}

		public function set userId(value:String):void
		{
			_userId = value;
		}

		public function get cookie():String
		{
			return _cookie;
		}

		public function set cookie(value:String):void
		{
			_cookie = value;
		}

		public function get productVO():ProductVO
		{
			return _productVO;
		}

		public function set productVO(value:ProductVO):void
		{
			_productVO = value;
		}

		public function get dataChanged():Boolean
		{
			return _dataChanged;
		}

		public function set dataChanged(value:Boolean):void
		{
			_dataChanged = value;
		}

		public function get pageHeadIndex():int
		{
			return _pageHeadIndex;
		}

		public function set pageHeadIndex(value:int):void
		{
			_pageHeadIndex = value;
		}

		public function get coverPageVO():PageVO
		{
			return _coverPageVO;
		}

		public function set coverPageVO(value:PageVO):void
		{
			_coverPageVO = value;
		}

		public function get calendarStartMonth():int
		{
			return _calendarStartMonth;
		}

		public function set calendarStartMonth(value:int):void
		{
			_calendarStartMonth = value;
		}
		
		public function get pageNum():int
		{
			return _pageNum;
		}
		
		public function set pageNum(value:int):void
		{
			_pageNum = value;
		}

		public function get title():String
		{
			return _title;
		}

		public function set title(value:String):void
		{
			_title = value;
		}

		public function get disney():Boolean
		{
			return _disney;
		}

		public function set disney(value:Boolean):void
		{
			_disney = value;
		}

		public function get isBadTemplate():Boolean
		{
			return _isBadTemplate;
		}

		public function set isBadTemplate(value:Boolean):void
		{
			_isBadTemplate = value;
		}

		public function get cutWorkviewBg():uint
		{
			return _cutWorkviewBg;
		}

		public function set cutWorkviewBg(value:uint):void
		{
			_cutWorkviewBg = value;
		}

		public function get productName_():String
		{
			return _productName_;
		}

		public function set productName_(value:String):void
		{
			_productName_ = value;
		}

		public function get count():int
		{
			return _count;
		}

		public function set count(value:int):void
		{
			_count = value;
		}

		public function get productId():String
		{
			return _productId;
		}

		public function set productId(value:String):void
		{
			_productId = value;
		}

		public function get cartId():String
		{
			return _cartId;
		}

		public function set cartId(value:String):void
		{
			_cartId = value;
		}

		public function get retailprice():String
		{
			return _retailprice;
		}

		public function set retailprice(value:String):void
		{
			_retailprice = value;
		}

		public function get tag():String
		{
			return _tag;
		}

		public function set tag(value:String):void
		{
			_tag = value;
		}



		public function get isDesign():Boolean
		{
			return _isDesign;
		}

		public function set isDesign(value:Boolean):void
		{
			_isDesign = value;
		}

		public function get currentScale():Number
		{
			return _currentScale;
		}

		public function set currentScale(value:Number):void
		{
			_currentScale = value;
		}

		public function get minScale():Number
		{
			return _minScale;
		}

		public function set minScale(value:Number):void
		{
			_minScale = value;
		}

		public function get mainEditScale():Number
		{
			return _mainEditScale;
		}

		public function set mainEditScale(value:Number):void
		{
			_mainEditScale = value;
		}

		//清空撤消恢复
		public function clearRedoUndo():void
		{
			redoArr.splice(0);
			undoArr.splice(0);
		}

	}
}