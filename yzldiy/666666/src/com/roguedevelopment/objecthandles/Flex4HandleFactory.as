package com.roguedevelopment.objecthandles
{
	import mx.core.IFactory;
	
	/**
	 * A simple factory class for Flex 4 based handles.
	 ***/
	public class Flex4HandleFactory implements IFactory
	{
		private var type:String;
		public function Flex4HandleFactory(type:String="rect")
		{
			this.type = type;
		}
		
		public function newInstance():*
		{
			if(type=="rect")
				return new VisualElementHandle();
			if(type=="border")
				return new VisualElementHandleBorder();
			if(type=="circle")
				return new VisualCircleHandle();
			if(type=="line")
				return new VLineHandle();
			if(type=="photo")
				return new VisualPhotoMoveHandle();
			if(type=="rotate")
				return new VisualRotateHandle();
			if(type=="del")
				return new VisualDelHandle();
		}
	}
}