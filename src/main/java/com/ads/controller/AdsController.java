package com.ads.controller;

import com.ads.logic.AdsLogic;
import com.ads.model.Ads;
import com.ads.page.PageBase;
import com.ads.qry.AdsEditQry;
import com.ads.qry.AdsQry;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import java.lang.reflect.InvocationTargetException;

/**
 * @author zhuxd@wjs.com
 * @date 2017/8/11 22:53
 */
@RestController
@RequestMapping("/ads")
public class AdsController{
	@Autowired
	private AdsLogic adsLogic;

	@RequestMapping
	ModelAndView home() {

		ModelAndView result = new ModelAndView("/ads/ads");

		return result;
	}

	@RequestMapping("/pushAdsHome")
	ModelAndView pushAdsHome() {
		ModelAndView result = new ModelAndView("/ads/pushAds");

		return result;
	}

	@RequestMapping("/calendarHome")
	ModelAndView calendarHome() {
		ModelAndView result = new ModelAndView("/ads/calendar");

		return result;
	}

	@RequestMapping("/list")
	@ResponseBody
	PageBase list(AdsQry qry) {
		return adsLogic.list(qry);
	}

	@RequestMapping("/edit")
	void save(String oper, AdsEditQry adsEdit) throws IllegalAccessException, NoSuchMethodException, InvocationTargetException{

		if("del".equals(oper)){
			String[] ids = StringUtils.split(adsEdit.getId(), ",");
			for(String id : ids){

				adsLogic.del(Integer.valueOf(id));
			}
		}else if("edit".equals(oper)){
			Ads ads = new Ads();
			BeanUtils.copyProperties(adsEdit, ads);
			ads.setId(Integer.valueOf(adsEdit.getId()));
			adsLogic.update(ads);
		}else if("add".equals(oper)){
			Ads ads = new Ads();
			BeanUtils.copyProperties(adsEdit, ads);
			adsLogic.save(ads);
		}
	}
}
