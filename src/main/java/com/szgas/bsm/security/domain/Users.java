package com.szgas.bsm.security.domain;

import java.io.Serializable;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/**
 * Users entity. @author MyEclipse Persistence Tools
 */
public class Users implements Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;
	private Integer enable;//0 禁用, 1启用
	private String password;
	private String account;
	private String nickname;
	private Set<Roles> roles = new HashSet<Roles>(0);
	private List<City> city;
	
	// Constructors

	/** default constructor */
	public Users() {
	}

	// Property accessors

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

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getAccount() {
		return this.account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public Set<Roles> getRoles() {
		return roles;
	}

	public void setRoles(Set<Roles> roles) {
		this.roles = roles;
	}

	public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public List<City> getCity() {
		return city;
	}

	public void setCity(List<City> city) {
		this.city = city;
	}


}