package com.roguedevelopment.objecthandles
{
    import flash.display.*;
    import flash.events.*;
    import flash.text.*;
    import mx.controls.*;

    final public class CircleHandleText extends Sprite implements IHandle
    {
        public var txt:TextField;
        private var _descriptor:HandleDescription;
        private var _targetModel:Object;
        protected var isOver:Boolean = false;
        public var theLabel:Label;
        public static var setVisible:Boolean = false;
        public static var cursorId:int = 0;

        public function CircleHandleText()
        {
            return;
        }// end function

        public function get handleDescriptor() : HandleDescription
        {
            return this._descriptor;
        }// end function

        public function set handleDescriptor(param1:HandleDescription) : void
        {
            this._descriptor = param1;
            return;
        }// end function

        public function get targetModel() : Object
        {
            return this._targetModel;
        }// end function

        public function set targetModel(param1:Object) : void
        {
            this._targetModel = param1;
            return;
        }// end function

        final protected function onRollOut(event:MouseEvent) : void
        {
            this.isOver = false;
            this.redraw();
            return;
        }// end function

        final protected function onRollOver(event:MouseEvent) : void
        {
            this.isOver = true;
            this.redraw();
            return;
        }// end function

        public function redraw() : void
        {
            graphics.clear();
            if (this.isOver)
            {
                graphics.lineStyle(1, 16225308);
                graphics.beginFill(16225308, 1);
            }
            else
            {
                graphics.lineStyle(1, 16225308);
                graphics.beginFill(16225308, 1);
            }
            graphics.drawRoundRect(0, 0, 33, 20, 5, 5);
            graphics.endFill();
            var _loc_1:* = this._targetModel.rotation;
            if (_loc_1 > 180)
            {
                _loc_1 = -(360 - _loc_1);
            }
            if (this.txt == null)
            {
                this.txt = new TextField();
                this.txt.htmlText = "<font size=\'15\' color=\'#ffffff\'>" + _loc_1.toFixed(0).replace(".", "").replace("-0", "0") + "°</font>";
                this.txt.height = 25;
                this.txt.width = 32;
                addChild(this.txt);
            }
            else
            {
                this.txt.htmlText = "<font size=\'15\' color=\'#ffffff\'>" + _loc_1.toFixed(0).replace(".", "").replace("-0", "0") + "°</font>";
            }
            return;
        }// end function

    }
}
