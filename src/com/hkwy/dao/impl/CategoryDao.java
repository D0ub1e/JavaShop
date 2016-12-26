package com.hkwy.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.hkwy.dao.ICategoryDao;
import com.hkwy.model.Category;
import com.hkwy.model.Page;
import com.hkwy.util.DBUtil;

public class CategoryDao extends BaseDao<Category> implements ICategoryDao {

	public Category loadByName(String msg) {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from t_category where name=?";
		Category category = null;
		try {
			con = DBUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, msg);
			rs = ps.executeQuery();
			while(rs.next()) {
				category = new Category();
				category.setId(rs.getInt("id"));
				category.setName(rs.getString("name"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return category;
	}

	
}
