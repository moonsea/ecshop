package com.yzl.valueObject
{
	import com.yzl.util.ObjectIdUtil;
	import com.yzl.util.XMLUtil;
	
	import spark.components.SkinnableContainer;

	public class MyPageVO extends Object
	{
		private var _preview:String;
		private var _templateW:Number;
		private var _templateH:Number;
		private var _previewIndex:int = -1;
		public var previewScaleX:Number = -1;
		public var previewScaleY:Number = -1;
		public var photoItem:Array;
		public var background:SkinnableContainer;
		public var textItem:Array;
		public var picItem:Array;
		public var hasEditable:Boolean = false;
		public function MyPageVO()
		{
			super();
		}

		
		public function get preview():String
		{
			return _preview;
		}

		public function set preview(value:String):void
		{
			_preview = value;
		}

		public function get templateW():Number
		{
			return _templateW;
		}

		public function set templateW(value:Number):void
		{
			_templateW = value;
		}

		public function get templateH():Number
		{
			return _templateH;
		}

		public function set templateH(value:Number):void
		{
			_templateH = value;
		}

		public function get previewIndex():int
		{
			return _previewIndex;
		}

		public function set previewIndex(value:int):void
		{
			_previewIndex = value;
		}
		
		public function get tagName() : String
		{
			return VOName.PAGE;
		}
		
		public function cloneVO():MyPageVO
		{
			var page:* = this.createCloneObject();
			page.fromXML(this.toXML());
			page._timeId = ObjectIdUtil.createNextId();
			return page;
		}
		
		protected function createCloneObject() : DisplayObjectVO
		{
			return null;
		}
		
		public function toXML() : XML
		{
			var xml:* = XMLUtil.createTag(this.tagName);
			this.copyAttributeToXML(xml);
			return xml;
		}
		
		protected function copyAttributeFromXML(param1:XML) : void
		{
			super.copyAttributeFromXML(param1);
			if (param1.@preview != undefined)
			{
				this._preview = param1.@preview;
			}
			else
			{
				this._preview = "";
			}
			if (param1.@templateW != undefined)
			{
				this.templateW = parseFloat(param1.@templateW);
			}
			if (param1.@templateH != undefined)
			{
				this.templateH = parseFloat(param1.@templateH);
			}
			return;
		}
		
		protected function copyAttributeToXML(param1:XML) : void
		{
			super.copyAttributeToXML(param1);
			if (this._preview != null)
			{
				param1.@preview = this._preview;
			}
			else
			{
				param1.@preview = "";
			}
			if (this.templateW)
			{
				param1.@templateW = this.templateW;
			}
			if (this.templateH)
			{
				param1.@templateH = this.templateH;
			}
			return;
		}
	}
}