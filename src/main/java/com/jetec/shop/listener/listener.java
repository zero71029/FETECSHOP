package com.jetec.shop.listener;


import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;



@WebListener
public class listener implements ServletContextListener{
//	@Autowired
//	ProductTypeRepository ptr;
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		ServletContextListener.super.contextInitialized(sce);
		System.out.println("*****初始化*****");
		ServletContext app =sce.getServletContext();
//		List<String> love1 = ptr.findLove1();
//		List<ProductTypeBean> love2 = ptr.findAll();
//		app.setAttribute("love1", love1);
//		app.setAttribute("love2", love2);
		
	}

}
