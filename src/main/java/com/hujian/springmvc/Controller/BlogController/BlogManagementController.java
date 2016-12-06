package com.hujian.springmvc.Controller.BlogController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by hujian on 2016/12/6.
 */
@Controller
@RequestMapping("/BlogManagement")
public class BlogManagementController {
    public String index(){
        return "/BlogController/Blog";
    }
}
