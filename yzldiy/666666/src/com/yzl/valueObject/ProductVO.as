package com.yzl.valueObject
{
    import com.yzl.model.*;
    import com.yzl.util.*;

    public class ProductVO extends Object
    {
        private var id_:String = "";
        private var cartId_:String = "";
        private var count_:int = 1;
        private var type_:int;
        private var name_:String = "";
        private var param_:int;
        private var series_:int;
        private var templateId_:String;
        private var mbDes_:String;
        private var mbCode_:String;
        private var pageCount_:int;
        private var preview_:String;
        private var sharepreview_:String = null;
        private var _info:PageContainerVO;
        private var _extraInfo_:String;
        private var _retailprice:String;

        public function ProductVO()
        {
            return;
        }

        public function get retailprice() : String
        {
            return this._retailprice;
        }

        public function set retailprice(param1:String) : void
        {
            this._retailprice = param1;
            return;
        }

        public function get extraInfo_() : String
        {
            return this._extraInfo_;
        }

        public function set extraInfo_(param1:String) : void
        {
            this._extraInfo_ = param1;
            return;
        }

        public function get id() : String
        {
            return this.id_;
        }

        public function set id(param1:String) : void
        {
            this.id_ = param1;
            return;
        }

        public function get cartId() : String
        {
            return this.cartId_;
        }

        public function set cartId(param1:String) : void
        {
            this.cartId_ = param1;
            return;
        }

        public function get count() : int
        {
            return this.count_;
        }

        public function set count(param1:int) : void
        {
            this.count_ = param1;
            return;
        }

        public function get type() : int
        {
            return this.type_;
        }

        public function set type(param1:int) : void
        {
            this.type_ = param1;
            return;
        }

        public function get name() : String
        {
            return this.name_;
        }

        public function set name(param1:String) : void
        {
            this.name_ = param1;
            return;
        }

        public function get param() : int
        {
            return this.param_;
        }

        public function set param(param1:int) : void
        {
            this.param_ = param1;
            return;
        }

        public function get series() : int
        {
            return this.series_;
        }

        public function set series(param1:int) : void
        {
            this.series_ = param1;
            return;
        }

        public function get templateId() : String
        {
            return this.templateId_;
        }

        public function set templateId(param1:String) : void
        {
            this.templateId_ = param1;
            return;
        }

        public function get mbDes() : String
        {
            return this.mbDes_;
        }

        public function set mbDes(param1:String) : void
        {
            this.mbDes_ = param1;
            return;
        }

        public function get mbCode() : String
        {
            return this.mbCode_;
        }

        public function set mbCode(param1:String) : void
        {
            this.mbCode_ = param1;
            return;
        }

        public function get pageCount() : int
        {
            return this.pageCount_;
        }

        public function set pageCount(param1:int) : void
        {
            this.pageCount_ = param1;
            return;
        }

        public function get preview() : String
        {
            return this.preview_;
        }

        public function set preview(param1:String) : void
        {
            this.preview_ = param1;
            return;
        }

        public function get sharepreview() : String
        {
            return this.sharepreview_;
        }

        public function set sharepreview(param1:String) : void
        {
            this.sharepreview_ = param1;
            return;
        }

        

        public function fromXML(param1:XML) : void
        {
            var _loc_2:* = null;
            this.id_ = "";
            if (param1.id)
            {
                this.id_ = param1.id;
            }
            if (param1.cartid)
            {
                this.cartId_ = param1.cartid;
            }
            if (param1.count)
            {
                this.count_ = param1.count;
            }
            if (param1.type)
            {
                this.type_ = param1.type;
            }
            
            if (param1.productname)
            {
                this.name_ = param1.productname;
            }
            if (param1.param)
            {
                this.param_ = param1.param;
            }
            if (param1.series)
            {
                this.series_ = param1.series;
            }
            if (param1.retailprice)
            {
                this._retailprice = param1.retailprice;
            }
            if (param1.templateId)
            {
                this.templateId_ = param1.templateId;
            }
            if (param1.mbcode)
            {
                this.mbCode_ = param1.mbcode;
            }
            if (param1.mbdes)
            {
                this.mbDes_ = param1.mbdes;
            }
            
            if (param1.pagecount)
            {
                this.pageCount_ = param1.pagecount;
            }
            if (param1.preview)
            {
                this.preview_ = param1.preview;
            }
            if (param1.extinfo)
            {
                this.extraInfo_ = param1.extinfo;
            }
            return;
        }

        public function toXML() : XML
        {
            var _loc_1:* = new XML("<product />");
            _loc_1.appendChild(XMLUtil.createTag("id", this.id_));
            _loc_1.appendChild(XMLUtil.createTag("cartid", this.cartId_));
            _loc_1.appendChild(XMLUtil.createTag("count", this.count_.toString()));
            _loc_1.appendChild(XMLUtil.createTag("type", this.type_.toString()));
            var _loc_2:* = XMLUtil.createTag("info", "");
           // _loc_2.appendChild(this.info_.toXML());
            _loc_1.appendChild(_loc_2);
            _loc_1.appendChild(XMLUtil.createTag("productname", this.name_));
            _loc_1.appendChild(XMLUtil.createTag("param", this.param_.toString()));
           
            _loc_1.appendChild(XMLUtil.createTag("series", this.series_.toString()));
            _loc_1.appendChild(XMLUtil.createTag("templateId", this.templateId_));
            _loc_1.appendChild(XMLUtil.createTag("retailprice", this._retailprice));
            _loc_1.appendChild(XMLUtil.createTag("pagecount", this.pageCount_.toString()));
            _loc_1.appendChild(XMLUtil.createTag("preview", this.preview_));
            if (this.mbCode_ != null && this.mbCode_ != "")
            {
                _loc_1.appendChild(XMLUtil.createTag("mbcode", this.mbCode_));
            }
            if (this.mbDes_ != null && this.mbDes_ != "")
            {
                _loc_1.appendChild(XMLUtil.createTag("mbdes", this.mbDes_));
            }
           

            if (this.mbDes_ != null && this.mbDes_ != "")
            {
                _loc_1.appendChild(XMLUtil.createTag("mbdes", this.mbDes_));
            }
            if (this.extraInfo_ != null && this.extraInfo_ != "")
            {
                _loc_1.appendChild(XMLUtil.createTag("extinfo", this.extraInfo_));
            }
            return _loc_1;
        }

        public function toString() : String
        {
            return this.toXML().toXMLString();
        }

		public function get info():PageContainerVO
		{
			return _info;
		}

		public function set info(value:PageContainerVO):void
		{
			_info = value;
		}


    }
}
