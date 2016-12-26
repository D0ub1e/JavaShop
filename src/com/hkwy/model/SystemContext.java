package com.hkwy.model;

public class SystemContext {
	private static ThreadLocal<Integer> pageSize = new ThreadLocal<Integer>();
	private static ThreadLocal<Integer> pageIndex = new ThreadLocal<Integer>();
	
	public static int getPageSize() {
		return pageSize.get();//��ThreadLocal��ȡ����
	}
	
	public static void setPageSize(int _pageSize) {
		pageSize.set(_pageSize);//��ThreadLocal�д�����
	}
	
	public static void removePageSize() {
		pageSize.remove();//��ThreadLocal��ɾ������
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
