/**
 * 项目名称:	OpenSource
 * 文件名称:	FriendsControl.java
 * 包名:		 com.ddas.sns.friends.control
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.email.control;

import com.ddas.common.page.Page;
import com.ddas.sns.userblog.domain.UserBlog;
import com.ddas.sns.userblog.service.UserBlogService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;

/**
 * ClassName:	EmailController
 * Function: 	邮件Controller
 *
 * @author shaojunxiang
 * @date 12:26
 * @since JDK 1.6      
 */
@Controller
@RequestMapping("/email")
public class EmailController {
    private static  final Logger LOGGER= LoggerFactory.getLogger(EmailController.class);

    /**
     *升级会员页面
     *@return java.lang.String 升级会员的页面
     *@author shaojx
     *@date 2016/7/8 21:45
     *@version 1.0
     *@since 1.6
     */
    @RequestMapping("/gotoIndex")
    public String gotoEmail(){
        return "email/index";
    }

}
