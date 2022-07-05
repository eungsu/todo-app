package com.hta.todo.dao;

import java.sql.SQLException;
import java.util.List;

import com.hta.todo.vo.Category;

import helper.DaoHelper;

public class CategoryDao {

	private static CategoryDao instance = new CategoryDao();
	private CategoryDao() {}
	public static CategoryDao getInstance() {
		return instance;
	}
	
	private DaoHelper helper = DaoHelper.getInstance();
	
	/**
	 * 모든 할일 카테고리 목록을 반환한다.
	 * @return 카테고리 목록
	 * @throws SQLException
	 */
	public List<Category> getAllCategories() throws SQLException {
		String sql = "select * from model2_todo_categories order by todo_category_id asc";
		return helper.selectList(sql, rs -> {
			Category category = new Category();
			category.setId(rs.getString("todo_category_id"));
			category.setName(rs.getString("todo_category_name"));
			
			return category;
		});
	}
}
