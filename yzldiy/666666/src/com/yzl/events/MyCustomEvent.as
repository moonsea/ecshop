package com.yzl.events
{
	import flash.events.Event;
	
	public class MyCustomEvent extends Event
	{
		public var data:Object;
		
		override public function clone():Event
		{
			return new MyCustomEvent(type,data);
		}
		
		
		public function MyCustomEvent(type:String,data:Object)
		{
			super(type,true,true);
			this.data = data;
		}
	}
}