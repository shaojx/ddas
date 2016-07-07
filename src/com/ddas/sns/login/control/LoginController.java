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
import com.ddas.sns.userinfo.domain.UserInfo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

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

    @RequestMapping("/gotoLogin")
    public String gotoLogin(){
        return "login/login";
    }


    @RequestMapping("/in")
    @ResponseBody
    public Msg login(UserInfo userInfo, HttpServletRequest request){
        // TODO: 2016/7/6  用户登录操作
        request.getSession(true).setAttribute("userInfo",new UserInfo());
        Msg msg=new Msg();
        msg.setMsg("success");
        msg.setSuccessful(true);
        return msg;
    }
}
