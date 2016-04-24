package com.yzl.valueObject
{
	import com.yzl.constant.URLS;
	import com.yzl.util.XMLUtil;

    public class FrameVO extends DisplayObjectVO
    {
        private var id_:String;
        private var ext_:String;
        private var type_:String;
        private var offsetX_:Number;
        private var offsetY_:Number;
        private var scaleX_:Number;
        private var scaleY_:Number;
        public static const LEGACY_TYPE:String = "legacy";
        public static const MASK_TYPE:String = "mask";

        public function FrameVO()
        {
            this.offsetX_ = 0;
            this.offsetY_ = 0;
            this.scaleX_ = 1;
            this.scaleY_ = 1;
            return;
        }// end function

		public function get type() : String
        {
            return this.type_;
        }// end function

        public function set type(param1:String) : void
        {
            this.type_ = param1;
            return;
        }// end function

        public function get ext() : String
        {
            return this.ext_;
        }// end function

        public function set ext(param1:String) : void
        {
            this.ext_ = param1;
            return;
        }// end function

        public function get id() : String
        {
            return this.id_;
        }// end function

        public function set id(param1:String) : void
        {
            this.id_ = param1;
            return;
        }// end function

        override public function get tagName() : String
        {
            return VOName.FRAME;
        }// end function

        override public function get url() : String
        {
            return URLS.FLASH_FRAME_ROOT + this.id_+".png";
        }// end function

        override public function get thumbnailURL() : String
        {
            return URLS.FLASH_FRAME_ROOT +this.id_+"s.png";
        }// end function

        public function get maskURL() : String
        {
            return URLS.FLASH_FRAME_ROOT + this.id_ + "m.png";
        }// end function

        public function get scaleX() : Number
        {
            return this.scaleX_;
        }// end function

        public function set scaleX(param1:Number) : void
        {
            this.scaleX_ = param1;
            return;
        }// end function

        public function get scaleY() : Number
        {
            return this.scaleY_;
        }// end function

        public function set scaleY(param1:Number) : void
        {
            this.scaleY_ = param1;
            return;
        }// end function

        override public function fromXML(param1:XML) : void
        {
            var _loc_2:* = null;
            this.id_ = param1.@id;
            rotation = 0;
            this.ext_ = param1.@ext;
            
            return;
        }// end function

        override public function toXML() : XML
        {
            var _loc_2:* = null;
            var _loc_3:* = null;
            var _loc_4:* = null;
            var _loc_5:* = null;
            var _loc_1:* = XMLUtil.createTag(this.tagName, "");
            _loc_1.@id = this.id_;
            if (this.type_ == LEGACY_TYPE)
            {
                _loc_1.@ext = this.ext_;
            }
            if (rotation != 0)
            {
                _loc_1.@rotation = rotation;
            }
            if (_loc_1.localName() == "frame")
            {
                _loc_2 = XMLUtil.createTag("cornerLT", "");
                _loc_2.@offsetX = this.offsetX_.toString();
                _loc_2.@offsetY = this.offsetY_.toString();
                _loc_2.@pw = width.toString();
                _loc_2.@ph = height.toString();
                _loc_3 = XMLUtil.createTag("cornerLB", "");
                _loc_3.@offsetX = this.offsetX_.toString();
                _loc_3.@offsetY = (-this.offsetY_).toString();
                _loc_3.@pw = width.toString();
                _loc_3.@ph = height.toString();
                _loc_4 = XMLUtil.createTag("cornerRB", "");
                _loc_4.@offsetX = (-this.offsetX_).toString();
                _loc_4.@offsetY = (-this.offsetY_).toString();
                _loc_4.@pw = width.toString();
                _loc_4.@ph = height.toString();
                _loc_5 = XMLUtil.createTag("cornerRT", "");
                _loc_5.@offsetX = (-this.offsetX_).toString();
                _loc_5.@offsetY = this.offsetY_.toString();
                _loc_5.@pw = width.toString();
                _loc_5.@ph = height.toString();
                _loc_1.appendChild(_loc_2);
                _loc_1.appendChild(_loc_3);
                _loc_1.appendChild(_loc_4);
                _loc_1.appendChild(_loc_5);
            }
            else
            {
                this.type_ = MASK_TYPE;
                _loc_1.@offsetX = this.offsetX_;
                _loc_1.@offsetY = this.offsetY_;
                _loc_1.@scaleX = this.scaleX_;
                _loc_1.@scaleY = this.scaleY_;
            }
            return _loc_1;
        }// end function

        override protected function createCloneObject() : DisplayObjectVO
        {
            return new FrameVO();
        }// end function

    }
}
