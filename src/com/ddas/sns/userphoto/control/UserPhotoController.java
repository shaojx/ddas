/**
 * 项目名称:	OpenSource
 * 文件名称:	FriendsControl.java
 * 包名:		 com.ddas.sns.friends.control
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.userphoto.control;

import com.ddas.common.page.Page;
import com.ddas.sns.common.BaseController;
import com.ddas.sns.userphoto.service.UserPhotoService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
@RequestMapping("/userPhoto")
public class UserPhotoController extends BaseController{
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
    public ModelAndView gotoUploadPhotoIndex(HttpServletRequest request){
        ModelAndView modelAndView = withLocal(request,"photo/uploadPhoto");
        return modelAndView;
    }

    /**
     * 跳转到相册的详情页
     * @param groupId
     * @return
     */
    @RequestMapping("/photoDetail")
    public ModelAndView gotoPhotoDetail(String groupId){
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("photo/photoDetail");
        modelAndView.addObject("groupId",groupId);
        return modelAndView;
    }

    @RequestMapping("/queryRecordsByPage")
    @ResponseBody
    public Page queryRecordsByPage(int currentPage, int pageSize, String groupId){
        Page page = null;
        try{
            page = userPhotoService.queryRecordsByPage(currentPage, pageSize, groupId);
        }catch(Exception e){
            LOGGER.error(e.getMessage(), e);
        }

        return page;
    }
}
