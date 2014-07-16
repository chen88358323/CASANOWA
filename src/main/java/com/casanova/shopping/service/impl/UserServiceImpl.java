package com.casanova.shopping.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.casanova.shopping.dao.UserDao;
import com.casanova.shopping.model.User;
import com.casanova.shopping.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Resource(name="userDao")
	private UserDao userDao;
	
	@Override
	public User getUser(Integer id) {
		return userDao.queryUser(id);
	}

	@Override
	public List<User> getUser() {
		return userDao.queryUser();
	}

}
