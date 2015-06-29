package com.szgas.bsm.skip;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/userProfile")
public class UserProfileSkipController {

    @RequestMapping("/personalInfo")
    public String personalInfo(){
        
        return "user_profile/personal_info";
    }
    
}
