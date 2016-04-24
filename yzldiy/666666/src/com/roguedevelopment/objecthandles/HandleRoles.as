/**
 *  Latest information on this project can be found at http://www.rogue-development.com/objectHandles.html
 * 
 *  Copyright (c) 2009 Marc Hughes 
 * 
 *  Permission is hereby granted, free of charge, to any person obtaining a 
 *  copy of this software and associated documentation files (the "Software"), 
 *  to deal in the Software without restriction, including without limitation 
 *  the rights to use, copy, modify, merge, publish, distribute, sublicense, 
 *  and/or sell copies of the Software, and to permit persons to whom the Software 
 *  is furnished to do so, subject to the following conditions:
 * 
 *  The above copyright notice and this permission notice shall be included in all 
 *  copies or substantial portions of the Software.
 * 
 *  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, 
 *  INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A 
 *  PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT 
 *  HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION 
 *  OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE 
 *  SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE. 
 * 
 *  See README for more information.
 * 
 **/
package com.roguedevelopment.objecthandles
{
	/**
	 * Constants defining what role(s) a given handle is for.
	 **/
	public class HandleRoles
	{
        // NO_ROLE just sends the event out for the click
        public static const NO_ROLE : uint = 0;
        
		public static const RESIZE_UP : uint = 1;
		public static const RESIZE_DOWN : uint = 2;
		public static const RESIZE_LEFT : uint = 4;
		public static const RESIZE_RIGHT : uint = 8;
		
		public static const ROTATE : uint = 16;
		public static const MOVE : uint = 32;
		
		public static const RESIZE_UP_LEFT:uint = 64;
		public static const RESIZE_DOWN_LEFT:uint = 128;
		public static const RESIZE_UP_RIGHT:uint = 256;
		public static const RESIZE_DOWN_RIGHT:uint = 512;
		
		public static const RESIZE_BORDER:uint = 1024;
		public static const RESIZE_PHOTO:uint = 2048;
		
		public static const DEL_PHOTO:uint = 4096;
		
		// some convienence methods:
		public static function isResize(val:uint) : Boolean
		{
			return isResizeDown(val) || isResizeLeft(val) || isResizeRight(val) || isResizeUp(val)||isResizeUpLeft(val)
				||isResizeUpRight(val)||isResizeDownLeft(val)||isResizeDownRight(val);
		}
		
		//如果是缩放角点
		public static function isResize1(val:uint) : Boolean
		{
			return isResizeDown(val) || isResizeLeft(val) || isResizeRight(val) || isResizeUp(val);
		}
		
		//如果是移动照片
		public static function isMovePhoto(val:uint):Boolean
		{
			return (val & RESIZE_PHOTO) == RESIZE_PHOTO;
		}
		//如果是缩放角点
		public static function isResize2(val:uint) : Boolean
		{
			return isResizeUpLeft(val)||isResizeUpRight(val)||isResizeDownLeft(val)||isResizeDownRight(val);
		}
		
		public static function isResizeUp( val:uint ) : Boolean
		{
			return (val & RESIZE_UP) == RESIZE_UP;
		}
		public static function isResizeDown( val:uint ) : Boolean
		{
			return (val & RESIZE_DOWN) == RESIZE_DOWN;
		}
		public static function isResizeLeft( val:uint ) : Boolean
		{
			return (val & RESIZE_LEFT) == RESIZE_LEFT;
		}
		public static function isResizeRight( val:uint ) : Boolean
		{
			return (val & RESIZE_RIGHT) == RESIZE_RIGHT;
		}
		
		
		//新加的自定义函数
		public static function isResizeUpLeft( val:uint ) : Boolean
		{
			return (val & RESIZE_UP_LEFT) == RESIZE_UP_LEFT;
		}
		
		public static function isResizeUpRight( val:uint ) : Boolean
		{
			return (val & RESIZE_UP_RIGHT) == RESIZE_UP_RIGHT;
		}
		
		public static function isResizeDownLeft( val:uint ) : Boolean
		{
			return (val & RESIZE_DOWN_LEFT) == RESIZE_DOWN_LEFT;
		}
		
		public static function isResizeDownRight( val:uint ) : Boolean
		{
			//trace('返回值:', RESIZE_DOWN_RIGHT,":",val)
			return (val & RESIZE_DOWN_RIGHT) == RESIZE_DOWN_RIGHT;
		}
		
		public static function isRotate( val:uint ) : Boolean
		{
			return (val & ROTATE) == ROTATE;
		}
		
		public static function isMove( val:uint ) : Boolean
		{
			return (val & MOVE) == MOVE;
		}
		
	}
}