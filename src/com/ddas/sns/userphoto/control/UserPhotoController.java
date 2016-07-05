/**
 * 项目名称:	OpenSource
 * 文件名称:	FriendsControl.java
 * 包名:		 com.ddas.sns.friends.control
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.userphoto.control;

import com.ddas.sns.userphoto.service.UserPhotoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
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
@RequestMapping("/userPhoto")
public class UserPhotoController {
    private static  final Logger LOGGER= LoggerFactory.getLogger(UserPhotoController.class);

    @Resource
    private UserPhotoService userPhotoService;

    /**
     *跳转到首页
     *@Author shaojunxiang
     *@Date 2016/7/5 16:40
     *@return java.lang.String
     *@since JDK1.6
     */
    @RequestMapping("/gotoIndex")
    public String gotoIndex(){
        return "photo/index";
    }

    /**
     *跳转到照片上传的页面
     *@Author shaojunxiang
     *@Date 2016/7/5 16:40
     *@return java.lang.String
     *@since JDK1.6
     */
    @RequestMapping("/gotoUploadPhotoIndex")
    public String gotoUploadPhotoIndex(){
        return "photo/uploadPhoto";
    }
}
