package com.yzl.valueObject
{
	import com.yzl.constant.DOMAINS;
	import com.yzl.constant.URLS;
	import com.yzl.model.DisplayLayer;

    public class BackgroundVO extends DisplayObjectVO
    {
        private var _id:String;
        private var _color:uint;
		private var _ext:String;

        public function BackgroundVO()
        {
			super();
            return;
        }// end function

        override public function get tagName() : String
        {
            return VOName.BACKGROUND;
        }// end function

        override public function get url() : String
        {
			var loc:String = DOMAINS.FS_DOMAIN+ "/Uploads/yzldiy/background/"+_id+"m"+_ext;
			return loc;
					//return _bimg;
					
        }
		
		override public function get thumbnailURL() : String
		{
			var loc:String = DOMAINS.FS_DOMAIN+ "/Uploads/yzldiy/background/"+_id+"s"+_ext;
			return loc;
			//return _bimg;
			
		}

        public function get id() : String
        {
            return this._id;
        }

        public function set id(param1:String) : void
        {
            this._id = param1;
            return;
        }

        public function get color() : uint
        {
            return this._color;
        }

        public function set color(param1:uint) : void
        {
            this._color = param1;
            return;
        }

  
        override protected function createCloneObject() : DisplayObjectVO
        {
            return new BackgroundVO();
        }    
		
		
		public function get ext():String
		{
			return _ext;
		}
		
		public function set ext(value:String):void
		{
			_ext = value;
		}
		override protected function copyAttributeFromXML(param1:XML) : void
		{
			super.copyAttributeFromXML(param1);
			if (param1.@id != undefined)
			{
				this._id = param1.@id.toString();
			}
			else
			{
				this._id = "";
			}
			if (param1.@ext != undefined)
			{
				this._ext = param1.@ext.toString();
			}
			else
			{
				this._ext = "";
			}
			if (param1.@color != undefined)
			{
				this._color = parseInt(param1.@color);
			}
			layer = DisplayLayer.BACKGROUND;
			return;
		}
		
		override protected function copyAttributeToXML(param1:XML) : void
		{
			super.copyAttributeToXML(param1);
			if (this._id != null && this._id != "null")
			{
				param1.@id = this._id;
			}
			else
			{
				param1.@id = "";
			}
			if (this._ext != null && this._ext != "null")
			{
				param1.@ext = this._ext;
			}
			else
			{
				param1.@ext = "";
			}
			param1.@color = "0x" + this._color.toString(16);
			return;
		}

		


    }
}
