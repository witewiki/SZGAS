package com.szgas.bsm.skip;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/vocationalWork")
public class vocationalWorkSkipController {

    @RequestMapping("/booking")
    public String booking(){
        
        return "vocational_work/booking";
    }
    
    @RequestMapping("/details")
    public String details(){
        
        return "vocational_work/details";
    }
    
    @RequestMapping("/vocationalWorkCount")
    public String vocationalWorkCount(){
        
        return "vocational_work/vocational_work_count";
    }
    
}
