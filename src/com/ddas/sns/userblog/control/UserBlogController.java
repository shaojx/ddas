/**
 * 项目名称:	OpenSource
 * 文件名称:	FriendsControl.java
 * 包名:		 com.ddas.sns.friends.control
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.userblog.control;

import com.ddas.common.page.Page;
import com.ddas.sns.userblog.service.UserBlogService;
import com.ddas.sns.userfriend.domain.UserFriend;
import com.ddas.sns.userfriend.service.UserFriendService;
import com.ddas.sns.userinfo.service.UserPhotoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
@RequestMapping("/userBlog")
public class UserBlogController {
    private static  final Logger LOGGER= LoggerFactory.getLogger(UserBlogController.class);

    @Resource
    private UserBlogService userBlogService;
}
