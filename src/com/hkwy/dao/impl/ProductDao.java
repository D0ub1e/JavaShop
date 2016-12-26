package com.hkwy.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hkwy.dao.IProductDao;
import com.hkwy.model.Category;
import com.hkwy.model.Page;
import com.hkwy.model.Product;
import com.hkwy.util.DBUtil;

public class ProductDao extends BaseDao<Product> implements IProductDao {

	public List<Product> loadByName(String msg) {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from t_product where name like '%" + msg + "%' and status=?";
		List<Product> products = new ArrayList<Product>();
		Product product = null;
		try {
			con = DBUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setInt(1, 1);
			rs = ps.executeQuery();
			while(rs.next()) {
				product = new Product();
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("name"));
				product.setDisc(rs.getString("disc"));
				product.setDiscount(rs.getDouble("discount"));
				product.setImg(rs.getString("img"));
				product.setNum(rs.getInt("num"));
				product.setPrice(rs.getDouble("price"));
				product.setTotal(rs.getInt("total"));
				products.add(product);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return products;
	}

	public List<Product> loadByCategory(int cid) {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from t_product where cid=?";
		List<Product> products = new ArrayList<Product>();
		Product product = null;
		try {
			con = DBUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setInt(1, cid);
			rs = ps.executeQuery();
			while(rs.next()) {
				product = new Product();
				product.setId(rs.getInt("id"));
				product.setName(rs.getString("name"));
				product.setDisc(rs.getString("disc"));
				product.setDiscount(rs.getDouble("discount"));
				product.setImg(rs.getString("img"));
				product.setNum(rs.getInt("num"));
				product.setPrice(rs.getDouble("price"));
				product.setTotal(rs.getInt("total"));
				products.add(product);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return products;
	}

	

}
