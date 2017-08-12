package com.ads.controller;

import com.ads.interceptor.Auth;
import com.ads.model.Ads;
import com.ads.model.AdsCriteria;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @author zhuxd@wjs.com
 * @date 2017/8/11 23:33
 */
@RestController
@RequestMapping("/user")
public class UserController{

	@Auth
	@RequestMapping
	ModelAndView home() {

		ModelAndView result = new ModelAndView("/user/login");

		return result;
	}

	@Auth
	@RequestMapping("/index")
	ModelAndView index() {
		ModelAndView result = new ModelAndView("/user/index");

		return result;
	}

}
