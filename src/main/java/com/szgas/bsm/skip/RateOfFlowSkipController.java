package com.szgas.bsm.skip;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/rateOfFlow")
public class RateOfFlowSkipController {

    @RequestMapping("/rateOfFlowCount")
    public String rateOfFlowCount(){
        
        return "rate_of_flow/rate_of_flow_count";
    }
    
}
