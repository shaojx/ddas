package com.ddas.common.interceptor;


import com.ddas.common.util.StringUtil;
import com.ddas.sns.userinfo.domain.UserInfo;
import com.ddas.sns.util.ReloadablePropertiesUtil;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LoginRequiredInterceptor implements HandlerInterceptor{

	
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse reponse, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	public void postHandle(HttpServletRequest req, HttpServletResponse response,
			Object handler, ModelAndView modelAndView) throws Exception {

	}

	public boolean preHandle(HttpServletRequest req, HttpServletResponse response,
			Object handler ) throws Exception {
      /*  ReloadablePropertiesUtil reloadablePropertiesUtil=ReloadablePropertiesUtil.getInstance("resources/config.properties");
        String excludeURLs = reloadablePropertiesUtil.getPropertyByKey("excludeURLs");
        String requestURL=req.getRequestURL().toString();
        String[] segs = StringUtil.split(excludeURLs, ",");
        String matchUrl=null;
        for(String url:segs){
            if(requestURL.endsWith(url)){
                matchUrl=requestURL;
                break;
            }
        }*/
        System.out.println(req.getRequestURL().toString());
      /* if(matchUrl==null){//如果这个请求的URL不在excludeURLs中，则拦截*/
            //用户登录判断
            HttpSession session = req.getSession(true);
            UserInfo userInfo=(UserInfo)session.getAttribute("userInfo");
            if(userInfo==null){
                try {
                   // req.getRequestDispatcher("/WEB-INF/views/login/login.jsp").forward(req,response);
                    response.sendRedirect(req.getContextPath()+"/login/gotoLogin");
                }  catch (IOException e) {
                    e.printStackTrace();
                }
                return false;
            }
       /*    return true;
        }*/
        return true;
	}

}
