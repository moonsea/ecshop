package com.netease.model.vo.xml
{
    import com.netease.util.*;

    public class TextFrameVO extends DisplayObjectVO
    {
        private var id_:String;
        private var ext_:String;
        private var type_:String;
        private var offsetX_:Number;
        private var offsetY_:Number;
        private var textVO_:TextVO;
        private var color_:uint;
        private var backgroundAlpha_:Number;

        public function TextFrameVO()
        {
            this.textVO_ = new TextVO();
            this.color_ = 3355443;
            this.backgroundAlpha_ = 0.5;
            return;
        }// end function

        public function get color() : uint
        {
            return this.color_;
        }// end function

        public function set color(param1:uint) : void
        {
            this.color_ = param1;
            return;
        }// end function

        public function get backgroundAlpha() : Number
        {
            return this.backgroundAlpha_;
        }// end function

        public function set backgroundAlpha(param1:Number) : void
        {
            this.backgroundAlpha_ = param1;
            return;
        }// end function

        public function set textVO(param1:TextVO) : void
        {
            this.textVO_ = param1;
            return;
        }// end function

        public function get textVO() : TextVO
        {
            return this.textVO_;
        }// end function

        public function get offsetY() : Number
        {
            return this.offsetY_;
        }// end function

        public function set offsetY(param1:Number) : void
        {
            this.offsetY_ = param1;
            return;
        }// end function

        public function get offsetX() : Number
        {
            return this.offsetX_;
        }// end function

        public function set offsetX(param1:Number) : void
        {
            this.offsetX_ = param1;
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
            return VOName.FRAME3;
        }// end function

        override public function get url() : String
        {
            return "";
        }// end function

        override public function get thumbnailURL() : String
        {
            return "";
        }// end function

        public function get maskURL() : String
        {
            return "";
        }// end function

        override public function fromXML(param1:XML) : void
        {
            this.id_ = param1.@id;
            width = parseFloat(param1.@width);
            height = parseFloat(param1.@height);
            if (param1.@rotation != undefined)
            {
                rotation = parseInt(param1.@rotation);
            }
            else
            {
                rotation = 0;
            }
            this.ext_ = param1.@ext;
            this.offsetX_ = parseFloat(param1.@offsetX);
            this.offsetY_ = parseFloat(param1.@offsetY);
            this.backgroundAlpha = parseFloat(param1.@bgalpha);
            if (param1.@color != undefined)
            {
                this.color_ = parseInt(param1.@color);
            }
            else
            {
                this.color_ = 0;
            }
            var _loc_2:* = param1.children()[0];
            this.textVO_ = new TextVO();
            this.textVO_.fromXML(_loc_2);
            return;
        }// end function

        override public function toXML() : XML
        {
            var _loc_1:* = XMLUtil.createTag(this.tagName, "");
            _loc_1.@id = this.id_;
            _loc_1.@ext = this.ext_;
            if (rotation != 0)
            {
                _loc_1.@rotation = rotation;
            }
            _loc_1.@color = "0x" + this.color_.toString(16);
            _loc_1.@bgalpha = this.backgroundAlpha_.toFixed(1);
            _loc_1.@width = width.toFixed(1).toString();
            _loc_1.@height = height.toFixed(1).toString();
            _loc_1.@offsetX = this.offsetX.toFixed(1).toString();
            _loc_1.@offsetY = this.offsetY.toFixed(1).toString();
            _loc_1.appendChild(this.textVO_.toXML());
            return _loc_1;
        }// end function

        override protected function createCloneObject() : DisplayObjectVO
        {
            return new FrameVO();
        }// end function

        public function copyTextFrameVO(param1:TextFrameVO) : void
        {
            this.backgroundAlpha = param1.backgroundAlpha;
            this.color = param1.color;
            width = param1.width;
            height = param1.height;
            this.textVO.x = param1.textVO.x;
            this.textVO.y = param1.textVO.y;
            this.textVO.color = param1.textVO.color;
            this.textVO.align = param1.textVO.align;
            this.textVO.fontSize = param1.textVO.fontSize;
            this.textVO.fontFamily = param1.textVO.fontFamily;
            this.textVO.fixed = param1.textVO.fixed;
            this.textVO.content = param1.textVO.content;
            this.textVO.rotation = 0;
            return;
        }// end function

    }
}
