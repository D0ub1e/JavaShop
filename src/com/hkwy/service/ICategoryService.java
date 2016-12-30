package com.hkwy.service;

import java.util.List;

import com.hkwy.model.Category;
import com.hkwy.model.Page;

public interface ICategoryService {
	public void add(Category category);
	public void delete(int id);
	public void update(Category category);
	public Category load(int id);
	public List<Category> list();
	public Page<Category> pages();
	public Category loadByName (String msg);

}
