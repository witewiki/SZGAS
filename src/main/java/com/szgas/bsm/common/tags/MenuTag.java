package com.szgas.bsm.common.tags;

import java.io.IOException;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

import com.szgas.bsm.security.domain.Resources;

public class MenuTag extends TagSupport{
    
    private static final long serialVersionUID = 1L;
    private String menuItem;
    
    @Override
    @SuppressWarnings("unchecked")
    public int doStartTag() throws JspException {
        HttpServletRequest request = (HttpServletRequest) pageContext.getRequest();
        List<Resources> resources = (List<Resources>) getRequestObject(request, menuItem);
        int currMenuId = -1;
        Object currMenuUrl = getRequestObject(request, "currMenuUrl");
        if( currMenuUrl == null ){
        	currMenuUrl = "";
        }
        try {
            currMenuId = Integer.valueOf( getRequestObject(request, "currMenuPid").toString() );
        } catch ( Exception e1 ) {
            if( !resources.isEmpty() ){
                currMenuId = resources.get(0).getId();
            }
        }
        
        StringBuilder html = iteratorMenu(resources, currMenuId, request, currMenuUrl.toString());
        try {
            
            pageContext.getOut().print(html);
        } catch ( IOException e ) {
            e.printStackTrace();
        }
        return super.doStartTag();
    }
    
    private Object getRequestObject(HttpServletRequest request, String item){
        Object resourcesObj = request.getAttribute(item);
        if( resourcesObj == null ){
            resourcesObj = request.getSession().getAttribute(item);
        }
        return  resourcesObj;
    }
    
    /*
     * 遍历一级菜单
     */
    private StringBuilder iteratorMenu(List<Resources> resources, int currMenuId, HttpServletRequest request, String currMenuUrl){
        StringBuilder html = new StringBuilder();
        for( Resources res : resources ){
            if( res.getPid() != 0 ){
                continue;
            }
            Set<Resources> subResource = res.getResources();
            if( res.getPid() == 0 && res.getId() == currMenuId){
                html.append("<li class='active'>");
            }else{
                html.append("<li>");
            }
            if( res.getId() == currMenuId ){
                html.append("<a href='#'>");
            }else {
                html.append("<a href='" + request.getContextPath() + "/" + res.getUrl() + "'>");
            }
            html.append("<i class='" + res.getIco() + "'>");
            html.append("   <div class='icon-bg bg-orange'></div>");
            html.append("</i>");
            html.append("<span class='menu-title'>" + res.getName() + "</span>");
            if( subResource != null && !subResource.isEmpty() ){
                html.append("<span class='fa arrow'></span>");
            }
            html.append("</a>");
            //遍历子菜单
            html.append( iteratorSubMenu(subResource, currMenuId, request, currMenuUrl) );
            html.append("</li>");
        }
        
        return html;
    }

    /*
     * 遍历子菜单
     */
    private StringBuilder iteratorSubMenu(Set<Resources> subResource, int currMenuId, HttpServletRequest request, String currMenuUrl) {
        StringBuilder html = new StringBuilder();
        if( subResource.isEmpty() ){
            return html;
        }
        html.append("<ul class='nav nav-second-level'>");
        for( Resources res : subResource ){
            if( (res.getPid() == 0 && res.getId() == currMenuId) || currMenuUrl.equals(res.getUrl())){
                html.append("<li class='active'>");
            }else {
                html.append("<li>");
            }
            if( res.getId() == currMenuId ){
                html.append("<a href='#'>");
            }else {
                html.append("<a href='" + request.getContextPath() + "/" + res.getUrl() + "'>");
            }
            html.append("       <i class='" + res.getIco() + "'></i>");
            html.append("       <span class='submenu-title'>" + res.getName() + "</span>");
            html.append("   </a>");
            
            //遍历子菜单
            Set<Resources> subRes = res.getResources();
            html.append( iteratorSubMenu(subRes, currMenuId, request, currMenuUrl) );
            
            html.append("</li>");
        }
        html.append("</ul>");
        return html;
    }

    public String getMenuItem() {
        return menuItem;
    }

    public void setMenuItem(String menuItem) {
        this.menuItem = menuItem;
    }
    
}
