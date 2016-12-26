package com.hkwy.dao.impl;

import java.awt.image.DataBuffer;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hkwy.dao.IBaseDao;
import com.hkwy.model.Page;
import com.hkwy.model.SystemContext;
import com.hkwy.util.DBUtil;

public class BaseDao<T> implements IBaseDao<T> {

	private Class<?> clz;
	private Class<?> getClz() {
		if(clz == null) {
			clz = (Class<?>)((ParameterizedType)(this.getClass()
					.getGenericSuperclass())).getActualTypeArguments()[0];
		}
		return clz;
	}

	private String firstCharLower(String fieldName) {
		return fieldName.toLowerCase();
	}

	private String firstCharUpper(String fieldName) {
		StringBuffer sb = new StringBuffer();
		sb.append((fieldName.charAt(0) + "").toUpperCase());
		sb.append(fieldName.substring(1));
		return sb.toString();
	}

	public void add(T t) {
		Connection con = null;
		PreparedStatement ps = null;
		StringBuffer cloNames = new StringBuffer();//���е��ֶ���
		StringBuffer questions = new StringBuffer();//���е�ռλ��
		Class clz = t.getClass();
		Field fields[] = clz.getDeclaredFields();
		for(Field f:fields) {
			if(!(f.getName()).equals("id")) {
				cloNames.append("," + f.getName());
				questions.append(",?");
			}
		}
		String sql = "insert into t_" + firstCharLower(t.getClass().getSimpleName())
				+ " (" + cloNames.substring(1) + ") values(" + questions.substring(1) + ")";
		try {
			con = DBUtil.getConnection();
			ps = con.prepareStatement(sql);
			String methodNames[] = cloNames.toString().split(",");
			for(int i = 1;i < methodNames.length;i++) {
				String methodName = "get" + this.firstCharUpper(methodNames[i]);
				Method method = t.getClass().getMethod(methodName);
				ps.setObject(i, method.invoke(t));
			}
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(ps);
			DBUtil.close(con);
		}
		
		
	}

	public void delete(int id) {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement ps = null;
		String sql = "delete from t_" + firstCharLower(getClz().getSimpleName()) + " where id=?";
		try {
			con = DBUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(ps);
			DBUtil.close(con);
		}
	}

	public void update(T t) {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement ps = null;
		StringBuffer colNames = new StringBuffer();
		StringBuffer questions = new StringBuffer();
		Class clz = t.getClass();
		Field fields[] = clz.getDeclaredFields();
		for(Field f:fields) {
			if(!(f.getName()).equals("id")) {
				colNames.append("," + f.getName());
				questions.append("," + f.getName() + "=?");
			}
		}
		String sql = "update t_" + firstCharLower(t.getClass().getSimpleName()) + 
				" set " + questions.substring(1) + " where id=?";
		try {
			con = DBUtil.getConnection();
			ps = con.prepareStatement(sql);
			String methodNames[] = colNames.toString().split(",");
			for(int i = 1;i < methodNames.length;i++) {
				String methodName = "get" + firstCharUpper(methodNames[i]);
				Method method = t.getClass().getMethod(methodName);
				ps.setObject(i, method.invoke(t));
			}
			String methodName = "getId";
			Method method = t.getClass().getMethod(methodName);
			ps.setObject(methodNames.length, method.invoke(t));
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(ps);
			DBUtil.close(con);
		}
	}

	public T load(int id) {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		StringBuffer cloNames = new StringBuffer();
		Field fields[] = getClz().getDeclaredFields();
		for(Field f:fields) {
			cloNames.append("," + f.getName());
		}
		T t = null;
		String sql = "select * from t_" + firstCharLower(getClz().getSimpleName()) + " where id=?";
		try {
			con = DBUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setInt(1, id);
			rs = ps.executeQuery();
			while(rs.next()) {
				t = (T)getClz().newInstance();
				String methodNames[] = cloNames.toString().split(",");
				for(int i = 1;i < methodNames.length;i++) {
					String methodName = "set" + firstCharUpper(methodNames[i]);
					Method method = t.getClass().getMethod(methodName, fields[i - 1].getType());
					method.invoke(t, rs.getObject(methodNames[i]));
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(rs);
			DBUtil.close(ps);
			DBUtil.close(con);
		}
		
		return t;
	}

	public List<T> list() {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from t_" + firstCharLower(getClz().getSimpleName());
		T t = null;
		List<T> ts = new ArrayList<T>();
		StringBuffer cloNames = new StringBuffer();
		Field fields[] = getClz().getDeclaredFields();
		for(Field f:fields) {
			cloNames.append("," + f.getName());
		}
		try {
			con = DBUtil.getConnection();
			ps = con.prepareStatement(sql);
			rs = ps.executeQuery();
			while(rs.next()) {
				t = (T)getClz().newInstance();
				String methodNames[] = cloNames.toString().split(",");
				for(int i = 1;i < methodNames.length;i++) {
					String methodName = "set" + firstCharUpper(methodNames[i]);
					Method method = t.getClass().getMethod(methodName, fields[i - 1].getType());
					method.invoke(t, rs.getObject(methodNames[i]));
				}
				ts.add(t);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(rs);
			DBUtil.close(ps);
			DBUtil.close(con);
		}
		return ts;
	}

	public Page<T> pages() {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		int pageSize = SystemContext.getPageSize();
		int pageIndex = SystemContext.getPageIndex();
		int totalRecord = 0;
		int start = (pageIndex - 1)*pageSize;
		String sql = "select * from t_" + firstCharLower(getClz().getSimpleName()) + " limit ?,?";
		String sqlCount = "select count(*) from  t_" + firstCharLower(getClz().getSimpleName());
		T t = null;
		List<T> ts = new ArrayList<T>();
		Page<T> pages = new Page<T>();
		StringBuffer cloNames = new StringBuffer();
		Field fields[] = getClz().getDeclaredFields();
		for(Field f:fields) {
			cloNames.append("," + f.getName());
		}
		try {
			con = DBUtil.getConnection();
			ps = con.prepareStatement(sqlCount);
			rs = ps.executeQuery();
			while(rs.next()) {
				totalRecord = rs.getInt(1);
			}
			ps = con.prepareStatement(sql);
			ps.setInt(1, start);
			ps.setInt(2, pageSize);
			rs = ps.executeQuery();
			while(rs.next()) {
				t = (T)getClz().newInstance();
				String methodNames[] = cloNames.toString().split(",");
				for(int i = 1;i < methodNames.length;i++) {
					String methodName = "set" + firstCharUpper(methodNames[i]);
					Method method = t.getClass().getMethod(methodName, fields[i - 1].getType());
					method.invoke(t, rs.getObject(methodNames[i]));
				}
				ts.add(t);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(rs);
			DBUtil.close(ps);
			DBUtil.close(con);
		}
		int totalPage = (totalRecord - 1)/pageSize + 1;
		pages.setDatas(ts);
		pages.setPageIndex(pageIndex);
		pages.setPageSize(pageSize);
		pages.setTotalRecord(totalRecord);
		pages.setTotalPage(totalPage);
		return pages;
	}

}
