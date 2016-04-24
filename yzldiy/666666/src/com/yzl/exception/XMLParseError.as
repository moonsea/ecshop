package com.yzl.exception
{

    public class XMLParseError extends BuilderException
    {

        public function XMLParseError(param1:String = "")
        {
            super("xml parse error: " + param1);
            return;
        }// end function

    }
}
