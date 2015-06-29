package com.szgas.bsm.security.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * Roles entity. @author MyEclipse Persistence Tools
 */

public class Roles implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;
	private Integer enable;//0 禁用, 1启用
	private String name;
	private String remark;
	private Set<Resources> resources = new HashSet<Resources>(0);
	
	/** default constructor */
	public Roles() {
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Integer getEnable() {
		return this.enable;
	}

	public void setEnable(Integer enable) {
		this.enable = enable;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Set<Resources> getResources() {
		return resources;
	}



	public void setResources(Set<Resources> resources) {
		this.resources = resources;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getRemark() {
		return remark;
	}


}