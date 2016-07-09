package com.ddas.sns.common;

import org.codehaus.janino.Mod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import org.springframework.web.util.WebUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.Locale;

/**
 * ClassName:	BaseController
 * Function: 	Base Controller
 *
 * @author shaojx
 * @date 2016/7/9 21:11
 * @since JDK 1.6
 */
public class BaseController {


    /**
     *返回当前的local对应的字符串
     * @param request
     *@return java.lang.String
     *@author shaojx
     *@date 2016/7/9 21:15
     *@version 1.0
     *@since 1.6
     */
    public String getLocal(HttpServletRequest request) {
        //locale 只为了前端页面的 validator的国际化
        Locale locale = (Locale) WebUtils.getSessionAttribute(request, SessionLocaleResolver.LOCALE_SESSION_ATTRIBUTE_NAME);
        if(locale==null){
            locale=Locale.getDefault();
        }
       return locale.toString();
    }

    /**
     *获取一个包含"local"的ModelAndView
     * 1.会从request.getSession().getSessionAttribute()中获取SessionLocalResolver对应的Local的属性，如果获取不到
     * 则使用Local.getDefault的默认值
     * @param request 对应的HttpServletRequet
     *@return org.springframework.web.servlet.ModelAndView 返回包含一个key为"local"，值为Local对应的字符串的ModelAndView
     *@author shaojx
     *@date 2016/7/9 21:18
     *@version 1.0
     *@since 1.6
     */
    public ModelAndView containLocal(HttpServletRequest request){
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.addObject("local",getLocal(request));
        return modelAndView;
    }

    /**
     *获取一个ModelAndView ，包含一个属性"local"，对应的Local的字符串，以及相应的视图名称viewName
     * @param request HttpServletRequest
     * @param viewName 视图名称
     *@return org.springframework.web.servlet.ModelAndView
     *@author shaojx
     *@date 2016/7/9 21:22
     *@version 1.0
     *@since 1.6
     */
    public ModelAndView withLocal(HttpServletRequest request,String viewName){
        ModelAndView modelAndView=containLocal(request);
        modelAndView.setViewName(viewName);
        return modelAndView;
    }

}
