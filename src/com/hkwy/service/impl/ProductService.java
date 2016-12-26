package com.hkwy.service.impl;

import java.util.List;

import com.hkwy.dao.IProductDao;
import com.hkwy.dao.impl.ProductDao;
import com.hkwy.model.Page;
import com.hkwy.model.Product;
import com.hkwy.service.IProductService;

public class ProductService implements IProductService {
	private static IProductDao productDao = new ProductDao();

	public void add(Product product) {
		// TODO Auto-generated method stub
		productDao.add(product);
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		productDao.delete(id);
	}

	public void update(Product product) {
		// TODO Auto-generated method stub
		productDao.update(product);
	}

	public Product load(int id) {
		// TODO Auto-generated method stub
		return productDao.load(id);
	}

	public List<Product> list() {
		// TODO Auto-generated method stub
		return productDao.list();
	}

	public Page<Product> pages() {
		// TODO Auto-generated method stub
		return productDao.pages();
	}

	public List<Product> loadByName(String msg) {
		// TODO Auto-generated method stub
		return productDao.loadByName(msg);
	}

	public List<Product> loadByCategory(int cid) {
		// TODO Auto-generated method stub
		return productDao.loadByCategory(cid);
	}
	

}
