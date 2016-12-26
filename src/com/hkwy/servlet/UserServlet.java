package com.hkwy.servlet;


import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hkwy.model.Page;
import com.hkwy.model.User;
import com.hkwy.model.UserException;
import com.hkwy.service.IUserService;
import com.hkwy.service.impl.UserService;

public class UserServlet extends BaseServlet {
	IUserService userService = new UserService();
	
	public String addInput(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//req.getRequestDispatcher("WEB-INF/jsp/user/add.jsp").forward(req, resp);
		return "WEB-INF/jsp/user/add.jsp";
	}
	
	public String add(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String nickname = req.getParameter("nickname");
		User user = new User(username, password, nickname);
		user.setRole(2);
		userService.add(user);
		return "redirect:user?method=list";
	}
	
	public String updateInput(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		User user = userService.load(id);
		req.setAttribute("user", user);
		return "WEB-INF/jsp/user/update.jsp";
	}
	
	public String update(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		String password = req.getParameter("password");
		String nickname = req.getParameter("nickname");
		User user = new User();
		user.setId(id);
		user.setNickname(nickname);
		user.setPassword(password);
		userService.update(user);
		return "redirect:user?method=list";
	}
	
	public String delete(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		userService.delete(id);
		return "redirect:user?method=list";
	}
	
	public String list(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		//List<User> users = userService.list();
		Page<User> pages = userService.pages();
		req.setAttribute("pages", pages);
		return "WEB-INF/jsp/user/list.jsp";
	}
	
	public String login(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		User user = null;
		try {
			user = userService.login(username, password);
		} catch (UserException e) {
			// TODO Auto-generated catch block
			String msg = e.getMessage();
			req.setAttribute("error", msg);
			return "error:";
		}
		HttpSession session = req.getSession();//创建session
		//session.setMaxInactiveInterval(arg0);//设置session的有效期,单位秒
		//session.setMaxInactiveInterval(10);
		session.setAttribute("loginUser", user);
		return "WEB-INF/jsp/main.jsp";
	}
	
	public String logout(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session = req.getSession();
		session.invalidate();//清空session
		return "redirect:login.jsp";
	}
	
	public String top(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		return "WEB-INF/jsp/top.jsp";
	}
	
	public String left(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		return "WEB-INF/jsp/left.jsp";
	}

	public String welcome(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		return "WEB-INF/jsp/welcome.jsp";
	}
	
	public String updateStatus(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		int id = Integer.parseInt(req.getParameter("id"));
		userService.updateStatus(id);
		return "redirect:user?method=list";
	}

}
