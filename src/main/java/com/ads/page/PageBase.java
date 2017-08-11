package com.ads.page;


import lombok.Data;

import java.util.List;

/**
 * @author zhuxd@wjs.com
 * @date 2017/8/12 2:15
 */
@Data
public class PageBase<T>{

	List<T> rows;

	Integer currPage;

	Integer totalPage;

	Integer records;

}
