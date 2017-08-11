package com.ads.controller;

import com.ads.interceptor.Auth;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author zhuxd@wjs.com
 * @date 2017/8/12 7:08
 */
@RestController
@RequestMapping
public class IndexController{

	@Auth
	@RequestMapping("/index")
	ModelAndView index() {
		ModelAndView result = new ModelAndView("/index");

		return result;
	}
}
