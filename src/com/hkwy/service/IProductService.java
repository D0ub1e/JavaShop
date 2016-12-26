package com.hkwy.service;

import java.util.List;

import com.hkwy.model.Page;
import com.hkwy.model.Product;

public interface IProductService {
	public void add(Product product);
	public void delete(int id);
	public void update(Product product);
	public Product load(int id);
	public List<Product> list();
	public Page<Product> pages();
	public List<Product> loadByName(String msg);
	public List<Product> loadByCategory(int cid);
}
