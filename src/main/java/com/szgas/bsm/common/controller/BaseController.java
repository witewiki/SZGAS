package com.szgas.bsm.common.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.bind.annotation.ExceptionHandler;

public class BaseController {
	protected final String searchModelName="searchModel";
	
	@ExceptionHandler  
    public String exception(HttpServletRequest request, Exception e) {  
          
        request.setAttribute("exceptionMessage", e.getMessage());  
          
        // 根据不同错误转向不同页面  
        /*if(e instanceof SQLException) 
            return "testerror";   
        else*/
            return "error/500";  
    }  
}
