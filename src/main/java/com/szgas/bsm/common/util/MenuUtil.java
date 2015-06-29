package com.szgas.bsm.common.util;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.szgas.bsm.security.domain.Resources;

/**
 * 根据请求路径获取根目录
 */
public class MenuUtil {
	public static int getParentUrl(List<Resources> resources,String subUrl){
		for (Resources resource : resources) {
			if(subUrl.equals(resource.getUrl())){
				return resource.getPid();
			}
		}
		return -1;
	}
	
	public static void activeMenu(HttpServletRequest request){
		@SuppressWarnings("unchecked")
		List<Resources> resources =(List<Resources>) request.getSession().getAttribute("myMenus");
		String path = request.getServletPath();
		int parentId = MenuUtil.getParentUrl(resources, path);//根据子路径获取上级ID
		request.setAttribute("currMenuUrl", path);
		request.setAttribute("currMenuPid", parentId);
	}
	
	public static void activeMenu(HttpServletRequest request, String url){
		@SuppressWarnings("unchecked")
		List<Resources> resources =(List<Resources>) request.getSession().getAttribute("myMenus");
		//String path = request.getRequestURI();
		int parentId=MenuUtil.getParentUrl(resources, url);//根据子路径获取上级ID
		request.setAttribute("currMenu", url);
		request.setAttribute("currMenuPid", parentId);
	}
}
