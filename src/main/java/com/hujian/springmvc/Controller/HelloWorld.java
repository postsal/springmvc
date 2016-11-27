package com.hujian.springmvc.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by hujian on 2016/11/26.
 */
@Controller
public class HelloWorld {
    @RequestMapping("/helloWorld")
    public String index(){
        return "index";
    }
}
