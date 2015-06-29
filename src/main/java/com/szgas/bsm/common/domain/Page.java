package com.szgas.bsm.common.domain;

import java.io.Serializable;
import java.util.List;

public class Page<E> implements Serializable{
	private static final long serialVersionUID = 1L;
	private Integer offSet;
	private Integer rowsDisplayed = 10;//每页显示10条数据
	private Integer rowCount;//总记录数
	private Integer pageNow = 1;//当前页
	private Integer pageCount;//总页数
	
	/* pageStart & pageEnd 页面只显示1~7数字的页码 */
	private Integer pageStart = 1;//遍历起始页
	private Integer pageEnd = 7;//遍历结束页
	
	private Integer pageNum = 7;//显示页脚数
	
	private List<E> result;
	
	public Integer getOffSet() {
		offSet = rowsDisplayed*(pageNow-1);
		if(rowCount!=null) {
			if(offSet>rowCount) {
				offSet = rowCount-rowsDisplayed;
			}
		}
		if(offSet<0) {
			offSet=0;
		}
		return offSet;
	}
	public void setOffSet(Integer offSet) {
		this.offSet = offSet;
	}
	public Integer getRowsDisplayed() {
		return rowsDisplayed;
	}
	public void setRowsDisplayed(Integer rowsDisplayed) {
		this.rowsDisplayed = rowsDisplayed;
	}
	public Integer getRowCount() {
		return rowCount;
	}
	public void setRowCount(Integer rowCount) {
		this.rowCount = rowCount;
	}
	public Integer getPageNow() {
		return pageNow;
	}
	public void setPageNow(Integer pageNow) {
		this.pageNow = pageNow;
	}
	public Integer getPageStart() {
		return pageStart;
	}
	public void setPageStart(Integer pageStart) {
		this.pageStart = pageStart;
	}
	public Integer getPageEnd() {
		return pageEnd;
	}
	public void setPageEnd(Integer pageEnd) {
		this.pageEnd = pageEnd;
	}
	
	public Integer getPageNum() {
		return pageNum;
	}
	public void setPageNum(Integer pageNum) {
		this.pageNum = pageNum;
	}
	public Integer getPageCount() {
		return pageCount;
	}
	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}
	

	private final int NUM = 3;
	private final int THELASTNUM = 6;
	public void validate(){
		//求总页数
		if( rowCount!=0 ){
			if( rowCount%getRowsDisplayed()==0 ){
				setPageCount(rowCount/getRowsDisplayed());
			}else {
				setPageCount(rowCount/getRowsDisplayed()+1);
			}
		} else {
			setPageCount(0);
		}
		//判断当前页是否大于显示的页脚数
		if( getPageNow()>getPageNum() ){
			if( !(getPageNow()>=getPageCount()
					|| getPageNow()+1>=getPageCount()
					|| getPageNow()+2>=getPageCount()
					|| getPageNow()+3>=getPageCount()) ){
				setPageStart(getPageNow()-NUM);
				setPageEnd(getPageNow()+NUM);
			}else{
				setPageStart(getPageNow()-THELASTNUM);
				setPageEnd(getPageNow());
			}			
		}
		
		//判断当前页是否大于总页数
		if(getPageNow()>getPageCount()) {
			setPageStart(getPageCount()-THELASTNUM);
			setPageEnd(getPageCount());
			setPageNow(getPageCount());
		}
		
		//判断总页数是否超过显示的页脚数
		if( getPageCount()!=null  ){
			if( getPageCount()<getPageNum() ){
				setPageStart(1);
				setPageEnd(getPageCount());
			}
		}
	}
	public List<E> getResult() {
		return result;
	}
	public void setResult(List<E> result) {
		this.result = result;
	}
}
