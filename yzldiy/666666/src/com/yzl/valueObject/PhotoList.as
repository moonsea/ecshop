package com.yzl.valueObject
{
	import com.roguedevelopment.objecthandles.IMoveable;
	import com.roguedevelopment.objecthandles.IResizeable;
	
	import mx.collections.ArrayCollection;
	
	import spark.collections.Sort;
	import spark.collections.SortField;
	
	public class PhotoList extends DisplayObjectVO implements IResizeable,IMoveable {
		
		[Bindable]
		public var id:String;
		[Bindable]
		public var pList:ArrayCollection;
		
		public function PhotoList(id:String = "-1"){
			this.id = id;
			
			if(pList) pList = null;
			pList = new ArrayCollection();
			
			var sort:Sort = new Sort();
			var sortField:SortField = new SortField("photoId");
			sort.fields = [sortField];
			pList.sort = sort;
			pList.refresh();
		}
		
		
		public function addList(photoVO:PhotoVO){
			if(pList.length < 4) pList.addItem(photoVO);
		}
		
		public function removeAllList(){
			for(var i:int = 0; i < pList.length; i++){
				pList.removeAll();
			}
		}
		
	}
}