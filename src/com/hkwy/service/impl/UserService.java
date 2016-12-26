package com.hkwy.service.impl;

import com.hkwy.dao.IUserDao;
import com.hkwy.dao.impl.UserDao;
import com.hkwy.model.Page;
import com.hkwy.model.User;
import com.hkwy.model.UserException;
import com.hkwy.service.IUserService;
import com.hkwy.util.CodeUtil;

import java.util.List;


public class UserService implements IUserService {
	private IUserDao userDao = new UserDao();

	public void add(User user) {
		// TODO Auto-generated method stub
		String password = user.getPassword();
		String newPassword = CodeUtil.getMD5Encoding(password);
		user.setPassword(newPassword);
		userDao.add(user);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		userDao.delete(id);
	}

	public void update(User user) {
		// TODO Auto-generated method stub
		String password = user.getPassword();
		String newPassword = CodeUtil.getMD5Encoding(password);
		user.setPassword(newPassword);
		userDao.update(user);
	}

	public User load(int id) {
		// TODO Auto-generated method stub
		return userDao.load(id);
	}

	public List<User> list() {
		// TODO Auto-generated method stub
		return userDao.list();
	}
	
	public User login(String username, String password) {
		User user = userDao.login(username);
		if(user == null) {
			throw new UserException("Don't find this User");
		}
		String newPassword = CodeUtil.getMD5Encoding(password);
		System.out.println(newPassword);
		if(!user.getPassword().equals(newPassword)) {
			throw new UserException("Wrong password");
		}
		if(user.getStatus() == 2) {
			throw new UserException("NO Activity");
		}
		return user;
	}

	public void updateStatus(int id) {
		// TODO Auto-generated method stub
		User user = this.load(id);
		if(user.getStatus() == 1) {
			user.setStatus(2);
		}
		else if(user.getStatus() == 2) {
			user.setStatus(1);
		}
		
		userDao.updateStatus(user);
	}

	public Page<User> pages() {
		// TODO Auto-generated method stub
		return userDao.pages();
	}

}
