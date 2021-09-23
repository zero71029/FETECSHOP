package com.jetec.shop.listener;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.jetec.shop.model.ProductTypeBean;
import com.jetec.shop.repository.ProductRepository;
import com.jetec.shop.repository.ProductTypeRepository;

@Component
public class BeanContextListener implements ServletContextListener {
	
	@Autowired
	ProductTypeRepository ptr;
    @Override
    public void contextInitialized(ServletContextEvent sce) {    	
        System.out.println("bean context 初始化");
        List<ProductTypeBean> list = ptr.findAll();
        for(ProductTypeBean p : list)System.out.println(p);
    	ServletContext app =sce.getServletContext();
    	List<String> love1 = ptr.findLove1();
    	List<ProductTypeBean> love2 = ptr.findAll();    
    	app.setAttribute("love1", love1);
    	app.setAttribute("love2", love2);
    }


    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("bean context 销毁");
    }
}