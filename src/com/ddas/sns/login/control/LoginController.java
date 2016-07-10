/**
 * 项目名称:	SelfCreation
 * 文件名称:	LoginController.java
 * 包名:		 com.ddas.sns.login.control
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/7/6
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.sns.login.control;

import com.ddas.common.Msg;
import com.ddas.common.util.springutil.SpringContextUtil;
import com.ddas.sns.userinfo.domain.UserInfo;
import com.ddas.sns.userinfo.service.UserInfoService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import org.springframework.web.util.WebUtils;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Locale;

/**
 * ClassName:	LoginController
 * Function: 	todo ADD FUNCTION	
 *
 * @author shaojunxiang
 * @date 12:30
 * @since JDK 1.6      
 */
@Controller
@RequestMapping("/login")
public class LoginController {

    @Resource
    private UserInfoService userInfoService;

    @RequestMapping("/gotoLogin")
    public ModelAndView gotoLogin(HttpServletRequest request){
        ModelAndView modelAndView=new ModelAndView();
        //判断 cookie中的内容
        Cookie[] cookies = request.getCookies();
        String userName=null;
        String userPwd=null;
        String remeberme=null;
        for(Cookie cookie:cookies){
            String name = cookie.getName();
            String value=cookie.getValue();
            if("userName".equals(name)){
                userName=value;
            }
            if("userPwd".equals(name)){
                userPwd=value;
            }
            if("remeberme".equals(name)){
                remeberme=value;
            }
        }
        if(userName!=null&&userPwd!=null){
            UserInfo userInfo=new UserInfo();
            userInfo.setUserName(userName);
            userInfo.setUserPwd(userPwd);
            UserInfo userInfoFromDb=userInfoService.loginInProxy(userInfo);
            if(userInfoFromDb!=null){
                modelAndView.setViewName("redirect:/index/gotoIndex");//直接跳转到首页
                request.getSession(true).setAttribute("userInfo",userInfoFromDb);//设置用户到session中
            }
        }else{
            //locale 只为了前端页面的 validator的国际化
            Locale locale = (Locale) WebUtils.getSessionAttribute(request, SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME);
            modelAndView.setViewName("login/login");
            if(locale==null){
                locale=Locale.getDefault();
            }
            modelAndView.addObject("local",locale.toString());
        }
        return modelAndView;
    }


    @RequestMapping("/in")
    @ResponseBody
    public Msg login(@RequestParam String remeberme, @RequestBody UserInfo userInfo, HttpServletRequest request, HttpServletResponse response){
        UserInfo userInfoFromDb=userInfoService.loginInProxy(userInfo);
        boolean loginInResult = userInfoFromDb!=null;
       if(loginInResult){
           if(remeberme!=null&&remeberme.equals("true")){//保存用户名到cookie
               Cookie userNameCookie=new Cookie("userName",userInfo.getUserName());
               Cookie userPwdCookie=new Cookie("userPwd",userInfo.getUserPwd());
               Cookie userRemermeCookie=new Cookie("remeberme",remeberme);
               response.addCookie(userNameCookie);
               response.addCookie(userPwdCookie);
               response.addCookie(userRemermeCookie);
           }
           request.getSession(true).setAttribute("userInfo",userInfoFromDb);
           Msg msg=new Msg();
           msg.setMsg("success");
           msg.setSuccessful(true);
           return msg;
       }else{
           Msg msg=new Msg();
           msg.setSuccessful(false);
           Locale locale = (Locale) WebUtils.getSessionAttribute(request, SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME);
           msg.setMsg(SpringContextUtil.getMsgByKey("login.errorUserNameOrPwd",locale));
           return msg;
       }
    }

    /**
     *跳转到注册页面
     *@Author shaojunxiang
     *@Date 2016/7/8 16:34
     *@return java.lang.String
     *@since JDK1.6
     */
    @RequestMapping("/gotoRegister")
    public String gotoRegister(){
        return "login/register";
    }


    @RequestMapping("/register")
    @ResponseBody
    public Msg register(){
        return new Msg();
    }
}
