package com.yzl.valueObject
{
	public class MyTextVO extends Object
	{
		private var _x:Number=0;
		private var _y:Number=0;
		private var _w:Number=0;
		private var _h:Number=0;
		private var _color:uint=0x000000;
		private var _id:int;
		private var _rotation:Number=0;
		private var _align:String="left";
		private var _size:int = 108;
		private var _font:String = "st";
		private var _content:String="双击添加文字";
		
		public function MyTextVO()
		{
			
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

		public function get w():Number
		{
			return _w;
		}

		public function set w(value:Number):void
		{
			_w = value;
		}

		public function get h():Number
		{
			return _h;
		}

		public function set h(value:Number):void
		{
			_h = value;
		}

		public function get color():uint
		{
			return _color;
		}

		public function set color(value:uint):void
		{
			_color = value;
		}

		public function get id():int
		{
			return _id;
		}

		public function set id(value:int):void
		{
			_id = value;
		}

		public function get rotation():Number
		{
			return _rotation;
		}

		public function set rotation(value:Number):void
		{
			_rotation = value;
		}

		public function get align():String
		{
			return _align;
		}

		public function set align(value:String):void
		{
			_align = value;
		}

		public function get size():int
		{
			return _size;
		}

		public function set size(value:int):void
		{
			_size = value;
		}

		public function get font():String
		{
			return _font;
		}

		public function set font(value:String):void
		{
			_font = value;
		}

		public function get content():String
		{
			return _content;
		}

		public function set content(value:String):void
		{
			_content = value;
		}


	}
}