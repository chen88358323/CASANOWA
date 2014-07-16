package com.casanova.shopping.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.hibernate.annotations.GenericGenerator;

/**
 * 角色
 */
@Entity
@Table(name="sw_role", catalog="casanova", uniqueConstraints={@UniqueConstraint(columnNames={"r_role_name"})})
public class Role implements Serializable {

	private static final long serialVersionUID = -4887201549675058078L;

	@Id
	@Column(name = "r_id", unique = true, nullable = false)
	@GenericGenerator(name = "generator", strategy = "increment")
	@GeneratedValue(generator = "generator")
	private Integer id;
	
	@Column(name = "r_role_name")
	private String roleName;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	
}
