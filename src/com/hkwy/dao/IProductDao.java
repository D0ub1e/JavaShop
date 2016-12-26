package com.hkwy.dao;

import java.util.List;

import com.hkwy.model.Page;
import com.hkwy.model.Product;

public interface IProductDao extends IBaseDao<Product>{
	public List<Product> loadByName(String msg);
	public List<Product> loadByCategory(int cid);

}
