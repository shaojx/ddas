/**
 * 项目名称:	OpenSource
 * 文件名称:	FriendsControl.java
 * 包名:		 com.ddas.sns.friends.control
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.admin.control;

import com.ddas.common.page.Page;
import com.ddas.sns.common.BaseController;
import com.ddas.sns.admin.service.AdminService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

/**
 * ClassName:	AdminController
 * Function: 	后台管理Controller
 *
 * @author shaojunxiang
 * @date 12:26
 * @since JDK 1.6      
 */
@Controller
@RequestMapping("/admin")
public class AdminController extends BaseController{
    private static  final Logger LOGGER = LoggerFactory.getLogger(AdminController.class);

    @Resource
    private AdminService adminService;

    /**
     *admin 首页
     *@return java.lang.String 升级会员的页面
     *@author shaojx
     *@date 2016/7/8 21:45
     *@version 1.0
     *@since 1.6
     */
    @RequestMapping("/gotoIndex")
    public ModelAndView gotoEmail(HttpServletRequest httpServletRequest){
        ModelAndView mav = withLocal(httpServletRequest,"admin/index");
        return mav;
    }

    /**
     *跳转到用户的信息页面
     * @param request
     *@return org.springframework.web.servlet.ModelAndView
     *@author shaojx
     *@date 2016/9/4 14:39
     *@version 1.0
     *@since 1.6
     */
    @RequestMapping("/gotoUserInfos")
    public ModelAndView gotoUserInfos(HttpServletRequest request, HttpServletResponse response){
        response.addHeader("X-PJAX-URL",request.getContextPath()+"/admin/gotoIndex");
        ModelAndView modelAndView=withLocal(request,"admin/userInfos");
        return modelAndView;
    }
    /**
     *跳转到充值记录的信息页面
     * @param request
     *@return org.springframework.web.servlet.ModelAndView
     *@author shaojx
     *@date 2016/9/4 14:39
     *@version 1.0
     *@since 1.6
     */
    @RequestMapping("/gotoRecordsInfos")
    public ModelAndView gotoRecordsInfos(HttpServletRequest request,HttpServletResponse response){
        response.addHeader("X-PJAX-URL",request.getContextPath()+"/admin/gotoIndex");
        ModelAndView modelAndView=withLocal(request,"admin/recordsInfos");
        return modelAndView;
    }

    /**
     *跳转到充值记录的信息页面
     * @param request
     *@return org.springframework.web.servlet.ModelAndView
     *@author shaojx
     *@date 2016/9/4 14:39
     *@version 1.0
     *@since 1.6
     */
    @RequestMapping("/gotoGiftInfos")
    public ModelAndView gotoGiftInfos(HttpServletRequest request,HttpServletResponse response){
        response.addHeader("X-PJAX-URL",request.getContextPath()+"/admin/gotoIndex");
        ModelAndView modelAndView=withLocal(request,"admin/giftInfos");
        return modelAndView;
    }

    /**
     *获取所有的用户信息
     * @param pageNo 当前页
     * @param pageSize 每页的数据量
     * @param request 当前请求
     *@return com.ddas.common.page.Page
     *@author shaojx
     *@date 2016/9/5 0:04
     *@version 1.0
     *@since 1.6
     */
    @RequestMapping("/findAllUserInfos")
    @ResponseBody
    public Page findAllUserInfos(int pageNo, int pageSize, String searchTime,String searchTxt, HttpServletRequest request) {
        Page page = adminService.findAllUserInfos(pageNo, pageSize,searchTime,searchTxt, getLoginUser(request));
        return page;
    }

    /**
     *获取所有的用户信息
     * @param pageNo 当前页
     * @param pageSize 每页的数据量
     * @param request 当前请求
     *@return com.ddas.common.page.Page
     *@author shaojx
     *@date 2016/9/5 0:04
     *@version 1.0
     *@since 1.6
     */
    @RequestMapping("/findUserRechargeInfos")
    @ResponseBody
    public Page findUserRechargeInfos(int pageNo, int pageSize, String searchTime,String searchTxt, HttpServletRequest request) {
        Page page = adminService.findUserRechargeInfos(pageNo, pageSize,searchTime,searchTxt, getLoginUser(request));
        return page;
    }

    /**
     *获取所有的用户信息
     * @param pageNo 当前页
     * @param pageSize 每页的数据量
     * @param request 当前请求
     *@return com.ddas.common.page.Page
     *@author shaojx
     *@date 2016/9/5 0:04
     *@version 1.0
     *@since 1.6
     */
    @RequestMapping("/findGiftInfos")
    @ResponseBody
    public Page findGiftInfos(int pageNo, int pageSize, String searchTime,String searchTxt, HttpServletRequest request) {
        Page page = adminService.findGiftInfos(pageNo, pageSize,searchTime,searchTxt, getLoginUser(request));
        return page;
    }
}
