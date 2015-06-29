package com.szgas.bsm.skip;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/news")
public class NewsSkipController {

    @RequestMapping("/gasManage")
    public String gasManage(){
        
        return "news/gas_manage";
    }
    
    @RequestMapping("/newsAdd")
    public String newsAdd(){
        
        return "news/news_add";
    }
    
    @RequestMapping("/newsManage")
    public String newsManage(){
        
        return "news/news_manage";
    }
    
}
