/**
 * 项目名称:	OpenSource
 * 文件名称:	AppContext.java
 * 包名:		 com.ddas.common.context
 * 创建人 ：	shaojunxiang
 * 创建日期:	2016/6/24
 * Copyright (c) 2016, All Rights Reserved.
 */
package com.ddas.common.context;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanNameAware;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;

/**
 * ClassName:	AppContext
 * Function: 	todo ADD FUNCTION	
 *
 * @author shaojunxiang
 * @date 11:16
 * @since JDK 1.6      
 */
public class AppContext implements BeanNameAware,ApplicationContextAware {

    @Override
    public void setBeanName(String name) {

    }

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {

    }
}
