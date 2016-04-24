package com.yzl.valueObject
{
	import com.yzl.exception.XMLParseError;
	import com.yzl.model.DisplayLayer;

	[Bindable]
	public class PageGroupVO extends DisplayObjectVO
	{
		private var _backgroundChildren:Array;
		private var _normalChildren:Array;
		private var _foregroundChildren:Array;
		
		public function PageGroupVO()
		{
			this._backgroundChildren = [];
			this._normalChildren = [];
			this._foregroundChildren = [];
			return;
		}
		
		public function get numChildren() : Number
		{
			return this._backgroundChildren.length + this._normalChildren.length + this._foregroundChildren.length;
		}
		
		public function addChild(param1:DisplayObjectVO) : void
		{
			switch(param1.layer)
			{
				
				case DisplayLayer.BACKGROUND:
				{
					this._backgroundChildren.push(param1);
					break;
				}
				case DisplayLayer.NORMAL:
				{
					this._normalChildren.push(param1);
					break;
				}
				case DisplayLayer.FOREGROUND:
				{
					this._foregroundChildren.push(param1);
					break;
				}
				default:
				{
					throw new Error("undefined layer:", param1.layer);
					break;
				}
			}
			return;
		}
		
		public function addChildAt(param1:DisplayObjectVO, param2:int) : void
		{
			switch(param1.layer)
			{
				case DisplayLayer.BACKGROUND:
				{
					if (param2 > this._backgroundChildren.length)
					{
						throw new Error("index out of range");
					}
					this._backgroundChildren.splice(param2, 0, param1);
					break;
				}
				case DisplayLayer.NORMAL:
				{
					param2 = param2 - this._backgroundChildren.length;
					if (param2 > this._normalChildren.length)
					{
						throw new Error("index out of range");
					}
					this._normalChildren.splice(param2, 0, param1);
					break;
				}
				case DisplayLayer.FOREGROUND:
				{
					param2 = param2 - (this._backgroundChildren.length + this._normalChildren.length);
					if (param2 > this._foregroundChildren.length)
					{
						throw new Error("index out of range");
					}
					this._foregroundChildren.splice(param2, 0, param1);
					break;
				}
				default:
				{
					throw new Error("undefined layer:", param1.layer);
					break;
				}
			}
			return;
		}
		
		public function addChildAtLayerTop(param1:DisplayObjectVO) : void
		{
			var _loc_2:* = null;
			switch(param1.layer)
			{
				case DisplayLayer.BACKGROUND:
				{
					_loc_2 = this._backgroundChildren;
					break;
				}
				case DisplayLayer.NORMAL:
				{
					_loc_2 = this._normalChildren;
					break;
				}
				case DisplayLayer.FOREGROUND:
				{
					_loc_2 = this._foregroundChildren;
					break;
				}
				default:
				{
					break;
				}
			}
			var _loc_3:* = _loc_2.length;
			var _loc_4:* = _loc_2.length - 1;
			while (_loc_4 >= 0)
			{
				
				if ((_loc_2[_loc_4] as DisplayObjectVO).top)
				{
					_loc_3 = _loc_4;
				}
				_loc_4 = _loc_4 - 1;
			}
			_loc_2.splice(_loc_3, 0, param1);
			return;
		}
		
		public function addChildAtLayerBottom(param1:DisplayObjectVO) : void
		{
			var _loc_2:* = null;
			switch(param1.layer)
			{
				case DisplayLayer.BACKGROUND:
				{
					_loc_2 = this._backgroundChildren;
					break;
				}
				case DisplayLayer.NORMAL:
				{
					_loc_2 = this._normalChildren;
					break;
				}
				case DisplayLayer.FOREGROUND:
				{
					_loc_2 = this._foregroundChildren;
					break;
				}
				default:
				{
					break;
				}
			}
			_loc_2.splice(0, 0, param1);
			return;
		}
		
		override public function get tagName() : String
		{
			return VOName.PAGE;
		}// end function
		
		
		public function removeChildAt(param1:int) : void
		{
			if (param1 < this._backgroundChildren.length)
			{
				this._backgroundChildren.splice(param1, 1);
				return;
			}
			param1 = param1 - this._backgroundChildren.length;
			if (param1 < this._normalChildren.length)
			{
				this._normalChildren.splice(param1, 1);
				return;
			}
			param1 = param1 - this._foregroundChildren.length;
			if (param1 >= this._foregroundChildren.length)
			{
				throw new Error("index out of range");
			}
			this._foregroundChildren.splice(param1, 1);
			return;
		}// end function
		
		public function clearAllNormalChild(param1:int = 16777215) : void
		{
			if (this._backgroundChildren.length > 0)
			{
				(this._backgroundChildren[0] as BackgroundVO).id = "";
				(this._backgroundChildren[0] as BackgroundVO).color = param1;
			}
			this._normalChildren = [];
			return;
		}// end function
		
		public function getChildAt(param1:int) : DisplayObjectVO
		{
			if (param1 < this._backgroundChildren.length)
			{
				return this._backgroundChildren[param1];
			}
			param1 = param1 - this._backgroundChildren.length;
			if (param1 < this._normalChildren.length)
			{
				return this._normalChildren[param1];
			}
			param1 = param1 - this._foregroundChildren.length;
			if (param1 >= this._foregroundChildren.length)
			{
				throw new Error("index out of range");
			}
			return this._foregroundChildren[param1];
		}// end function
		
		public function indexOf(param1:DisplayObjectVO) : int
		{
			var _loc_2:* = this._backgroundChildren.indexOf(param1);
			if (_loc_2 >= 0)
			{
				return _loc_2;
			}
			_loc_2 = this._normalChildren.indexOf(param1);
			if (_loc_2 >= 0)
			{
				return this._backgroundChildren.length + _loc_2;
			}
			_loc_2 = this._foregroundChildren.indexOf(param1);
			if (_loc_2 < 0)
			{
				return -1;
			}
			return this._backgroundChildren.length + this._normalChildren.length + _loc_2;
		}// end function
		
		public function removeNormalChild(param1:DisplayObjectVO):void
		{
			this._normalChildren.splice(this._normalChildren.indexOf(param1),1);
			
		}
		
		public function moveIndexedUp(param1:int) : Boolean
		{
			var _loc_2:* = this.getChildAt(param1);
			if (_loc_2 == null)
			{
				return false;
			}
			var _loc_3:* = null;
			if (this._backgroundChildren.indexOf(_loc_2) >= 0)
			{
				_loc_3 = this._backgroundChildren;
			}
			else if (this._normalChildren.indexOf(_loc_2) >= 0)
			{
				_loc_3 = this._normalChildren;
			}
			else
			{
				_loc_3 = this._foregroundChildren;
			}
			var _loc_4:* = _loc_3.indexOf(_loc_2);
			if (_loc_3.indexOf(_loc_2) >= (_loc_3.length - 1))
			{
				return false;
			}
			var _loc_5:* = _loc_3[(_loc_4 + 1)];
			if (_loc_5.top == true)
			{
				return false;
			}
			_loc_3[_loc_4] = _loc_5;
			_loc_3[(_loc_4 + 1)] = _loc_2;
			return true;
		}// end function
		
		public function moveIndexedDown(param1:int) : Boolean
		{
			var _loc_2:* = this.getChildAt(param1);
			if (_loc_2 == null)
			{
				return false;
			}
			var _loc_3:* = null;
			if (this._backgroundChildren.indexOf(_loc_2) >= 0)
			{
				_loc_3 = this._backgroundChildren;
			}
			else if (this._normalChildren.indexOf(_loc_2) >= 0)
			{
				_loc_3 = this._normalChildren;
			}
			else
			{
				_loc_3 = this._foregroundChildren;
			}
			var _loc_4:* = _loc_3.indexOf(_loc_2);
			if (_loc_3.indexOf(_loc_2) <= 0)
			{
				return false;
			}
			if (_loc_2.top == true)
			{
				return false;
			}
			var _loc_5:* = _loc_3[(_loc_4 - 1)];
			_loc_3[_loc_4] = _loc_5;
			_loc_3[(_loc_4 - 1)] = _loc_2;
			return true;
		}// end function
		
		public function getBackgroundVO(param1:Number = 0) : BackgroundVO
		{
			if (this._backgroundChildren && this._backgroundChildren.length == 1)
			{
				return this._backgroundChildren[0];
			}
			if (this._backgroundChildren && this._backgroundChildren.length > 1 && param1 < 0.5)
			{
				return this._backgroundChildren[0];
			}
			if (this._backgroundChildren && this._backgroundChildren.length > 1 && param1 > 0.5)
			{
				return this._backgroundChildren[1];
			}
			return null;
		}// end function
		
		public function setBackgroundVO(param1:BackgroundVO) : void
		{
			if (this._backgroundChildren && this._backgroundChildren.length == 1)
			{
				this._backgroundChildren[0] = param1;
			}
			return;
		}// end function
		
		public function getPhotoVOs() : Array
		{
			var _loc_2:* = null;
			var _loc_1:* = [];
			for each (_loc_2 in this._normalChildren)
			{
				
				if (_loc_2 is PhotoVO)
				{
					_loc_1.push(_loc_2);
				}
			}
			return _loc_1;
		}// end function
		
		public function getTextVOs() : Array
		{
			var _loc_2:* = null;
			var _loc_1:* = [];
			for each (_loc_2 in this._normalChildren)
			{
				
				if (_loc_2 is TextVO)
				{
					_loc_1.push(_loc_2);
				}
			}
			return _loc_1;
		}// end function
		
		public function getDecoratorVOs() : Array
		{
			var _loc_2:* = null;
			var _loc_1:* = [];
			for each (_loc_2 in this._normalChildren)
			{
				
				if (_loc_2 is DecoratorVO)
				{
					_loc_1.push(_loc_2);
				}
			}
			return _loc_1;
		}// end function
		
		override protected function createCloneObject() : DisplayObjectVO
		{
			return new PageGroupVO();
		}// end function

		override protected function copyAttributeToXML(param1:XML) : void
		{
			var _loc_2:* = null;
			if (x != 0 || y != 0)
			{
				param1.@x = x;
				param1.@y = y;
			}
			param1.@width = width;
			param1.@height = height;
			if (rotation != 0)
			{
				param1.@rotation = rotation;
			}
			for each (_loc_2 in this._backgroundChildren)
			{
				
				param1.appendChild(_loc_2.toXML());
			}
			for each (_loc_2 in this._normalChildren)
			{
				
				param1.appendChild(_loc_2.toXML());
			}
			for each (_loc_2 in this._foregroundChildren)
			{
				
				param1.appendChild(_loc_2.toXML());
			}
			return;
		}// end function
		
		override protected function copyAttributeFromXML(param1:XML) : void
		{
			var _loc_2:* = null;
			var _loc_3:* = null;
			if (param1.@width == undefined)
			{
				throw new XMLParseError("width undefined");
			}
			if (param1.@height == undefined)
			{
				throw new XMLParseError("height undefined");
			}
			if (param1.@x == undefined)
			{
				x = 0;
			}
			else
			{
				x = parseFloat(param1.@X);
			}
			if (param1.@y == undefined)
			{
				y = 0;
			}
			else
			{
				y = parseFloat(param1.@y);
			}
			width = parseFloat(param1.@width);
			height = parseFloat(param1.@height);
			if (rotation != 0)
			{
				param1.@rotation = rotation;
			}
			this._backgroundChildren = [];
			this._normalChildren = [];
			this._foregroundChildren = [];
			for each (_loc_2 in param1.children())
			{
				
				switch(_loc_2.name().toString())
				{
					case VOName.PHOTO:
					{
						_loc_3 = new PhotoVO();
						break;
					}
					case VOName.TEXT:
					{
						_loc_3 = new TextVO();
						break;
					}
					case VOName.DECORATOR:
					{
						_loc_3 = new DecoratorVO();
						break;
					}
					case VOName.BACKGROUND:
					{
						_loc_3 = new BackgroundVO();
						break;
					}
					default:
					{
						break;
						break;
					}
				}
				_loc_3.fromXML(_loc_2);
				this.addChild(_loc_3);
			}
			return;
		}// end function
	}
}