package com.szgas.bsm.security.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("auth")
public class LoginLogoutController {

	protected static Logger logger = Logger.getLogger(LoginLogoutController.class);
	
	/**
	 * 指向登录页面
	 */
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String toLoginPage(
			@RequestParam(value = "error", required = false) boolean error,
			ModelMap model,HttpServletRequest request) {
	    request.getSession().invalidate();
		logger.debug("Received request to show login page");
		if (error == true) {
		    
			String username = (String) request.getSession().getAttribute("SPRING_SECURITY_LAST_USERNAME");
			if(username!=null){
				username=username.split("#47;")[1];
			}
			model.put("userName", username);
		} else {
			model.put("error", "");
			model.put("userName", "");
		}
		request.getSession().invalidate();
		return "login/login";

	}
	
	@RequestMapping(value = "/404Page", method = RequestMethod.GET)
	public String to404Page(ModelMap model) {
		logger.debug("Received request to show denied page");
		model.put("notPermission", "没有找到页面");
		return "error/404";

	}
	
	
	@RequestMapping("/lockScreen")
    public String lockScreen(){
        
        return "login/lock-screen";
    }
	
	@RequestMapping("/logout")
    public String logout(HttpServletRequest request){
        request.getSession().invalidate();
        return "login/lock-screen";
    }
	
	
}
