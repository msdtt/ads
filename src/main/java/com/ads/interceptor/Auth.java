package com.ads.interceptor;

import java.lang.annotation.*;

/**
 * @author zhuxd@wjs.com
 * @date 2017/8/11 23:39
 */
@Target({ElementType.TYPE, ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
@Documented
public @interface Auth{
}
