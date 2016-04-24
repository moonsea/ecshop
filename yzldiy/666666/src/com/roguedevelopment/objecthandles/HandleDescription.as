package com.roguedevelopment.objecthandles
{
    import flash.geom.Point;
    
    import mx.core.IFactory;
    
    public class HandleDescription
    {       
    	[Bindable]
        public var role:uint;
        public var percentageOffset:Point;
        public var offset:Point;
        public var handleFactory:IFactory;
        public var constraint:IFactory;
		public var lineSize:Number=2;
		public var color:uint=0xFD5350;
		public var drawSize:Number=10;
		public var lineTo:Number=-30;
		public var width:Number = 0;
		public var height:Number= 0;
        public var sizeScale:Number = 1;
        
        /**
        * Creates a new handle description.
        * 
        * @param role a value from HandleRoles
        * @param percentageOffset Where should this handle go as a percent of the height/width of the component?  For instance (50,50) would center it
        * 						  and (100,0) would be the top right corner.
        * 
        * @param offset After the percentageOffset is applied, how many pixes should we offset the handle by?
        * @param handleFactory An IFactory that can create the DisplayObject for this handle.  By default you get a grey box.  Customize this
        * 					   to have different handle graphics.
        * @param constraint Allows you to have custom constraints for some of the handles.
        * 
        **/ 
        public function HandleDescription(role:uint, percentageOffset:Point, offset:Point, 
										  handleFactory:IFactory = null, constraint:IFactory = null,
										  sizeScale:Number=1) 
        {
            this.role = role;
            this.percentageOffset = percentageOffset;
            this.offset = offset;
            this.handleFactory = handleFactory;
            this.constraint = constraint;
			this.lineSize = lineSize/sizeScale;
			this.color=color;
			this.drawSize = drawSize/sizeScale;
			this.lineTo = lineTo/sizeScale;
			this.sizeScale = sizeScale;
        }
    }
}