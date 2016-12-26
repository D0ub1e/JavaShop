package com.hkwy.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hkwy.model.Category;
import com.hkwy.model.Page;
import com.hkwy.service.ICategoryService;
import com.hkwy.service.impl.CategoryService;



public class CategoryServlet extends BaseServlet {
	private static ICategoryService categoryService = new CategoryService();
	public String addInput(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		return "WEB-INF/jsp/category/add.jsp";
	}
	
	public String add(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String name = req.getParameter("name");
		Category category = new Category(name);
		categoryService.add(category);
		return "redirect:category?method=list";
	}
	
	public String list(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		Page<Category> pages = categoryService.pages();
		req.setAttribute("pages", pages);
		return "WEB-INF/jsp/category/list.jsp";
	}

}
