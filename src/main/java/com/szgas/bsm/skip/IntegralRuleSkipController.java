package com.szgas.bsm.skip;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/integralRule")
public class IntegralRuleSkipController {

    @RequestMapping("/ruleManage")
    public String error404(){
        
        return "integral_rule/rule_manage";
    }
   
}
