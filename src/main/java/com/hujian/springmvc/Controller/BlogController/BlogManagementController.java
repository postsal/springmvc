package com.hujian.springmvc.Controller.BlogController;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by hujian on 2016/12/6.
 */
@Controller
@RequestMapping("/Blog")
public class BlogManagementController {
    @RequestMapping("/")
    public String index(){
        return "BlogController/index";
    }
}
