package com.jetec.shop.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.jetec.shop.model.AdminBean;


public class BackFilter implements Filter{
	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain)
			throws IOException, ServletException {
		servletRequest.setCharacterEncoding("utf-8");
		servletResponse.setCharacterEncoding("utf-8");
		HttpServletRequest request = (HttpServletRequest) servletRequest;
		HttpServletResponse response = (HttpServletResponse) servletResponse;
		AdminBean adminBean =  (AdminBean) request.getSession().getAttribute("adminLogin");
		
		if (adminBean == null) {
			response.sendRedirect(request.getContextPath() + "/time.jsp");
		} else {
//			if (object == null) {
//				response.sendRedirect(request.getContextPath() + "/shop.jsp");
//			} else {
				chain.doFilter(servletRequest, servletResponse);
//			}
		}
	}
}
