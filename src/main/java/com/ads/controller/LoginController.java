package com.ads.controller;

import com.ads.constants.Constants;
import com.ads.logic.OperLogic;
import com.ads.model.Ads;
import com.ads.model.AdsCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * @author zhuxd@wjs.com
 * @date 2017/8/11 22:28
 */

@RestController
@RequestMapping("/login")
public class LoginController{

	@Autowired
	private OperLogic operLogic;

	@RequestMapping
	ModelAndView home() {
		ModelAndView result = new ModelAndView("/user/login");
		return result;
	}

	@RequestMapping("/login")
	boolean login(HttpServletRequest request,
	                   HttpServletResponse response, String userName, String password) throws Exception{

		ModelAndView result = null;
		boolean isVaild = operLogic.verifyPassword(userName, password);
		if(isVaild){
			request.getSession().setAttribute(Constants.USER_NAME_KEY, userName + System.currentTimeMillis());
			response.sendRedirect(request.getContextPath()+"/index");
			return true;
		}else{
			throw new Exception("登入失败");
		}

	}

}
