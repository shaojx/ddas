package com.ddas.common.util.uuid;

import java.util.UUID;

/**
 * UUID生成转换
 *
 */
public class UUIDUtil {
	public static void main(String arg[]){
		createUUID();
	}
	/**
	 * 生成uuid(20位)
	 * @return
	 */
	public static String createUUID(){
		String uuid="";
		int index = (int) Math.round(Math.random()*10);
		uuid = UUID.randomUUID().toString().replaceAll("-", "").substring(index, index+20);
		return uuid;
	}
}
