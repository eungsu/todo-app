package com.hta.todo.dao;

import java.sql.SQLException;
import java.util.List;

import com.hta.todo.vo.Todo;

import helper.DaoHelper;

public class TodoDao {

	private static TodoDao instance = new TodoDao();
	private TodoDao() {}
	public static TodoDao getInstance() {
		return instance;
	}
	
	private DaoHelper helper = DaoHelper.getInstance();
	
	public void insertTodo(Todo todo) throws SQLException {
		// TODO 할일번호, 카테고리아이디, 제목, 처리예정일, 내용, 사용자 아이디를 테이블에 추가시킨다.
	}
	
	public List<Todo> getAllMyTodos(String userId) throws SQLException {
		// TODO 전달받은 사용자아이디와 일치하는 사용자가 등록한 모든 할일정보를 반환한다.
		return null;
	}
	
	public Todo getTodoByNo(int todoNo) throws SQLException {
		// TODO 지정된 할일번호에 해당하는 할일정보를 반환한다.
		return null;
	}
	
	public void updateTodo(Todo todo) throws SQLException {
		// TODO 제목, 처리예저일, 내용, 처리결과, 완료여부, 완료날짜, 최종 수정일 정보를 수정한다.
	}
	
	public void deleteTodo(int todoNo) throws SQLException {
		// TODO 지정된 할일번호에 해당하는 할일정보를 삭제한다.
	}
}
