package com.yzl.valueObject.filters
{

    final public class FilterNames extends Object
    {
        public static const NONE:String = "none";
        public static const ABAO:String = "aibao";
        public static const DARKCORN:String = "darkcornlomo";
        public static const DROPSHADOW:String = "dropshadow";
        public static const FILM:String = "film";
        public static const LITTLEFRESH:String = "littlefresh";
        public static const NOSTALGIC:String = "old";
        public static const SHARPEN:String = "newsharp";
        public static const SOFT:String = "soft";
        public static const SOFTLIGHT:String = "softlight";
        public static const WARM:String = "warm";
        public static const ALL_NAMES:Array = [NONE, ABAO, DARKCORN, FILM, LITTLEFRESH, NOSTALGIC, SHARPEN, SOFT, SOFTLIGHT, WARM];
        public static const CHINESE_NAMES:Array = ["原图", "阿宝", "暗角", "胶片", "清新", "怀旧", "锐化", "柔和", "轻柔和", "暖色"];

        public function FilterNames()
        {
            return;
        }// end function

    }
}
