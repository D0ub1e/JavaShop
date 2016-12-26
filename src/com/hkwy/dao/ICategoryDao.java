package com.hkwy.dao;

import com.hkwy.model.Category;

public interface ICategoryDao extends IBaseDao<Category> { 
	public Category loadByName(String msg);

}
