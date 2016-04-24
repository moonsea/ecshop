package com.roguedevelopment.objecthandles
{
	import flash.events.MouseEvent;
	
	import spark.core.SpriteVisualElement;
	
	/**
	 * A handle class based on SpriteVisualElement which is suitable for adding to
	 * a Flex 4 Group based container.
	 **/
	public class VisualElementHandleBorder extends SpriteVisualElement implements IHandle
	{
		
		private var _descriptor:HandleDescription;		
		private var _targetModel:Object;
		protected var isOver:Boolean = false;
		
		public function get handleDescriptor():HandleDescription
		{
			return _descriptor;
		}
		public function set handleDescriptor(value:HandleDescription):void
		{
			_descriptor = value;
		}
		public function get targetModel():Object
		{
			return _targetModel;
		}
		public function set targetModel(value:Object):void
		{
			_targetModel = value;
		}
		
		public function VisualElementHandleBorder()
		{
			super();
			//addEventListener( MouseEvent.ROLL_OUT, onRollOut );
			//addEventListener( MouseEvent.ROLL_OVER, onRollOver );
			//redraw();
		}
		
		protected function onRollOut( event : MouseEvent ) : void
		{
			isOver = false;
			redraw();
		}
		protected function onRollOver( event:MouseEvent):void
		{
			isOver = true;
			redraw();
		}
		
		public function redraw() : void
		{
			graphics.clear();
			if( isOver )
			{
				graphics.lineStyle(14,_descriptor.color);
				//graphics.beginFill(_descriptor.color,1);				
			}
			else
			{
				graphics.lineStyle(14,_descriptor.color);
				//graphics.beginFill(_descriptor.color,1);
			}
			if(_descriptor.width>0 && _descriptor.height>0)
			{
				graphics.drawRect(0,0,_descriptor.width,_descriptor.height);
				graphics.endFill();
			}
			
		}
	}
}