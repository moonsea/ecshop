package com.yzl.valueObject
{
    public class PageVO  extends PageGroupVO
    {
        private var isBlur_:Boolean = false;
        private var preview_:String;
        private var _templateW:Number;
        private var _templateH:Number;
        private var _previewIndex:int = -1;
        public var previewScaleX:Number = -1;
        public var previewScaleY:Number = -1;
        public var hasEditable:Boolean = false;

        public function PageVO()
        {
            return;
        }// end function

        public function get templateW() : Number
        {
            return this._templateW;
        }// end function

        public function set templateW(param1:Number) : void
        {
            this._templateW = param1;
            return;
        }// end function

        public function get templateH() : Number
        {
            return this._templateH;
        }// end function

        public function set templateH(param1:Number) : void
        {
            this._templateH = param1;
            return;
        }// end function

        public function get previewIndex() : int
        {
            return this._previewIndex;
        }// end function

        public function set previewIndex(param1:int) : void
        {
            this._previewIndex = param1;
            return;
        }// end function

        public function get isBlur() : Boolean
        {
            var _loc_3:* = null;
            var _loc_1:* = numChildren;
            var _loc_2:* = 0;
            while (_loc_2 < _loc_1)
            {
                
                _loc_3 = getChildAt(_loc_2);
                if (_loc_3 is PhotoVO)
                {
                    if ((_loc_3 as PhotoVO).isBlur == true)
                    {
                        return true;
                    }
                }
                _loc_2 = _loc_2 + 1;
            }
            return false;
        }// end function

        public function set isBlur(param1:Boolean) : void
        {
            this.isBlur_ = param1;
            return;
        }// end function

        override public function get tagName() : String
        {
            return VOName.PAGE;
        }// end function

        override protected function createCloneObject() : DisplayObjectVO
        {
            return new PageVO();
        }// end function

        public function get totalPhotoNum() : int
        {
            var _loc_4:* = null;
            var _loc_1:* = 0;
            var _loc_2:* = numChildren;
            var _loc_3:* = 0;
            while (_loc_3 < _loc_2)
            {
                
                _loc_4 = getChildAt(_loc_3);
                if (_loc_4 is PhotoVO)
                {
                    _loc_1++;
                }
                _loc_3 = _loc_3 + 1;
            }
            return _loc_1;
        }// end function

        public function get emptyPhotoNum() : int
        {
            var _loc_4:* = null;
            var _loc_1:* = 0;
            var _loc_2:* = numChildren;
            var _loc_3:* = 0;
            while (_loc_3 < _loc_2)
            {
                
                _loc_4 = getChildAt(_loc_3);
                if (_loc_4 is PhotoVO && (_loc_4 as PhotoVO).empty)
                {
                    _loc_1++;
                }
                _loc_3 = _loc_3 + 1;
            }
            return _loc_1;
        }// end function

        public function get badPhotoItemNum() : int
        {
            var _loc_4:* = null;
            var _loc_1:* = 0;
            var _loc_2:* = numChildren;
            var _loc_3:* = 0;
            while (_loc_3 < _loc_2)
            {
                
                _loc_4 = getChildAt(_loc_3);
                if (_loc_4 is PhotoItem && ((_loc_4 as PhotoItem) as PhotoVO).empty)
                {
                    _loc_1++;
                }
                _loc_3 = _loc_3 + 1;
            }
            return _loc_1;
        }// end function

        public function clearPhotos() : void
        {
            var _loc_3:* = null;
            var _loc_4:* = null;
            var _loc_1:* = numChildren;
            var _loc_2:* = 0;
            while (_loc_2 < _loc_1)
            {
                
                _loc_3 = getChildAt(_loc_2);
                if (_loc_3 is PhotoVO)
                {
                    _loc_4 = _loc_3 as PhotoVO;
                    if (_loc_4 != null)
                    {
                        _loc_4.photoId = PhotoVO.DROPHERE_PHOTO_ID;
                        _loc_4.fromTemplate = true;
                    }
                }
                _loc_2 = _loc_2 + 1;
            }
            return;
        }// end function

        public function clearTextVOs() : void
        {
            var _loc_1:* = [];
            var _loc_2:* = 0;
            while (_loc_2 < this.numChildren)
            {
                
                if (this.getChildAt(_loc_2) is TextVO)
                {
                    _loc_1.push(_loc_2);
                }
                _loc_2++;
            }
            _loc_1.sort(Array.NUMERIC);
            _loc_1.reverse();
            for each (_loc_2 in _loc_1)
            {
                
                this.removeChildAt(_loc_2);
            }
            return;
        }// end function

        public function clearDecoratorVOs() : void
        {
            var _loc_1:* = [];
            var _loc_2:* = 0;
            while (_loc_2 < this.numChildren)
            {
                
                if (this.getChildAt(_loc_2) is DecoratorVO)
                {
                    _loc_1.push(_loc_2);
                }
                _loc_2++;
            }
            _loc_1.sort(Array.NUMERIC);
            _loc_1.reverse();
            for each (_loc_2 in _loc_1)
            {
                
                this.removeChildAt(_loc_2);
            }
            return;
        }// end function

        public function removeVOs(param1:Array) : void
        {
            var _loc_2:* = [];
            var _loc_3:* = 0;
            while (_loc_3 < this.numChildren)
            {
                
                if (param1.indexOf(this.getChildAt(_loc_3)) != -1)
                {
                    _loc_2.push(_loc_3);
                }
                _loc_3++;
            }
            _loc_2.sort(Array.NUMERIC);
            _loc_2.reverse();
            for each (_loc_3 in _loc_2)
            {
                
                this.removeChildAt(_loc_3);
            }
            return;
        }// end function

        public function get preview() : String
        {
            return this.preview_;
        }// end function

        public function set preview(param1:String) : void
        {
            this.preview_ = param1;
            return;
        }// end function

        override protected function copyAttributeFromXML(param1:XML) : void
        {
            super.copyAttributeFromXML(param1);
            if (param1.@preview != undefined)
            {
                this.preview_ = param1.@preview;
            }
            else
            {
                this.preview_ = "";
            }
            if (param1.@width != undefined)
            {
                this._templateW = parseFloat(param1.@width);
            }
            if (param1.@height != undefined)
            {
                this._templateH = parseFloat(param1.@height);
            }
            return;
        }// end function

        override protected function copyAttributeToXML(param1:XML) : void
        {
			var obj:* = null;
            super.copyAttributeToXML(param1);
            if (this.preview_ != null)
            {
                param1.@preview = this.preview_;
            }
            else
            {
                param1.@preview = "";
            }
            if (this.templateW)
            {
                param1.@width = this.templateW;
            }
            if (this.templateH)
            {
                param1.@height = this.templateH;
            }
			
            return;
        }// end function

    }
}
