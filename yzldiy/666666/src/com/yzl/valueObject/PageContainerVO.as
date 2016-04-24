package com.yzl.valueObject
{
    import com.yzl.model.*;
    import com.yzl.util.*;
    
    import flash.system.*;

    public class PageContainerVO extends Object
    {
        private var _dpi:int;
        private var _version:String;
        private var _detail:String;
        private var _isAddLastPage:int = 0;
        private var _children:Array;
        private var _tag:String;
		public var t:String;

        public function PageContainerVO()
        {
            return;
        }

        public function get tag() : String
        {
            return this._tag;
        }

        public function set tag(param1:String) : void
        {
            this._tag = param1;
            return;
        }

        public function get isAddLastPage() : int
        {
            return this._isAddLastPage;
        }

        public function set isAddLastPage(param1:int) : void
        {
            this._isAddLastPage = param1;
            return;
        }

        public function get dpi() : int
        {
            return this._dpi;
        }

        public function set dpi(param1:int) : void
        {
            this._dpi = param1;
            return;
        }

        public function get numPages() : int
        {
            if (this._children == null)
            {
                return 0;
            }
            return this._children.length;
        }

        public function get numDropherePictures() : int
        {
            var _loc_3:* = null;
            //var _loc_4:* = NaN;
            var _loc_5:* = null;
            var _loc_1:* = 0;
            var _loc_2:* = 0;
            while (_loc_2 < this._children.length)
            {
                
                if (this._children[_loc_2] is PageVO)
                {
                    _loc_3 = PageVO(this._children[_loc_2]);
					
                    for(var i:int=0;i<_loc_3.numChildren;i++)
                    {
                        
                        _loc_5 = _loc_3.getChildAt(i);
                        if (_loc_5 is PhotoVO)
                        {
                            if (PhotoVO(_loc_5).photoId == "-1")
                            {
                                _loc_1++;
                            }
                        }
                    }
                }
                _loc_2++;
            }
            return _loc_1;
        }

        public function get numPictures() : int
        {
            var _loc_2:* = null;
            var _loc_1:* = 0;
            for each (_loc_2 in this._children)
            {
                
                _loc_1 = _loc_1 + _loc_2.totalPhotoNum;
            }
            return _loc_1;
        }

        public function get children() : Array
        {
            return this._children;
        }

        public function get version() : String
        {
            return this._version;
        }

        public function set version(param1:String) : void
        {
            this._version = param1;
            return;
        }

        public function get detail() : String
        {
            return this._detail;
        }

        public function set detail(param1:String) : void
        {
            this._detail = param1;
            return;
        }

        public function getChildAt(param1:int) : PageVO
        {
            if (this._children == null || param1 >= this._children.length)
            {
                return null;
            }
            return this._children[param1];
        }

        public function indexOf(param1:PageVO) : int
        {
            if (this._children == null)
            {
                return -1;
            }
            return this._children.indexOf(param1);
        }

        public function addChild(param1:PageVO) : void
        {
            if (this._children == null)
            {
                this._children = [param1];
            }
            else
            {
                this._children.push(param1);
            }
            return;
        }

        public function addChildAt(param1:PageVO, param2:int) : void
        {
            if (this._children == null)
            {
                this._children = [param1];
            }
            else
            {
                this._children.splice(param2, 0, param1);
            }
            return;
        }

        public function move(param1:int, param2:int, param3:int) : void
        {
            var _loc_4:* = this._children.splice(param1, param3);
            _loc_4.reverse();
            var _loc_5:* = 0;
            while (_loc_5 < _loc_4.length)
            {
                
                this._children.splice(param2 - param1 - param3 + 1, 0, _loc_4[_loc_5]);
                _loc_5++;
            }
            return;
        }

        public function removeChildAt(param1:int) : PageVO
        {
            var _loc_2:* = null;
            if (this._children == null)
            {
                return null;
            }
            _loc_2 = this._children.splice(param1, 1);
            if (_loc_2.length >= 1)
            {
                return _loc_2[0];
            }
            return null;
        }

        public function removeLastChild() : void
        {
            if (this._children == null)
            {
                return;
            }
            this._children.pop();
            return;
        }

        public function removeAllChild() : void
        {
            this._children = [];
            return;
        }

        public function fromXML(param1:XML) : void
        {
            var _loc_2:* = null;
            var _loc_3:* = null;
            this._dpi = 0;
            if (param1.@printDpi != undefined)
            {
                this._dpi = parseInt(param1.@printDpi);
            }
            this._version = "1.0";
            if (param1.@version != undefined)
            {
                this._version = param1.@version;
            }
            if (param1.@isLastAdd != undefined)
            {
                this.isAddLastPage = int(param1.@isLastAdd);
            }
            this._children = [];
            for each (_loc_2 in param1.children())
            {
                if (_loc_2.name().localName == "page")
                {
                    _loc_3 = new PageVO();
                    _loc_3.fromXML(_loc_2);
                    this._children.push(_loc_3);
                    continue;
                }
                if (_loc_2.name().localName == "detail")
                {
                    this.detail = _loc_2.toString();
                    continue;
                }
                if (_loc_2.name().localName == "tag")
                {
                    this.tag = _loc_2.toString();
                }
            }
            return;
        }

        public function toXML() : XML
        {
            var _loc_2:* = null;
            var _loc_1:* = new XML("<pages />");
            _loc_1.@printDpi = this._dpi;
            _loc_1.@version = this._version;
            _loc_1.@client = this.getClientInfo();
            if (this.isAddLastPage != 0)
            {
                _loc_1.@isLastAdd = this._isAddLastPage;
            }
            for each (_loc_2 in this._children)
            {
                
                _loc_1.appendChild(_loc_2.toXML());
            }
            if (this.detail != null)
            {
                _loc_1.appendChild(XMLUtil.createTag("detail", this.detail));
            }
            if (this.tag != null)
            {
                _loc_1.appendChild(XMLUtil.createTag("tag", this.tag));
            }
            if (DataModel.getInstance().productVO != null && DataModel.getInstance().productVO.sharepreview != null)
            {
                _loc_1.appendChild(XMLUtil.createTag("sharePreview", DataModel.getInstance().productVO.sharepreview));
            }
            return _loc_1;
        }

        public function toString() : String
        {
            return this.toXML().toXMLString();
        }

        private function getClientInfo() : String
        {
            var _loc_1:* = Capabilities.os + ";" + Capabilities.language + ";" + Capabilities.version + ";" + Capabilities.manufacturer + ";" + Capabilities.playerType;
            if (Capabilities.supports64BitProcesses)
            {
                _loc_1 = _loc_1 + ";64bit";
            }
            return _loc_1;
        }

    }
}
