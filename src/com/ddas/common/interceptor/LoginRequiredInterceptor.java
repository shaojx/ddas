package com.ddas.common.interceptor;


import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginRequiredInterceptor implements HandlerInterceptor{
	
	
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse reponse, Object arg2, Exception arg3)
			throws Exception {
		// TODO Auto-generated method stub
		
	}

	public void postHandle(HttpServletRequest request, HttpServletResponse response,
			Object arg2, ModelAndView arg3) throws Exception {

		// TODO: 2016/7/6
	}

	public boolean preHandle(HttpServletRequest req, HttpServletResponse rpo,
			Object arg2) throws Exception {
		// TODO: 2016/6/23
		return false;
	}

}
