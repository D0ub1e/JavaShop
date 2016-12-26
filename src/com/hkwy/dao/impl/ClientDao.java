package com.hkwy.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.hkwy.dao.IClientDao;
import com.hkwy.model.Client;
import com.hkwy.model.Page;
import com.hkwy.model.UserException;
import com.hkwy.util.DBUtil;

public class ClientDao extends BaseDao<Client> implements IClientDao {
	public void add(Client client) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql1 = "select count(*) from t_client where username=?";
		String sql2 = "select count(*) from t_client where phone=?";
		String sql3 = "insert into t_client values(null,?,?,?)";
		try {
			con = DBUtil.getConnection();
			ps = con.prepareStatement(sql1);
			ps.setString(1, client.getUsername());
			rs = ps.executeQuery();
			while(rs.next()) {
				if(rs.getInt(1) > 0) {
					throw new UserException("用户名已被使用");
				}
			}
			ps = con.prepareStatement(sql2);
			ps.setString(1, client.getPhone());
			rs = ps.executeQuery();
			while(rs.next()) {
				if(rs.getInt(1) > 0) {
					throw new UserException("手机号已被使用");
				}
			}
			ps = con.prepareStatement(sql3);
			ps.setString(1, client.getUsername());
			ps.setString(2, client.getPassword());
			ps.setString(3, client.getPhone());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(rs);
			DBUtil.close(ps);
			DBUtil.close(con);
		}
	}
	public Client login(String msg) {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from t_client where username=? or phone=?";
		Client client = null;
		try {
			con = DBUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, msg);
			ps.setString(2, msg);
			rs = ps.executeQuery();
			while(rs.next()) {
				client = new Client();
				client.setId(rs.getInt("id"));
				client.setUsername(rs.getString("username"));
				client.setPassword(rs.getString("password"));
				client.setPhone(rs.getString("phone"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(rs);
			DBUtil.close(ps);
			DBUtil.close(con);
		}
		
		return client;
	}
	

}
