package com.yzl.valueObject {
	
    import com.roguedevelopment.objecthandles.IMoveable;
    import com.roguedevelopment.objecthandles.IResizeable;
    import com.yzl.constant.URLS;
    import com.yzl.model.DataModel;
    import com.yzl.util.ObjectIdUtil;
    import com.yzl.util.XMLUtil;
    
    import flash.display.Bitmap;
    import flash.geom.*;

    public class PhotoVO extends DisplayObjectVO implements IResizeable,IMoveable {
		
        private var bw_:Number;
        private var bh_:Number;
        private var photoId_:String;
        private var thumbnailURL_:String;
        private var url_:String;
        private var resourceURL_:String;
        private var borderStyle_:String;
        private var _borderWeight:int;
        private var borderColor_:uint;
        public var crc32:uint = 0;
        private var cropRectangle_:Rectangle;
        private var _fromTemplate:Boolean;
        private var frameVO_:FrameVO;
        private var visualCropMode_:Boolean;
        private var _isBlur_:Boolean = false;
        private var _frameType:String;
		private var _photoItem:PhotoItem;
		private var _usedNum:int = 0;
        public static const DROPHERE_PHOTO_ID:String = "-1";
		
		private var _info:String;
		private var _pageCount:int = 0;
		

        public function PhotoVO() {
            thumbnailURL_ = "";
            url_ = "";
            resourceURL_ = "";
            bh_ = 0;
            bw_ = 0;
            photoId_ = DROPHERE_PHOTO_ID;
            cropRectangle_ = new Rectangle(0, 0, 1, 1);
			_photoItem = new PhotoItem();
        }

        public function get frameVO() : FrameVO{
            return frameVO_;
        }

        public function set frameVO(value:FrameVO) : void{
            frameVO_ = value;
            
        }
        
        public function get isHorizontal() : Boolean{
            return bw > bh ? (true) : (false);
        }

        public function get isBlur() : Boolean
        {
            var w:Number = 0;
            var h:Number = 0;
			
            if (empty){
                _isBlur_ = false;
                return _isBlur_;
            }
			
            w = bw;
            h = width;
			
            if (w < h * 0.667){
                _isBlur_ = true;
                return _isBlur_;
            }
            w = bh;
            h = height;
			
            if (w < h * 0.667){
                _isBlur_ = true;
                return _isBlur_;
            }
            _isBlur_ = false;
            return _isBlur_;
        }

        private function determinBlur() : String{
            if (!isBlur) return "noblur";
            return "blur";
        }
		
        public function get contentTraits() : String
        {
            var p2:* = null;
            var _loc_1:String = photoId;
            if (frameVO_ != null)
            {
                _loc_1 = _loc_1 + (":" + frameVO_.toString());
            }
            else
            {
                _loc_1 = _loc_1 + ":";
            }
           
            if (cropRectangle_ != null)
            {
                _loc_1 = _loc_1 + (":" + cropRectangle_.toString());
            }
            else
            {
                _loc_1 = _loc_1 + ":";
            }
            var _loc_2:* = "";
            
            _loc_1 = _loc_1 + (":" + _loc_2);
            _loc_1 = _loc_1 + (":" + determinBlur());
            if (visualCropMode)
            {
                _loc_1 = _loc_1 + ":true";
            }
            else
            {
                _loc_1 = _loc_1 + ":false";
            }
            return _loc_1;
        }

        override public function get tagName() : String
        {
            return VOName.PHOTO;
        }

        override public function get thumbnailURL() : String
        {
            return thumbnailURL_;
        }

        override public function get url() : String
        {
            return url_;
        }

        public function get resourceURL() : String
        {
            return resourceURL_;
        }

        public function get bw() : Number
        {
            return bw_;
        }

        public function get bh() : Number
        {
            return bh_;
        }

        public function set bw(param1:Number) : void
        {
            bw_ = param1;
            
        }

        public function set bh(param1:Number) : void
        {
            bh_ = param1;
            
        }

        public function get photoId() : String
        {
            return photoId_;
        }

        public function set photoId(param1:String) : void
        {
            photoId_ = param1;
            
        }

        public function get borderStyle() : String
        {
            if (borderStyle_ == null)
            {
                return "none";
            }
            return borderStyle_;
        }

        public function set borderStyle(param1:String) : void
        {
            borderStyle_ = param1;
            
        }

        public function get borderWeight() : int
        {
            return _borderWeight;
        }

        public function set borderWeight(param1:int) : void
        {
            _borderWeight = param1;
            
        }

        public function get borderColor() : uint
        {
            return borderColor_;
        }

        public function set borderColor(param1:uint) : void
        {
            borderColor_ = param1;
            
        }

        public function get empty() : Boolean
        {
            return photoId_ == DROPHERE_PHOTO_ID;
        }

        public function set thumbnailURL(param1:String) : void
        {
            thumbnailURL_ = param1;
            
        }

        public function set url(param1:String) : void
        {
            url_ = param1;
            
        }

        public function set resourceURL(param1:String) : void
        {
            resourceURL_ = param1;
            
        }

        public function get cropRectangle() : Rectangle
        {
            return cropRectangle_.clone();
        }

        public function set cropRectangle(param1:Rectangle) : void
        {
            cropRectangle_ = param1.clone();
            
        }

		override public function cloneVO() : DisplayObjectVO
		{
			var _loc_1:* = createCloneObject();
			_loc_1.fromXML(toXML());
			_loc_1._photoItem = _photoItem;
			_loc_1.timeId = ObjectIdUtil.createNextId();
			return _loc_1;
		}
        override protected function createCloneObject() : DisplayObjectVO
        {
            return new PhotoVO();
        }

        private function convertToLegacyRectangle(param1:Rectangle) : Rectangle
        {
            if (param1.width == -1 || param1.height == -1)
            {
                return new Rectangle(0, 0, -1, -1);
            }
            return new Rectangle(param1.x * width, param1.y * height, param1.width * width, param1.height * height);
        }

        private function convertFromLegacyRectangle(param1:Rectangle) : Rectangle
        {
            if (width == 0 || height == 0 || param1.width == -1 || param1.height == -1)
            {
                return new Rectangle(0, 0, 1, 1);
            }
            return new Rectangle(param1.x / width, param1.y / height, param1.width / width, param1.height / height);
        }

        override protected function copyAttributeToXML(param1:XML) : void
        {
            super.copyAttributeToXML(param1);
            if (borderStyle_ != null && borderStyle_ != "none" && frameVO_ == null)
            {
                param1.@border = "1";
                param1.@borderthickness = _borderWeight;
                param1.@bordercolor = "0x" + borderColor_.toString(16);
            }
            if (photoId_ == DROPHERE_PHOTO_ID)
            {
                param1.@color = -1;
            }
            param1.@crc32 = crc32 + "";
            if (_frameType != null)
            {
                param1.@frametype = _frameType;
            }
            param1.appendChild(XMLUtil.createTag("photoid", photoId_));
            param1.appendChild(XMLUtil.createTag("bh", bh_.toString()));
            param1.appendChild(XMLUtil.createTag("bw", bw_.toString()));
            param1.appendChild(XMLUtil.createTag("s", thumbnailURL_));
            param1.appendChild(XMLUtil.createTag("m", url_));
            if (photoId_ == DROPHERE_PHOTO_ID)
            {
                if (DataModel.getInstance().isDesign)
                {
                    param1.appendChild(XMLUtil.createTag("b", resourceURL_));
                }
                else
                {
                    param1.appendChild(XMLUtil.createTag("b", URLS.DROPHERE));
                }
            }
            else
            {
                param1.appendChild(XMLUtil.createTag("b", resourceURL_));
            }
            var _loc_2:* = cropRectangle_;
            var p2:* = [_loc_2.x, _loc_2.y, _loc_2.width, _loc_2.height].join(";");
            param1.appendChild(XMLUtil.createTag("crop", p2));
            if (frameVO_ != null)
            {
                param1.appendChild(frameVO_.toXML());
            }
            
        }

        override protected function copyAttributeFromXML(param1:XML) : void
        {
            var _loc_2:* = null;
            var p2:* = null;
            super.copyAttributeFromXML(param1);
            if (param1.@border != undefined)
            {
                if (param1.@border == "1")
                {
                    borderStyle_ = "solid";
                }
                else
                {
                    borderStyle_ = "none";
                }
            }
            else
            {
                borderStyle_ = "none";
            }
            if (param1.@crc32 != undefined)
            {
                crc32 = uint(param1.@crc32);
            }
            if (param1.@borderthickness != undefined)
            {
                _borderWeight = parseInt(param1.@borderthickness);
            }
            else
            {
                _borderWeight = 0;
            }
            if (param1.@frametype != undefined)
            {
                _frameType = param1.@frametype;
            }
            if (param1.@bordercolor != undefined)
            {
                borderColor_ = parseInt(param1.@bordercolor);
            }
            else
            {
                borderColor_ = 0;
            }
            for each (_loc_2 in param1.children())
            {
                
                switch(_loc_2.name().toString())
                {
                    case "photoid":
                    {
                        photoId_ = _loc_2.toString();
                        if (photoId_ == "-999")
                        {
                            photoId_ = DROPHERE_PHOTO_ID;
                        }
                        break;
                    }
                    case "bw":
                    {
                        bw_ = parseFloat(_loc_2.toString());
                        break;
                    }
                    case "bh":
                    {
                        bh_ = parseFloat(_loc_2.toString());
                        break;
                    }
                    case "s":
                    {
                        thumbnailURL_ = _loc_2.toString();
                        break;
                    }
                    case "m":
                    {
                        url_ = _loc_2.toString();
						//trace('照片地址:' + url)
                        break;
                    }
                    case "b":
                    {
                        resourceURL_ = _loc_2.toString();
                        break;
                    }
                    case "crop":
                    {
                        p2 = _loc_2.toString().split(";");
                        cropRectangle_ = new Rectangle();
                        cropRectangle_.x = parseFloat(p2[0]);
                        cropRectangle_.y = parseFloat(p2[1]);
                        cropRectangle_.width = parseFloat(p2[2]);
                        cropRectangle_.height = parseFloat(p2[3]);
                        //cropRectangle_ = convertFromLegacyRectangle(cropRectangle_);
                        break;
                    }
                    case "frame":
                    {
                        frameVO_ = new FrameVO();
                        frameVO_.fromXML(_loc_2);
                        break;
                    }
                   
                    case "filters":
                    {
                        break;
                    }
                    default:
                    {
                        
                        break;
                        break;
                    }
                }
            }
            
        }
		
		

        public function get visualCropMode() : Boolean{
            return visualCropMode_;
        }

        public function set visualCropMode(value:Boolean) : void{
            visualCropMode_ = value;
            
        }

        public function restoreDropHere() : void{
            photoId_ = PhotoVO.DROPHERE_PHOTO_ID;
            
        }

        public function get frameType() : String{
            return _frameType;
        }

        public function set frameType(value:String) : void{
            _frameType = value;
            
        }

        override public function getBound() : Rectangle{
            var matrix:Matrix = new Matrix();
            matrix.rotate(rotation * Math.PI / 180);
            var p1:Point = matrix.transformPoint(new Point(width * cropRectangle.x, height * cropRectangle.y));
            var p2:Point = matrix.transformPoint(new Point(width * cropRectangle.right, height * cropRectangle.y));
            var p3:Point = matrix.transformPoint(new Point(width * cropRectangle.x, height * cropRectangle.bottom));
            var p4:Point = matrix.transformPoint(new Point(width * cropRectangle.right, height * cropRectangle.bottom));
            p1.x = p1.x + x;
            p1.y = p1.y + y;
            p2.x = p2.x + x;
            p2.y = p2.y + y;
            p3.x = p3.x + x;
            p3.y = p3.y + y;
            p4.x = p4.x + x;
            p4.y = p4.y + y;
            var rect:Rectangle = new Rectangle();
            rect.x = Math.min(p1.x, p2.x, p3.x, p4.x);
            rect.right = Math.max(p1.x, p2.x, p3.x, p4.x);
            rect.y = Math.min(p1.y, p2.y, p3.y, p4.y);
            rect.bottom = Math.max(p1.y, p2.y, p3.y, p4.y);
            return rect;
        }
		
		[Bindable]
		public function get photoItem():PhotoItem{
			return _photoItem;
		}

		public function set photoItem(value:PhotoItem):void{
			_photoItem = value;
		}

		public function get usedNum():int{
			return _usedNum;
		}

		public function set usedNum(value:int):void{
			_usedNum = value;
		}
		
		[Bindable]
		public function get info():String{
			return _info;
		}
		
		public function set info(value:String):void{
			_info = value;
		}
		
		[Bindable]
		public function get pageCount():int{
			return _pageCount;
		}
		
		public function set pageCount(value:int):void{
			_pageCount = value;
		}
		
		

    }
}
