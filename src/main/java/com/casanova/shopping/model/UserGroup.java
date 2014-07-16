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
 * 用户组
 */
@Entity
@Table(name="sw_user_group", catalog="casanova", uniqueConstraints={@UniqueConstraint(columnNames={"ug_group_name"})})
public class UserGroup implements Serializable {

	private static final long serialVersionUID = -1066873828926814281L;

	@Id
	@Column(name = "ug_id", unique = true, nullable = false)
	@GenericGenerator(name = "generator", strategy = "increment")
	@GeneratedValue(generator = "generator")
	private Integer id;
	
	@Column(name = "ug_group_name")
	private String groupName;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getGroupName() {
		return groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	
}
