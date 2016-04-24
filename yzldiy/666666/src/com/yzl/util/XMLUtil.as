package com.yzl.util
{
	public class XMLUtil extends Object
	{
		public function XMLUtil()
		{
			return;
		}
		
		public static function createTag(param1:String, param2:String = "") : XML
		{
			var tag:* = new XML("<tag>" + param2 + "</tag>");
			tag.setName(param1);
			return tag;
		}
		
		public static function createCDATATag(param1:String, param2:String) : XML
		{
			var tag:* = new XML("<tag><![CDATA[" + param2 + "]]></tag>");
			tag.setName(param1);
			return tag;
		}
	}
}