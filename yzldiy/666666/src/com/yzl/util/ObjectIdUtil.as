package com.yzl.util
{
	public class ObjectIdUtil extends Object
	{
		private static var _builderId:String;
		private static var _objectCount:int = 0;
		
		
		public static function createNextId() : String{
			
			if (_builderId == null){
				
				_builderId = "";
				
				while (_builderId.length < 4){
					
					_builderId = _builderId + Math.round(Math.random() * 10).toString();
				}
			}
			
			var str:String = _objectCount.toString();
			
			while (str.length < 3){
				
				str = "0" + str;
			}
			
			var count:int = _objectCount + 1;
			_objectCount = count;
			if (_objectCount >= 1000) _objectCount = 0;
			str = new Date().time + _builderId + str;
			return str;
		}
		
		public static function createNextIdByDate() : String{
			var str:Date = new Date();
			var str2:String = str.fullYear.toString() + str.month.toString() + str.day.toString();
			return str2;
		}
		
		public static function createIdByDate():String{
			var str:String = new Date().time.toString();
			return str;
		}
		
		public static function createByDate():Date{
			return new Date();
		}
		
		/*时间戳转换成字符窜*/
		public static function getDateToString(date:Date) : String {
			return date.date + ' ' + (date.month+1) + '月';
		}
		
		public static function getHeight(num:int):int {
			var n:int;
			
			if(chk(num) == "奇数") {
				n = num + 1;
			}else if(chk(num) == "偶数") {
				n = num;
			}
			
			function chk(num):String{ 
				return num?num%2?"奇数":"偶数":"0" 
			} 
			
			if(n == 0) return;
			
			return (n/2) * (78 + 8);
			
		}
	
	}
}