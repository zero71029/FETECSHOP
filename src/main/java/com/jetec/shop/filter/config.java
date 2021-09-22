package com.jetec.shop.filter;

import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class config {	
    @Bean
    public FilterRegistrationBean filterRegistrationBean(){
        FilterRegistrationBean registrationBean = new FilterRegistrationBean(new UserFilter());
        //过滤路径
        registrationBean.addUrlPatterns("/user/*");
        //添加不过滤路径
        registrationBean.addInitParameter("noFilter","/,/two");
        registrationBean.setName("UserFilter");
        registrationBean.setOrder(1);
        return registrationBean;
    }
    @Bean
    public FilterRegistrationBean filterCart(){
        FilterRegistrationBean registrationBean = new FilterRegistrationBean(new CartFilter());
        //过滤路径
        registrationBean.addUrlPatterns("/checkout","/shopCart","/Payment");
        //添加不过滤路径
        registrationBean.addInitParameter("noFilter","/,/two");
        registrationBean.setName("CartFilter");
        registrationBean.setOrder(1);
        return registrationBean;
    }
    @Bean
    public FilterRegistrationBean filterBack(){
        FilterRegistrationBean registrationBean = new FilterRegistrationBean(new BackFilter());
        //过滤路径
        registrationBean.addUrlPatterns("/backstage/*");
        //添加不过滤路径
        registrationBean.addInitParameter("noFilter","/backstage/time.jsp");
        registrationBean.setName("BackFilter");
        registrationBean.setOrder(1);
        return registrationBean;
    }
}
