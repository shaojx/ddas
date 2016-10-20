/**
 * 项目名称:	SelfCreation
 * 文件名称:	ConvertZH2En.java
 * 包名:		 com.ddas.tools
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/10/20
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.tools;

import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import net.sourceforge.pinyin4j.PinyinHelper;
import net.sourceforge.pinyin4j.format.HanyuPinyinCaseType;
import net.sourceforge.pinyin4j.format.HanyuPinyinOutputFormat;
import net.sourceforge.pinyin4j.format.HanyuPinyinToneType;
import net.sourceforge.pinyin4j.format.exception.BadHanyuPinyinOutputFormatCombination;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.List;
import java.util.Map;

/**
 * ClassName:	ConvertZH2En
 * Function:
 *
 * @author shaojunxiang
 * @date 16:38
 * @since JDK 1.6      
 */
public class ConvertZH2En {
    public static void main(String[] args) throws Exception {
        Gson gson = new Gson();
        BufferedReader bufferedReader = new BufferedReader(
                new InputStreamReader(ConvertZH2En.class.getResourceAsStream("emotions.json"), "UTF-8"));
        Object object = gson.fromJson(bufferedReader, new TypeToken<Map<String, Object>>() {
        }.getRawType());
        List<Map<String, Object>> data = (List) ((Map) object).get("data");
      //  System.out.println("total:"+data.size());
        for (Map<String, Object> map : data) {
            String phrase = map.get("phrase").toString();
            String type = map.get("type").toString();
            String url = map.get("url").toString();
            boolean hot = (Boolean) map.get("hot");
            Boolean common = (Boolean) map.get("common");
            String category = map.get("category").toString();
            String icon = map.get("icon").toString();
            String value = map.get("value").toString();
            String picid = map.get("picid").toString();
            int firstIndex = phrase.indexOf("[");
            int lastIndex=phrase.indexOf("]");
            if(firstIndex !=-1&&lastIndex!=-1){
                String split=phrase.substring(firstIndex+1,lastIndex);
               map.put("phrase","["+cn2Spell(split)+"]");
            }
            firstIndex=value.indexOf("[");
            lastIndex=value.indexOf("]");
            if(firstIndex!=-1&&lastIndex!=-1){
                String split=value.substring(firstIndex+1,lastIndex);
                map.put("value","["+cn2Spell(split)+"]");
            }
        }
        String result = gson.toJson(data);
        System.out.println(result);
    }

    public static String cn2Spell(String chinese) {
        StringBuffer pybf = new StringBuffer();
        char[] arr = chinese.toCharArray();
        HanyuPinyinOutputFormat defaultFormat = new HanyuPinyinOutputFormat();
        defaultFormat.setCaseType(HanyuPinyinCaseType.LOWERCASE);
        defaultFormat.setToneType(HanyuPinyinToneType.WITHOUT_TONE);
        for (int i = 0; i < arr.length; i++) {
            if (arr[i] > 128) {
                try {
                    pybf.append(PinyinHelper.toHanyuPinyinStringArray(arr[i], defaultFormat)[0]);
                } catch (BadHanyuPinyinOutputFormatCombination e) {
                    e.printStackTrace();
                }
            } else {
                pybf.append(arr[i]);
            }
        }
        return pybf.toString();
    }
}
