package com.hkwy.service.impl;

import java.util.List;

import com.hkwy.dao.ICategoryDao;
import com.hkwy.dao.impl.CategoryDao;
import com.hkwy.model.Category;
import com.hkwy.model.Page;
import com.hkwy.service.ICategoryService;

public class CategoryService implements ICategoryService {
	private static ICategoryDao categoryDao = new CategoryDao();

	public void add(Category category) {
		// TODO Auto-generated method stub
		categoryDao.add(category);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		categoryDao.delete(id);
	}

	public void update(Category category) {
		// TODO Auto-generated method stub
		categoryDao.update(category);
	}

	public Category load(int id) {
		// TODO Auto-generated method stub
		return categoryDao.load(id);
	}

	public List<Category> list() {
		// TODO Auto-generated method stub
		return categoryDao.list();
	}

	public Page<Category> pages() {
		// TODO Auto-generated method stub
		return categoryDao.pages();
	}

	public Category loadByName(String msg) {
		// TODO Auto-generated method stub
		return categoryDao.loadByName(msg);
	}

}
