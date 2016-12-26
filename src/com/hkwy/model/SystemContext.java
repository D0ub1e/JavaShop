package com.hkwy.model;

public class SystemContext {
	private static ThreadLocal<Integer> pageSize = new ThreadLocal<Integer>();
	private static ThreadLocal<Integer> pageIndex = new ThreadLocal<Integer>();
	
	public static int getPageSize() {
		return pageSize.get();//从ThreadLocal中取数据
	}
	
	public static void setPageSize(int _pageSize) {
		pageSize.set(_pageSize);//往ThreadLocal中存数据
	}
	
	public static void removePageSize() {
		pageSize.remove();//从ThreadLocal中删除数据
	}
	
	public static int getPageIndex() {
		return pageIndex.get();
	}
	
	public static void setPageIndex(int _pageIndex) {
		pageIndex.set(_pageIndex);
	}
	
	public static void removePageIndex() {
		pageIndex.remove();
	}

}
