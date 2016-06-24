/**
 * 项目名称:	OpenSource
 * 文件名称:	FriendsControl.java
 * 包名:		 com.ddas.sns.friends.control
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.friends.control;

import com.ddas.sns.friends.service.UserInfoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;

/**
 * ClassName:	FriendsControl
 * Function: 	朋友模块Controller
 *
 * @author shaojunxiang
 * @date 12:26
 * @since JDK 1.6      
 */
@Controller
@RequestMapping("/friends")
public class FriendsController {
    private static  final Logger LOGGER= LoggerFactory.getLogger(FriendsController.class);
    @Resource
    private UserInfoService userInfoService;

    @RequestMapping(value = "/test",method ={RequestMethod.POST,RequestMethod.GET})
    public void test(String name){
        System.out.println(name);
        LOGGER.info(">>>>>>>>>>>>>>>>>>"+name);
        try {
            userInfoService.getUserInfo();
            System.out.println(name);
        }catch (Exception e) {
            LOGGER.error(e.getMessage(), e);
        }

    }
}
