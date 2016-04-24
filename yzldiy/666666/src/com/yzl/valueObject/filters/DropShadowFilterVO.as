package com.yzl.valueObject.filters
{
    import com.yzl.valueObject.filters.FilterNames;
    import com.yzl.util.*;

    public class DropShadowFilterVO extends FilterVO
    {
        private var color_:uint = 0x333333;
        private var distance_:int = 4;
        private var angle_:int = 45;

        public function DropShadowFilterVO()
        {
            return;
        }// end function

        public function get angle() : int
        {
            return this.angle_;
        }// end function

        public function set angle(param1:int) : void
        {
            this.angle_ = param1;
            return;
        }// end function

        public function get distance() : int
        {
            return this.distance_;
        }// end function

        public function set distance(param1:int) : void
        {
            this.distance_ = param1;
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

        override public function toXML() : XML
        {
            var _loc_1:* = XMLUtil.createTag(FilterNames.DROPSHADOW);
            _loc_1.@color = "0x" + this.color_.toString(16);
            _loc_1.@angle = this.angle_;
            _loc_1.@distance = this.distance_;
            return _loc_1;
        }// end function

        override public function fromXML(param1:XML) : void
        {
            this.color_ = parseInt(param1.@color);
            this.angle_ = parseInt(param1.@angle);
            this.distance_ = parseInt(param1.@distance);
            return;
        }// end function

        override public function cloneFilter() : FilterVO
        {
            var _loc_1:* = new DropShadowFilterVO();
            _loc_1.fromXML(this.toXML());
            return _loc_1;
        }// end function

        override public function get name() : String
        {
            return FilterNames.DROPSHADOW;
        }// end function

    }
}
