package com.yzl.model
{
	public class FixMode extends Object
	{
		public static const NONE:String = "";
		public static const X:String = "X";
		public static const Y:String = "Y";
		public static const BOTH:String = "XY";
		
		function FixMode()
		{
			return;
		}
		
		public static function isFixedX(param1:String) : Boolean
		{
			return param1.indexOf(X) != -1;
		}
		
		public static function isFixedY(param1:String) : Boolean
		{
			return param1.indexOf(Y) != -1;
		}
		
		public static function isFixedBoth(param1:String) : Boolean
		{
			return param1 == BOTH;
		}
	}
}