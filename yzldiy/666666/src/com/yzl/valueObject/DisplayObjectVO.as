package com.yzl.valueObject
{
	import com.yzl.model.*;
	import com.yzl.util.*;
	import com.yzl.valueObject.filters.DropShadowFilterVO;
	
	import flash.events.EventDispatcher;
	import flash.geom.*;

	public class DisplayObjectVO extends EventDispatcher
	{
		private var _x:Number;
		private var _y:Number;
		private var _width:Number;
		private var _height:Number;
		private var _rotation:Number;
		private var _alpha:Number;
		private var _layer:String;
		private var _timeId:String;
		private var _fixMode:String;
		private var _editable:Boolean;
		private var _fromTemplate_:Boolean;
		private var _top:Boolean = false;
		private var _filters:Array;
		
		public function DisplayObjectVO()
		{
			this._rotation = 0;
			this._height = 0;
			this._width = 0;
			this._y = 0;
			this._x = 0;
			this._alpha = 1;
			this._timeId = ObjectIdUtil.createNextId();
			this._layer = DisplayLayer.NORMAL;
			this._fixMode = FixMode.NONE;
			this._editable = true;
			this._top = false;
			this._filters = [];
			
		}

		public function get x():Number
		{
			return _x;
		}

		public function set x(value:Number):void
		{
			_x = value;
		}

		public function get y():Number
		{
			return _y;
		}

		public function set y(value:Number):void
		{
			_y = value;
		}

		public function get width():Number
		{
			return _width;
		}

		public function set width(value:Number):void
		{
			_width = value;
		}

		public function get height():Number
		{
			return _height;
		}

		public function set height(value:Number):void
		{
			_height = value;
		}

		public function get rotation():Number
		{
			return _rotation;
		}

		public function set rotation(value:Number):void
		{
			_rotation = value;
		}

		public function get alpha():Number
		{
			return _alpha;
		}

		public function set alpha(value:Number):void
		{
			_alpha = value;
		}

		public function get layer():String
		{
			return _layer;
		}

		public function set layer(value:String):void
		{
			_layer = value;
		}

		public function get timeId():String
		{
			return _timeId;
		}

		public function set timeId(value:String):void
		{
			_timeId = value;
		}

		public function get fixMode():String
		{
			return _fixMode;
		}

		public function set fixMode(value:String):void
		{
			_fixMode = value;
		}

		public function get editable():Boolean
		{
			return _editable;
		}

		public function set editable(value:Boolean):void
		{
			_editable = value;
		}

		public function get fromTemplate_():Boolean
		{
			return _fromTemplate_;
		}

		public function set fromTemplate_(value:Boolean):void
		{
			_fromTemplate_ = value;
		}

		public function get top():Boolean
		{
			return _top;
		}

		public function set top(value:Boolean):void
		{
			_top = value;
		}

		public function get filters():Array
		{
			return _filters;
		}

		public function set filters(value:Array):void
		{
			_filters = value;
		}
		
		public function get tagName() : String
		{
			return VOName.OBJECT;
		}
		
		public function toXML() : XML
		{
			var xml:* = XMLUtil.createTag(this.tagName);
			this.copyAttributeToXML(xml);
			return xml;
		}
		
		public function fromXML(param1:XML) : void
		{
			this.copyAttributeFromXML(param1);
			
		}
		
		override public function toString() : String
		{
			return this.toXML().toXMLString();
		}
		
		public function cloneVO() : DisplayObjectVO
		{
			var _loc_1:* = this.createCloneObject();
			_loc_1.fromXML(this.toXML());
			_loc_1._timeId = ObjectIdUtil.createNextId();
			return _loc_1;
		}
		
		protected function createCloneObject() : DisplayObjectVO
		{
			return null;
		}
		
		public function get thumbnailURL() : String
		{
			return null;
		}
		
		public function get url() : String
		{
			return null;
		}
		
		protected function copyAttributeToXML(param1:XML) : void
		{
			var _loc_3:* = null;
			var xml:* = null;
			param1.@timeId = this._timeId;
			param1.@x = this._x.toFixed(2).toString();
			param1.@y = this._y.toFixed(2).toString();
			param1.@width = this._width.toFixed(2).toString();
			param1.@height = this._height.toFixed(2).toString();
			if (this._rotation != 0)
			{
				param1.@rotation = this._rotation.toFixed(2).toString();
			}
			if (this._alpha != 1)
			{
				param1.@alpha = this._alpha.toFixed(2);
			}
			if (this.fromTemplate_)
			{
				param1.@fromTemplate = "1";
			}
			if (this._layer != DisplayLayer.NORMAL)
			{
				param1.@layer = this._layer;
			}
			if (this._fixMode != FixMode.NONE)
			{
				param1.@fix = this._fixMode;
			}
			if (!this._editable)
			{
				param1.@editable = "0";
			}
			if (this._top)
			{
				param1.@top = "1";
			}
			var _loc_2:* = XMLUtil.createTag("filters");
			for each (_loc_3 in this._filters)
			{
				
				_loc_2.appendChild(_loc_3.toXML());
			}
			if (_loc_2.children().length() > 0)
			{
				param1.appendChild(_loc_2);
			}
			
			
		}
		
		protected function copyAttributeFromXML(param1:XML) : void
		{
			var _loc_3:* = null;
			var _loc_4:* = null;
			
			
			if (param1.@timeId == undefined)
			{
				this._timeId = ObjectIdUtil.createNextId();
			}
			else
			{
				this._timeId = param1.@timeId.toString();
			}
			this._x = parseFloat(param1.@x);
			this._y = parseFloat(param1.@y);
			this._width = parseFloat(param1.@width);
			this._height = parseFloat(param1.@height);
			if (param1.@rotation == undefined)
			{
				this._rotation = 0;
			}
			else
			{
				this._rotation = parseFloat(param1.@rotation);
			}
			if (param1.@alpha == undefined)
			{
				this._alpha = 1;
			}
			else
			{
				this._alpha = parseFloat(param1.@alpha);
			}
			if (param1.@layer == undefined)
			{
				this._layer = DisplayLayer.NORMAL;
			}
			else
			{
				this._layer = param1.@layer;
			}
			this._fixMode = FixMode.NONE;
			this._editable = true;
			this._top = false;
			if (param1.@fix != undefined)
			{
				this._fixMode = param1.@fix;
			}
			else if (param1.@fixed == undefined)
			{
				if (param1.@fixedX == undefined || param1.@fixedX == "0")
				{
					this._fixMode = FixMode.NONE;
				}
				else
				{
					this._fixMode = FixMode.X;
				}
			}
			else if (param1.@fixed == "1")
			{
				this._fixMode = FixMode.BOTH;
			}
			else if (param1.@fixed == "0")
			{
				this._fixMode = FixMode.NONE;
			}
			if (param1.@fromTemplate != undefined)
			{
				this.fromTemplate_ = param1.@fromTemplate == "1";
			}
			else
			{
				this.fromTemplate_ = false;
			}
			if (param1.@editable != undefined)
			{
				if (param1.@editable == "1")
				{
					this._editable = true;
				}
				else
				{
					this._editable = false;
				}
			}
			if (param1.@top != undefined)
			{
				if (param1.@top == "1")
				{
					this._top = true;
				}
				else
				{
					this._top = false;
				}
			}
			
			this._filters = [];
			var _loc_2:* = null;
			for each (_loc_2 in param1.children())
			{
				var filter:*=null;
				if (_loc_2.localName() == "filters")
				{
					for each(filter in _loc_2.children())
					{
						if(filter.localName() == "dropshadow")
						{
							var dropShadow:DropShadowFilterVO = new DropShadowFilterVO();
							dropShadow.angle = filter.@angle;
							dropShadow.color = filter.@color;
							this.filters.push(dropShadow);
						}
					}
				}
			}
			
			
		}
		
		
		public function get fromTemplate() : Boolean
		{
			return this.fromTemplate_;
		}
		
		public function set fromTemplate(param1:Boolean) : void
		{
			this.fromTemplate_ = param1;
			
		}
		
		public function getBound() : Rectangle
		{
			var _loc_1:* = new Matrix();
			_loc_1.rotate(this.rotation * Math.PI / 180);
			var _loc_2:* = new Point(this.x, this.y);
			var _loc_3:* = _loc_1.transformPoint(new Point(this.width, 0));
			var _loc_4:* = _loc_1.transformPoint(new Point(0, this.height));
			var _loc_5:* = _loc_1.transformPoint(new Point(this.width, this.height));
			_loc_3.x = _loc_3.x + this.x;
			_loc_3.y = _loc_3.y + this.y;
			_loc_4.x = _loc_4.x + this.x;
			_loc_4.y = _loc_4.y + this.y;
			_loc_5.x = _loc_5.x + this.x;
			_loc_5.y = _loc_5.y + this.y;
			var _loc_6:* = new Rectangle();
			_loc_6.x = Math.min(_loc_2.x, _loc_3.x, _loc_4.x, _loc_5.x);
			_loc_6.right = Math.max(_loc_2.x, _loc_3.x, _loc_4.x, _loc_5.x);
			_loc_6.y = Math.min(_loc_2.y, _loc_3.y, _loc_4.y, _loc_5.y);
			_loc_6.bottom = Math.max(_loc_2.y, _loc_3.y, _loc_4.y, _loc_5.y);
			return _loc_6;
		}

	}
}