package com.ads.interceptor;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Component;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.ads.constants.Constants;

import java.lang.reflect.Method;

/**
 * @author zhuxd@wjs.com
 * @date 2017/8/11 23:39
 */
@Component
public class LoginInterceptor extends HandlerInterceptorAdapter{

	private final static String SESSION_KEY_PREFIX = "session:";

	public boolean preHandle(HttpServletRequest request,
	                         HttpServletResponse response, Object handler) throws Exception {
		if (!handler.getClass().isAssignableFrom(HandlerMethod.class)) {
			return true;
		}
		handlerSession(request);

		final HandlerMethod handlerMethod = (HandlerMethod) handler;
		final Method method = handlerMethod.getMethod();
		final Class<?> clazz = method.getDeclaringClass();
		if (clazz.isAnnotationPresent(Auth.class) ||
				method.isAnnotationPresent(Auth.class)) {

			if(request.getSession().getAttribute(Constants.USER_NAME_KEY) == null){

				response.sendRedirect(request.getContextPath()+"/login");
				return false;
			}else{
				return true;
			}
		}

		return true;

	}
	public void  handlerSession(HttpServletRequest request) {
		String sessionId = request.getHeader(Constants.SESSION_KEY);
		if(StringUtils.isBlank(sessionId)){
			sessionId=(String) request.getSession().getAttribute(Constants.SESSION_KEY);
		}
		if (StringUtils.isNotBlank(sessionId)) {
			//todo  加缓存
		}
		return ;
	}
}
