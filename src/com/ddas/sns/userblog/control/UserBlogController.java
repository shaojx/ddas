/**
 * 项目名称:	OpenSource
 * 文件名称:	FriendsControl.java
 * 包名:		 com.ddas.sns.friends.control
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.userblog.control;

import com.ddas.common.Msg;
import com.ddas.common.page.Page;
import com.ddas.sns.common.BaseController;
import com.ddas.sns.userblog.domain.UserBlog;
import com.ddas.sns.userblog.service.UserBlogService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

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
public class UserBlogController extends BaseController{
    private static  final Logger LOGGER= LoggerFactory.getLogger(UserBlogController.class);

    @Resource
    private UserBlogService userBlogService;

    @RequestMapping("/queryRecordsByPage")
    @ResponseBody
    public Page queryRecordsByPage(int currentPage, int pageSize, HttpServletRequest httpServletRequest){
        Page page = null;
        try{
            page = userBlogService.queryRecordsByPage(currentPage, pageSize, getLoginUser(httpServletRequest));
        }catch(Exception e){
            LOGGER.error(e.getMessage(), e);
        }

        return page;
    }

    @RequestMapping("/save")
    @ResponseBody
    public Msg save(UserBlog userBlog, HttpServletRequest httpServletRequest){
        Msg msg = new Msg();
        boolean success = false;
        try{
            success = userBlogService.save(userBlog, getLoginUser(httpServletRequest));
            msg.setMsg("保存成功！");
        }catch(Exception e) {
            LOGGER.error(e.getMessage(), e);
            msg.setMsg("保存失败！");
        }

        return msg;
    }
}
