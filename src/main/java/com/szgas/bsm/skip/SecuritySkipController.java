package com.szgas.bsm.skip;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/security")
public class SecuritySkipController {

    @RequestMapping("/logManage")
    public String logManage(){
        
        return "security/log_manage";
    }
    
}
