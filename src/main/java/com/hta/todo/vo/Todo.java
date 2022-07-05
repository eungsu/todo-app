package com.hta.todo.vo;

import java.util.Date;

public class Todo {

	private int no;
	private Category category;
	private String title;
	private Date dueDate;
	private String description;
	private String result;
	private String completed;
	private Date completedDate;
	private Date updatedDate;
	private Date createdDate;
	private User user;
	
	public Todo() {}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getDueDate() {
		return dueDate;
	}

	public void setDueDate(Date dueDate) {
		this.dueDate = dueDate;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public String getCompleted() {
		return completed;
	}

	public void setCompleted(String completed) {
		this.completed = completed;
	}

	public Date getCompletedDate() {
		return completedDate;
	}

	public void setCompletedDate(Date completedDate) {
		this.completedDate = completedDate;
	}

	public Date getUpdatedDate() {
		return updatedDate;
	}

	public void setUpdatedDate(Date updatedDate) {
		this.updatedDate = updatedDate;
	}

	public Date getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(Date createdDate) {
		this.createdDate = createdDate;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Todo [no=" + no + ", category=" + category + ", title=" + title + ", dueDate=" + dueDate
				+ ", description=" + description + ", result=" + result + ", completed=" + completed
				+ ", completedDate=" + completedDate + ", updatedDate=" + updatedDate + ", createdDate=" + createdDate
				+ ", user=" + user + "]";
	}
	
}
