package com.szgas.bsm.skip;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/message")
public class MessageSkipController {

    @RequestMapping("/email")
    public String email(){
        
        return "message/email";
    }
    
    @RequestMapping("/sms")
    public String sms(){
        
        return "message/sms";
    }
    
}
