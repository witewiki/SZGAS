package com.szgas.bsm.skip;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/mobile")
public class MobileSkipController {

    @RequestMapping("/mobileManage")
    public String mobileManage(){
        
        return "mobile/mobile_manage";
    }
    
}
