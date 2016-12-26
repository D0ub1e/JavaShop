package com.hkwy.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BaseServlet extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String method = req.getParameter("method");
		try {
			Method m = this.getClass().getMethod(method, HttpServletRequest.class, HttpServletResponse.class);
			String rel = (String)m.invoke(this, req, resp);
			if(rel.startsWith("redirect:")) {
				resp.sendRedirect(req.getContextPath() + "/" + rel.substring("redirect:".length()));
			}
			else if(rel.startsWith("error:")) {
				req.getRequestDispatcher("/error.jsp").forward(req, resp);
			}
			else {
				req.getRequestDispatcher(rel).forward(req, resp);
			}
			
		} catch (SecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
