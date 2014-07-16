package com.casanova.shopping.service;

import java.util.List;

import com.casanova.shopping.model.User;

public interface UserService {

	public User getUser(Integer id);
	
	public List<User> getUser();
}
