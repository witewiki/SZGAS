package com.szgas.bsm.common.tags;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

import com.github.pagehelper.PageInfo;

@SuppressWarnings("rawtypes")
public class PagingTag extends TagSupport {

	private static final long serialVersionUID = 1L;
	private String searchFormId;//查询表单ID
	
	@Override
	public int doStartTag() throws JspException {
		HttpServletRequest request = (HttpServletRequest) pageContext.getRequest();
		PageInfo pageInfo = (PageInfo) request.getAttribute("page");
		
		StringBuilder html = new StringBuilder();
		html.append("<script type='text/javascript'>\n");
		html.append("	function toPage(pageNum){\n");
		html.append("		var html = '<input id=\"currentPage\" type=\"hidden\" value=\"' + pageNum + '\" name=\"pageNum\"/>';\n");
		html.append("		$('#" + searchFormId + "').append( html );\n");
		html.append("		$('#" + searchFormId + "').submit();\n");
		html.append("	}\n");
		html.append("</script>\n");
		html.append("<div class='col-md-12'>\n");
		html.append("	<div class='dataTables_paginate' id='table_id_paginate'>\n");
		html.append("		<ul class='pagination'>\n");
		/* 处理首页 */
		if( pageInfo.getPageNum() == 1 ){
			html.append("			<li class='paginate_button disabled' id='first_page'>\n");
		}else {
			html.append("			<li class='paginate_button' id='first_page' onclick='toPage(1)'>\n");
		}
		html.append("				<a href='javascript:;'>首页</a>\n");
		html.append("			</li>\n");
		/* 处理上一页 */
		if( !pageInfo.isHasPreviousPage() ){
			html.append("			<li class='paginate_button disabled' id='prev_page'>\n");
		}else {
			html.append("			<li class='paginate_button' id='prev_page' onclick='toPage(" + (pageInfo.getPageNum() - 1) + ")'>\n");
		}
		html.append("				<a href='javascript:;'>上一页</a>\n");
		html.append("			</li>\n");
		/* 开始循环遍历页码 */
		for( int pageNumber : pageInfo.getNavigatepageNums() ){
			if( pageNumber == pageInfo.getPageNum() ){
				html.append("			<li class='paginate_button active'>\n");
				html.append("				<a href='javascript:;'>" + pageNumber + "</a>\n");
				html.append("			</li>\n");
			}else {
				html.append("			<li class='paginate_button'>\n");
				html.append("				<a href='javascript:toPage(" + pageNumber + ");'>" + pageNumber + "</a>\n");
				html.append("			</li>\n");
			}
		}
		/* 处理下一页 */
		if( !pageInfo.isHasNextPage() ){
			html.append("			<li class='paginate_button disabled' id='next_page'>\n");
		}else {
			html.append("			<li class='paginate_button' id='next_page' onclick='toPage(" + (pageInfo.getPageNum() + 1) + ")'>\n");
		}
		html.append("				<a href='javascript:;'>下一页</a>\n");
		html.append("			</li>");
		/* 处理尾页 */
		if( pageInfo.getPageNum() == pageInfo.getPages() ){
			html.append("			<li class='paginate_button disabled' id='last_page'>\n");
		}else {
			html.append("			<li class='paginate_button' id='last_page' onclick='toPage(" + pageInfo.getPages() + ")'>\n");
		}
		html.append("				<a href='javascript:;'>尾页</a>\n");
		html.append("			</li>\n");
		html.append("		</ul>\n");
		html.append("	</div>\n");
		html.append("</div>\n");
		html.append("<div class='clearfix'></div>\n");
		
		try {
			pageContext.getOut().print(html);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return super.doStartTag();
	}

	public String getSearchFormId() {
		return searchFormId;
	}

	public void setSearchFormId(String searchFormId) {
		this.searchFormId = searchFormId;
	}
	

}
