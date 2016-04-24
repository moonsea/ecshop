package com.yzl.valueObject
{
	import spark.components.Image;
	
	public class MyImage extends Image
	{
		protected var _model:DisplayObjectVO;
		public function MyImage()
		{
			super();
		}

		public function get model():DisplayObjectVO
		{
			return _model;
		}

		public function set model(value:DisplayObjectVO):void
		{
			_model = value;
		}

	}
}