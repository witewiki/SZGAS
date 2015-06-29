package com.szgas.bsm.skip;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/login")
public class LoginSkipController {

    @RequestMapping("/login")
    public String login(){
        return "login/login";
    }
    
    @RequestMapping("/lockScreen")
    public String lockScreen(){
        
        return "login/lock-screen";
    }
  
}
