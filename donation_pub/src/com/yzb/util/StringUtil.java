package com.yzb.util;
/**
 * 
 * @author sjt
 *	判断非空工具类
 */
public class StringUtil {

	public static boolean isEmpty(String str){
		if(str==null||"".equals(str.trim())){
			return true;
		}
		return false;
	}
}
