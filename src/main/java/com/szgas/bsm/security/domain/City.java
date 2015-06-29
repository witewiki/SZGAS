package com.szgas.bsm.security.domain;

public class City {
	private int citySiteId;//城市站ID
	private int cityId;//城市ID
	private String cityName;//城市名称
	private int provinceId;//省份ID
	private int sort;//排序
	private String spell;//拼音
	private String cityCode;//城市区号
	
	public int getCitySiteId() {
		return citySiteId;
	}
	public void setCitySiteId(int citySiteId) {
		this.citySiteId = citySiteId;
	}
	public int getCityId() {
		return cityId;
	}
	public void setCityId(int cityId) {
		this.cityId = cityId;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public int getProvinceId() {
		return provinceId;
	}
	public void setProvinceId(int provinceId) {
		this.provinceId = provinceId;
	}
	public int getSort() {
		return sort;
	}
	public void setSort(int sort) {
		this.sort = sort;
	}
	public String getSpell() {
		return spell;
	}
	public void setSpell(String spell) {
		this.spell = spell;
	}
	public String getCityCode() {
		return cityCode;
	}
	public void setCityCode(String cityCode) {
		this.cityCode = cityCode;
	}
	
	
}
