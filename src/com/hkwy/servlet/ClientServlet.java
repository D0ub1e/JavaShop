package com.hkwy.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hkwy.model.Client;
import com.hkwy.service.IClientService;
import com.hkwy.service.impl.ClientService;



public class ClientServlet extends BaseServlet {
	private static IClientService clientService = new ClientService();
	public String create(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		return "WEB-INF/client/create.jsp";
	}
	
	public String add(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String phone = req.getParameter("phone");
		Client client = new Client(username, password, phone);
		clientService.add(client);
		return "WEB-INF/client/login.jsp";
	}
	
	public String loginInput(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		return "WEB-INF/client/login.jsp";
	}
	
	public String login(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String msg = req.getParameter("msg");
		String password = req.getParameter("password");
		Client loginClient = clientService.login(msg, password);
		HttpSession session = req.getSession();
		session.setAttribute("loginClient", loginClient);
		return "redirect:index.html";
	}

}
