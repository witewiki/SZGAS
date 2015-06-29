package com.szgas.bsm.skip;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/userRole")
public class UserRoleSkipController {

    @RequestMapping("/authorizationManager")
    public String authorizationManager(){
        
        return "user_role/authorization-manager";
    }
    
    @RequestMapping("/resourceManager")
    public String resourceManager(){
        
        return "user_role/resource-manager";
    }
    
    @RequestMapping("/roleManager")
    public String roleManager(){
        
        return "user_role/role-manager";
    }
    
}
