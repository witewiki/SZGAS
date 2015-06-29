package com.szgas.bsm.skip;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class HomeSkipController {

    @RequestMapping("/home")
    public String home(){
        
        return "home/home";
    }
  
}
