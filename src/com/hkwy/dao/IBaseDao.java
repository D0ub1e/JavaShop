package com.hkwy.dao;

import java.util.List;

import com.hkwy.model.Page;

public interface IBaseDao<T> {
	public void add(T t);
	public void delete(int id);
	public void update(T t);
	public T load(int id);
	public List<T> list();
	public Page<T> pages();

}
