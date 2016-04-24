package com.yzl.valueObject.filters
{

    public class FilterVO extends Object
    {

        public function FilterVO()
        {
            return;
        }// end function

        public function toXML() : XML
        {
            return null;
        }// end function

        public function fromXML(param1:XML) : void
        {
            throw new Error("undefined from XML");
        }// end function

        public function cloneFilter() : FilterVO
        {
            throw new Error("undefined cloneFilter");
        }// end function

        public function get name() : String
        {
            throw new Error("filter name");
        }// end function

        public function toString() : String
        {
            return this.toXML().toXMLString();
        }// end function

    }
}
