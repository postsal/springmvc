package com.hujian.springmvc.Controller.System;

import com.hujian.springmvc.Model.User;
import com.hujian.springmvc.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.Objects;

/**
 * Created by hujian on 2016/12/7.
 */
@Controller
@RequestMapping("/Account")
public class LoginController {

    @Autowired
    private UserService userService;

    @RequestMapping("/Login")
    public String login(@RequestParam(value = "userName",required = false) String userName,
                        @RequestParam(value = "password",required = false) String password,
                        HttpSession session) {
        if(userName==null){
            return "System/Login";
        }
        User user = userService.getUserByuserName(userName);
        String sessionUserName = (String) session.getAttribute("userName");
        if(sessionUserName==null){
            if (user != null) {
                if (Objects.equals(user.getPassword(), password)) {
                    session.setAttribute("userName",userName);
                    return "redirect:/";
                } else {
                    return "System/Login";
                }
            } else {
                return "System/Login";
            }
        }else {
            return "redirect:/";
        }
    }

    @RequestMapping("/LogOut")
    public String logOut(HttpSession session){
        session.setAttribute("userName",null);
        return "redirect:/";
    }

}
