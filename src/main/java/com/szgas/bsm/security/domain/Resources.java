package com.szgas.bsm.security.domain;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

/**
 * Resources entity. @author MyEclipse Persistence Tools
 */

public class Resources implements Serializable {

    private static final long serialVersionUID = 2458802581278517876L;
    private Integer id;
    private Integer pid;
    private String name;// 名称
    private String pname;// 父菜单名称
    private String remark;// 备注
    private String ico;// 图标路径
    private String url;
    private Integer enable;// 0 禁用, 1启用
    private Integer seq;// 优先级

    private Set<Roles> roles = new HashSet<Roles>(0);
    private Set<Resources> resources = new HashSet<Resources>();

    // Constructors

    /** default constructor */
    public Resources() {
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Integer getId() {
        if( this.id == null ){
            return -1;
        }
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUrl() {
        if( this.url == null || "".equals(this.url.trim()) ){
            return "#";
        }
        return this.url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<Roles> getRoles() {
        return roles;
    }

    public void setRoles(Set<Roles> roles) {
        this.roles = roles;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public Integer getPid() {
        return pid;
    }

    public void setResources(Set<Resources> resources) {
        this.resources = resources;
    }

    public Set<Resources> getResources() {
        return resources;
    }

    public String getIco() {
        if( this.ico == null || "".equals(this.ico.trim()) ){
            return "fa fa-angle-right";
        }
        return ico;
    }

    public void setIco(String ico) {
        this.ico = ico;
    }

    public Integer getEnable() {
        return enable;
    }

    public void setEnable(Integer enable) {
        this.enable = enable;
    }

    public Integer getSeq() {
        return seq;
    }

    public void setSeq(Integer seq) {
        this.seq = seq;
    }

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

}