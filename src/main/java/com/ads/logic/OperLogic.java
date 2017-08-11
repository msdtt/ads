package com.ads.logic;

import com.ads.mapper.OperMapper;
import com.ads.model.OperCriteria;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

/**
 * @author zhuxd@wjs.com
 * @date 2017/8/12 4:59
 */
@Component
public class OperLogic{

	@Autowired
	private OperMapper operMapper;

	public boolean verifyPassword(String userName, String password){
		OperCriteria criteria = new OperCriteria();

		criteria.createCriteria().andUserNameEqualTo(userName)
				.andPasswordEqualTo(password);

		Integer count = operMapper.countByExample(criteria);

		if(count > 0){
			return true;
		}
		return false;
	}
}
