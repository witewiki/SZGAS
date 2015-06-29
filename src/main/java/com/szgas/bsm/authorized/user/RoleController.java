package com.szgas.bsm.authorized.user;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.szgas.bsm.common.controller.BaseController;
import com.szgas.bsm.models.RoleSearchModel;

public class RoleController extends BaseController{
	@RequestMapping(value="/list", method = {RequestMethod.GET})
    public String list(HttpServletRequest request, Model model, @ModelAttribute RoleSearchModel searchModel){
    	model.addAttribute("requestUrl", request.getServletPath());
		model.addAttribute("requestQuery", request.getQueryString());

        model.addAttribute(searchModelName, searchModel);
        
        return null;
	}
      
}
