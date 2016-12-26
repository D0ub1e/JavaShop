package com.hkwy.service;

import java.util.List;

import com.hkwy.model.Page;
import com.hkwy.model.User;

public interface IUserService {
	public void add(User user);
	public void delete(int id);
	public void update(User user);
	public User load(int id);
	public List<User> list();
	public User login(String username, String password);
	public void updateStatus(int id);
	public Page<User> pages();
}
