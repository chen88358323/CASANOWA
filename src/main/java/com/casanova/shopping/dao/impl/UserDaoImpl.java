package com.casanova.shopping.dao.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Component;
import com.casanova.shopping.dao.UserDao;
import com.casanova.shopping.model.User;

@Component("userDao")
public class UserDaoImpl   implements UserDao {
	@Resource(name="sessionFactory")
	private SessionFactory sessionFactory;
	@Override
	public User queryUser(Integer id) {
		return (User) sessionFactory.getCurrentSession().get(User.class, id);
	}

	@Override
	public List<User> queryUser() {
		List<User> ul=(List<User>) sessionFactory.getCurrentSession().createQuery("from User");
		return ul;
	}

	
}
