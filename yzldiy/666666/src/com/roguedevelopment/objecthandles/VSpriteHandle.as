package com.roguedevelopment.objecthandles
{
    import flash.display.*;
    import flash.events.*;

    final public class VSpriteHandle extends Sprite implements IHandle
    {
        private var _descriptor:HandleDescription;
        private var _targetModel:Object;
        protected var isOver:Boolean = false;
        public static var isCover:Number = 0;

        public function VSpriteHandle()
        {
            this.mouseEnabled = false;
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
            isCover = 0;
            this.redraw();
            return;
        }// end function

        final protected function onRollOver(event:MouseEvent) : void
        {
            this.isOver = true;
            isCover = 1;
            this.redraw();
            return;
        }// end function

        public function redraw() : void
        {
            graphics.clear();
            graphics.lineStyle(2, 16225308, 0.8, false, LineScaleMode.NONE);
            graphics.moveTo(0, 0);
            graphics.lineTo(0, -15);
            return;
        }// end function

    }
}
