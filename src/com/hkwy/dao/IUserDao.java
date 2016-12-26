package com.hkwy.dao;

import java.util.List;

import com.hkwy.model.Page;
import com.hkwy.model.User;

public interface IUserDao extends IBaseDao<User>{
	public void add(User user);
	public User login(String username);
	public void updateStatus(User user);
}
