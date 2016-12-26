package com.hkwy.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.hkwy.dao.IUserDao;
import com.hkwy.model.Page;
import com.hkwy.model.SystemContext;
import com.hkwy.model.User;
import com.hkwy.model.UserException;
import com.hkwy.util.DBUtil;

public class UserDao extends BaseDao<User> implements IUserDao {

	public void add(User user) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "insert into t_user values(null,?,?,?,?,?)";
		String sqlCount = "select count(*) from t_user where username=?";
		try {
			con = DBUtil.getConnection();
			ps = con.prepareStatement(sqlCount);
			ps.setString(1, user.getUsername());
			rs = ps.executeQuery();
			while(rs.next()) {
				if(rs.getInt(1) > 0) {
					throw new UserException("该用户名以存在,不能添加");
				}
			}
			ps = con.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			ps.setString(3, user.getNickname());
			ps.setInt(4, user.getRole());
			ps.setInt(5, 1);
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally {
			DBUtil.close(rs);
			DBUtil.close(ps);
			DBUtil.close(con);
		}
	}

	
	public User login(String username) {
		Connection con = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		String sql = "select * from t_user where username=?";
		User user = null;
		try {
			con = DBUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setString(1, username);
			rs = ps.executeQuery();
			while(rs.next()) {
				user = new User();
				user.setId(rs.getInt("id"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setNickname(rs.getString("nickname"));
				user.setRole(rs.getInt("role"));
				user.setStatus(rs.getInt("status"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(rs);
			DBUtil.close(ps);
			DBUtil.close(con);
		}
		return user;
	}

	public void updateStatus(User user) {
		// TODO Auto-generated method stub
		Connection con = null;
		PreparedStatement ps = null;
		String sql = "update t_user set status=? where id=?";
		try {
			con = DBUtil.getConnection();
			ps = con.prepareStatement(sql);
			ps.setInt(1, user.getStatus());
			ps.setInt(2, user.getId());
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			DBUtil.close(ps);
			DBUtil.close(con);
		}
	}



}
