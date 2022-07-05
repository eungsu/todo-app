package com.hta.todo.dao;

import java.sql.SQLException;

import com.hta.todo.vo.User;

import helper.DaoHelper;

public class UserDao {

	private static UserDao instance = new UserDao();
	private UserDao() {}
	public static UserDao getInstance() {
		return instance;
	}
	
	private DaoHelper helper = DaoHelper.getInstance();
	
	public User getUserByEmail(String email) throws SQLException {
		String sql = "select * from model2_users where user_email = ?";
		
		return helper.selectOne(sql, rs -> {
			User user = new User();
			user.setId(rs.getString("user_id"));
			user.setEmail(rs.getString("user_email"));
			user.setPassword(rs.getString("user_password"));
			user.setName(rs.getString("user_name"));
			user.setTel(rs.getString("user_tel"));
			
			return user;
		}, email);
	}
}
