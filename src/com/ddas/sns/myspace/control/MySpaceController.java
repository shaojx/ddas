/**
 * 项目名称:	OpenSource
 * 文件名称:	MySpaceController.java
 * 包名:		 com.ddas.sns.myspace
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/27
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.myspace.control;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * ClassName:	MySpaceController
 * Function: 	我的空间Controller
 *
 * @author shaojunxiang
 * @date 12:30
 * @since JDK 1.6      
 */
@Controller
@RequestMapping("/myspace")
public class MySpaceController {
    /**
     *
     *@param
     *@Author shaojunxiang
     *@Date 2016/6/27 12:32
     *@return org.springframework.web.servlet.ModelAndView
     *@since JDK1.6
     */
    @RequestMapping("/gotoIndex")
    public ModelAndView gotoIndex(){
        ModelAndView modelAndView=new ModelAndView("/myspace/myHome");
        return modelAndView;
    }
}
