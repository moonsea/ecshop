package com.yzl.valueObject.filters
{
    import com.yzl.util.XMLUtil;

    public class EffectFilterVO extends FilterVO
    {
        private var localName_:String;

        public function EffectFilterVO(param1:String)
        {
            this.localName_ = param1;
            return;
        }// end function

        override public function toXML() : XML
        {
            return XMLUtil.createTag(this.localName_);
        }// end function

        override public function fromXML(param1:XML) : void
        {
            return;
        }// end function

        override public function cloneFilter() : FilterVO
        {
            return new EffectFilterVO(this.localName_);
        }// end function

        override public function get name() : String
        {
            return this.localName_;
        }// end function

        override public function toString() : String
        {
            return this.toXML().toXMLString();
        }// end function

    }
}
