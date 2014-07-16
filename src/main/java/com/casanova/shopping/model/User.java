package com.casanova.shopping.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;
import org.hibernate.annotations.GenericGenerator;

/**
 * 用户
 */
@Entity
@Table(name = "sw_user", catalog = "casanova", uniqueConstraints = { @UniqueConstraint(columnNames = { "u_id" }) })
@Cache(usage=CacheConcurrencyStrategy.READ_WRITE)  
public class User implements Serializable {

	private static final long serialVersionUID = -7532662473422055589L;

	@Id
	@Column(name = "u_id", unique = true, nullable = false)
	@GenericGenerator(name = "generator", strategy = "increment")
	@GeneratedValue(generator = "generator")
	private Integer id;

	@Column(name = "u_user_name", length = 64)
	private String userName;

	@Column(name = "u_password", length = 64)
	private String password;

	@Column(name = "u_email", length = 128)
	private String email;

	@Column(name = "u_gender", length = 1)
	private Integer gender;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Integer getGender() {
		return gender;
	}

	public void setGender(Integer gender) {
		this.gender = gender;
	}
}
