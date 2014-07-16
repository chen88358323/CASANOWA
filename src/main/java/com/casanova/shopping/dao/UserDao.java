package com.casanova.shopping.dao;

import java.util.List;

import com.casanova.shopping.model.User;

public interface UserDao {
	
	public User queryUser(Integer id);
	
	public List<User> queryUser();
}
