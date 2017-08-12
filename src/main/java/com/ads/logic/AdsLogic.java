package com.ads.logic;

import com.ads.mapper.AdsMapper;
import com.ads.model.Ads;
import com.ads.model.AdsCriteria;
import com.ads.page.PageBase;
import com.ads.qry.AdsQry;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

/**
 * @author zhuxd@wjs.com
 * @date 2017/8/12 2:12
 */
@Component
public class AdsLogic{

	@Autowired
	private AdsMapper adsMapper;

	public PageBase list(AdsQry qry){
		PageBase pageBase = new PageBase();
		AdsCriteria criteria = new AdsCriteria();
		AdsCriteria.Criteria ctr =criteria.createCriteria();
		if(StringUtils.isNotBlank(qry.getAdsName())){
			ctr.andAdsNameLike("%" + qry.getAdsName() + "%");
		}
		criteria.setLimit(qry.getRows());
		criteria.setStart((qry.getPage()-1)*qry.getRows());
		Integer count = adsMapper.countByExample(criteria);
		List<Ads> adsList = new ArrayList<Ads>();
		if(count > 0 ){
			adsList = adsMapper.selectByExample(criteria);
		}
		pageBase.setRows(adsList);
		pageBase.setCurrPage(qry.getPage());
		pageBase.setRecords(count);
		pageBase.setTotalPage(count/qry.getPage());

		return pageBase;
	}

	public void save(Ads ads){
		adsMapper.insertSelective(ads);
	}

	public void del(Integer id){
		adsMapper.deleteByPrimaryKey(id);
	}

	public void update(Ads ads){
		adsMapper.updateByPrimaryKey(ads);
	}
}
