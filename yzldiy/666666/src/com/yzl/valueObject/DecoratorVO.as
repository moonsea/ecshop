package com.yzl.valueObject
{
	import com.yzl.constant.DOMAINS;
	import com.yzl.constant.URLS;

    public class DecoratorVO extends DisplayObjectVO
    {
        private var id_:String;
        private var ext_:String;

        override public function get tagName() : String
        {
            return VOName.DECORATOR;
        }

        public function get id() : String
        {
            return this.id_;
        }

        public function set id(param1:String) : void
        {
            this.id_ = param1;
            
        }

        public function get ext() : String
        {
            return this.ext_;
        }

        public function set ext(param1:String) : void
        {
            this.ext_ = param1;
            
        }

       public function get scalable() : Boolean
        {
            return this.ext_.toLowerCase() == ".swf";
        }

       
        override protected function createCloneObject() : DisplayObjectVO
        {
            return new DecoratorVO();
        }

        override public function get url() : String
        {
            var url:String = this.id_ + "m" + this.ext_;
            var path:String = "?v=" + (new Date().date * 100 + new Date().hours).toString();
			
			//后缀是不是swf?
            if (this.scalable)  url = url + path;
            //return URLS.FLASH_DECORATE_ROOT + "/" + url;
			return DOMAINS.FS_DOMAIN+ "/Uploads/yzldiy/decorate/"+url;
        }

        override public function get thumbnailURL() : String
        {
			var url:String = this.id_ + "s" + this.ext_;
			return DOMAINS.FS_DOMAIN+ "/Uploads/yzldiy/decorate/"+url;
        }

        

		override protected function copyAttributeFromXML(param1:XML) : void
		{
			super.copyAttributeFromXML(param1);
			this.id_ = param1.@id.toString();
			this.ext_ = param1.@ext.toString();
			
		}
		
        override protected function copyAttributeToXML(param1:XML) : void
        {
            super.copyAttributeToXML(param1);
            param1.@id = this.id_;
            param1.@ext = this.ext_;
            
        }

    }
}
