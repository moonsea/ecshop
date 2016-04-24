package com.yzl.constant
{
	public class PageLabelUitl extends Object
	{
		public function PageLabelUitl()
		{
			super();
		}
		
		/**
		 * 获取相册单页页码
		 * **/
		public static function getAlbumPageLabel(param:int):String
		{
			if(param==0)
			{
				return "封面/封底";
			}
			
			return "第"+param+"页";
		}
		
		/**
		 * 获取相册单页页码
		 * **/
		public static function getAlbumPageLabelDouble(param:int):String
		{
			return "封面/封底";
		}
		
		/**
		 * 获取连单月日历页码
		 * **/
		public static function getCalendarPageLabel(param:int):String
		{
			return "封面/封底";
		}
		
		/**
		 * 获取双月日历页码
		 * **/
		public static function getCalendarPageLabelDouble(param:int):String
		{
			return "封面/封底";
		}
		
		
		/**
		 * 获取明信片卡页码
		 * **/
		public static function getPostCardPageLabel(param:int):String
		{
			return "封面/封底";
		}
	}
}