package com.roguedevelopment.objecthandles
{
	import flash.display.Bitmap;
	import flash.display.BitmapData;
	import flash.events.MouseEvent;
	
	import spark.components.Image;
	import spark.core.SpriteVisualElement;
	
	public class VisualDelHandle extends SpriteVisualElement implements IHandle
	{
		
		private var _descriptor:HandleDescription;		
		private var _targetModel:Object;
		protected var isOver:Boolean = false;
		
		[Embed(source="assets/del_handle.png")]
		private var delBtn:Class;
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
		
		public function VisualDelHandle()
		{
			super();
			addEventListener( MouseEvent.ROLL_OUT, onRollOut );
			addEventListener( MouseEvent.ROLL_OVER, onRollOver );
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
		private var imgdata:Bitmap;
		public function redraw() : void
		{
			if(imgdata) this.removeChild(imgdata);
			
			imgdata = new delBtn();
			imgdata.smoothing = true;
			imgdata.x = -80;
			
			this.addChild(imgdata);
			
		}
	}
}