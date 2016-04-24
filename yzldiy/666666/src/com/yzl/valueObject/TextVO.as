package com.yzl.valueObject
{
    import com.yzl.constant.TEXT;
    import com.yzl.util.XMLUtil;
    
    import flash.text.*;

    public class TextVO extends DisplayObjectVO
    {
        private var content_:String;
        private var align_:String;
        private var bold_:Boolean;
        private var italic_:Boolean;
        private var layout_:int;
        private var fontFamily_:String;
        private var fontSize_:int;
        private var color_:uint = 0x000000;
        private var originalWidth_:Number;
        private var originalHeight_:Number;
        public var fontnameThumbnail:String;
        public static const DEFAULT_FONT_SIZE:int = 14;
		public static const SizeList : Array = [12,14,16,18,20,22,24,26,28,30,32,34,36,38,40,42,44,46,48,50,52,54,56,58,60,62,64,66,68,70,72];

        public function TextVO()
        {
            this.content_ = TEXT.DEFAULT_CONTENT;
            this.align_ = TextFormatAlign.LEFT;
            this.layout_ = 0;
            this.fontFamily_ = "fs.ttf";
            this.fontSize_ = DEFAULT_FONT_SIZE;
            
        }

        public function get originalHeight() : Number
        {
            return this.originalHeight_;
        }

        public function set originalHeight(param1:Number) : void
        {
            this.originalHeight_ = param1;
            
        }

        public function get originalWidth() : Number
        {
            return this.originalWidth_;
        }

        public function set originalWidth(param1:Number) : void
        {
            this.originalWidth_ = param1;
            
        }

        override public function get tagName() : String
        {
            return VOName.TEXT;
        }

       

        public function get content() : String
        {
            return this.content_;
        }

        public function set content(param1:String) : void
        {
            this.content_ = param1;
            
        }

        public function get align() : String
        {
            return this.align_;
        }

        public function set align(param1:String) : void
        {
            this.align_ = param1;
            
        }

        public function get bold() : Boolean
        {
            return this.bold_;
        }

        public function set bold(param1:Boolean) : void
        {
            this.bold_ = param1;
            
        }

        public function get italic() : Boolean
        {
            return this.italic_;
        }

        public function set italic(param1:Boolean) : void
        {
            this.italic_ = param1;
            
        }

        public function get fontFamily() : String
        {
            return this.fontFamily_;
        }

        public function set fontFamily(param1:String) : void
        {
            this.fontFamily_ = param1;
            
        }

        public function get fontSize() : int
        {
            return this.fontSize_;
        }

        public function set fontSize(param1:int) : void
        {
            this.fontSize_ = param1;
            
        }

        public function get layout() : int
        {
            return this.layout_;
        }

        public function set layout(param1:int) : void
        {
            this.layout_ = param1;
            
        }

        public function get color() : uint
        {
            return this.color_;
        }

        public function set color(param1:uint) : void
        {
            this.color_ = param1;
            
        }

        override public function get thumbnailURL() : String
        {
            return this.fontnameThumbnail;
        }

        override public function get url() : String
        {
            return this.fontnameThumbnail;
        }

        override protected function createCloneObject() : DisplayObjectVO
        {
            return new TextVO();
        }

        override protected function copyAttributeFromXML(param1:XML) : void
        {
			
            var _loc_2:* = null;
            super.copyAttributeFromXML(param1);
            if (param1.@layout != undefined)
            {
                this.layout_ = parseInt(param1.@layout);
            }
            else
            {
                this.layout_ = 0;
            }
            if (param1.@bold != undefined)
            {
                this.bold_ = param1.@bold.toString() == "1";
            }
            else
            {
                this.bold_ = false;
            }
            if (param1.@italic != undefined)
            {
                this.italic_ = param1.@bold.toString() == "1";
            }
            else
            {
                this.italic_ = false;
            }
            if (param1.@color != undefined)
            {
                this.color_ = parseInt(param1.@color);
            }
            else
            {
                this.color_ = 0;
            }
            if (param1.@originalwidth != undefined)
            {
                this.originalWidth_ = Number(param1.@originalwidth);
            }
            else
            {
                this.originalWidth_ = 0;
            }
            if (param1.@originalheight != undefined)
            {
                this.originalHeight_ = Number(param1.@originalheight);
            }
            else
            {
                this.originalHeight_ = 0;
            }
            if (param1.@align != undefined)
            {
                switch(param1.@align.toString())
                {
                    case "0":
                    {
                        this.align_ = TextFormatAlign.LEFT;
                        break;
                    }
                    case "1":
                    {
                        this.align_ = TextFormatAlign.CENTER;
                        break;
                    }
                    case "0":
                    {
                        this.align_ = TextFormatAlign.RIGHT;
                        break;
                    }
                    default:
                    {
                        this.align_ = param1.@align;
                        break;
                    }
                }
            }
            for each (_loc_2 in param1.children())
            {
                
                switch(_loc_2.name().toString())
                {
                    case "font":
                    {
                        this.fontFamily_ = _loc_2.toString();
                        break;
                    }
                    case "size":
                    {
                        this.fontSize_ = parseInt(_loc_2.toString());
                        break;
                    }
                    case "content":
                    {
                        this.content_ = _loc_2.toString();
                        break;
                    }
                    default:
                    {
                        break;
                    }
                }
            }
            
        }

        override protected function copyAttributeToXML(param1:XML) : void
        {
            super.copyAttributeToXML(param1);
            if (this.layout_ != 0)
            {
                param1.@layout = this.layout_.toString();
            }
            if (this.bold_)
            {
                param1.@bold = "1";
            }
            if (this.italic_)
            {
                param1.@italic = "1";
            }
            if (this.content == "")
            {
                this.content = TEXT.DEFAULT_CONTENT;
            }
            if (this.content == TEXT.DEFAULT_CONTENT)
            {
                param1.@visible = "false";
            }
            
            if (this.originalWidth_ > 0)
            {
                param1.@originalwidth = this.originalWidth_.toString();
            }
            if (this.originalHeight_ > 0)
            {
                param1.@originalheight = this.originalHeight_.toString();
            }
            param1.@align = this.align_;
            param1.@color = "0x" + this.color_.toString(16);
			param1.appendChild(XMLUtil.createTag("font", this.fontFamily_));
			param1.appendChild(XMLUtil.createTag("size", this.fontSize_.toString()));
			if (this.content_ == "")
			{
				param1.appendChild(XMLUtil.createCDATATag("content", TEXT.DEFAULT_CONTENT));
			}
			else
			{
				param1.appendChild(XMLUtil.createCDATATag("content", this.content_));
			}
           
            
        }

    }
}
