package com.hkwy.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hkwy.model.Product;
import com.hkwy.service.IProductService;
import com.hkwy.service.impl.ProductService;



public class IndexServlet extends HttpServlet {
	private IProductService productService = new ProductService();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		this.doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<Product> products = productService.list();
		req.setAttribute("products", products);
		req.getRequestDispatcher("WEB-INF/client/index.jsp").forward(req, resp);
	}

}
