package com.szgas.bsm.skip;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/complain")
public class ComplainSkipController {

    @RequestMapping("/complainCount")
    public String complainCount(){
        
        return "complain/complain_count";
    }
    
    @RequestMapping("/gatherAdvise")
    public String gatherAdvise(){
        
        return "complain/gather_advise";
    }
    
    @RequestMapping("/reply")
    public String reply(){
        
        return "complain/reply";
    }
  
}
