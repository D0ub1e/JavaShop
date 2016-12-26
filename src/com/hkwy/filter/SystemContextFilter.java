package com.hkwy.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import com.hkwy.model.SystemContext;

public class SystemContextFilter implements Filter {
	private static int pageSize;
	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest req, ServletResponse resp,
			FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		int pageIndex;
		try {
			pageIndex = Integer.parseInt(req.getParameter("pageIndex"));
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			pageIndex = 1;
		}
		
		try {
			SystemContext.setPageIndex(pageIndex);
			SystemContext.setPageSize(pageSize);
			chain.doFilter(req, resp);
		} finally {
			SystemContext.removePageIndex();
			SystemContext.removePageSize();
		}
		
	}

	public void init(FilterConfig config) throws ServletException {
		// TODO Auto-generated method stub
		try {
			pageSize = Integer.parseInt(config.getInitParameter("pageSize"));
		} catch (NumberFormatException e) {
			// TODO Auto-generated catch block
			pageSize = 5;
		}
	}

}
