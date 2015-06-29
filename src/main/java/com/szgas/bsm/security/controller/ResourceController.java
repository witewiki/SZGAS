package com.szgas.bsm.security.controller;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageInfo;
import com.szgas.bsm.common.domain.Constant;
import com.szgas.bsm.common.util.MenuUtil;
import com.szgas.bsm.security.domain.Resources;
import com.szgas.bsm.security.service.ResourceService;

/**
 * 资源菜单控制器
 */
@Controller
@RequestMapping("/authorized")
public class ResourceController {
	
	@Autowired
	private ResourceService service;

	/**
	 * 显示菜单列表
	 * @param request
	 * @param pageNum 当前页
	 * @param queryParam 表单查询参数, 这个会在ControllerAspect中对表单参数进行封装处理成Map对象
	 * 			前提是下面的方法中必须有request和queryParam两个参数
	 * @return 返回指定页面
	 */
    @RequestMapping(value="/resourceManager")
    public String resourceManager(HttpServletRequest request, @RequestParam(defaultValue="1") int pageNum, Map<String, Object> queryParam){
    	Page<Resources> result = service.findResourceByPage(pageNum, queryParam);
    	
    	PageInfo<Resources> pageInfo = new PageInfo<Resources>(result, Constant.PAGE_NUMBER_COUNT);
    	
    	request.setAttribute("page", pageInfo);
    	
    	//设置当前活动菜单
		MenuUtil.activeMenu(request);
    	
        return "authorized/resourceManager";
    }
    
    @ResponseBody
    @RequestMapping("/addResource")
    public String addResource(HttpServletRequest request, Map<String, Object> queryParam){
        
        return "";
    }
    
}
