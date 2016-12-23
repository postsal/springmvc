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

    /**
     * 进入注册页面
     * @return
     */
    @GetMapping("/Login")
    public String index() {
        return "System/Login";
    }


    @PostMapping("/Login")
    public String login(@RequestParam("userName") String userName,
                        @RequestParam("password") String password,
                        HttpSession session) {
        User user = userService.getUserByuserName(userName);
        User user1 = (User) session.getAttribute("user");
        if(user1==null){
            if (user != null) {
                if (Objects.equals(user.getPassword(), password)) {
                    session.setAttribute("userName",userName);
                    return "redirect:/";
                } else {
                    return "redirect:/Account/Login";
                }
            } else {
                return "redirect:/Account/Login";
            }
        }else {
            return "redirect:/Account/Login";
        }
    }

    @RequestMapping("/LogOut")
    public String logOut(HttpSession session){
        session.setAttribute("userName",null);
        return "redirect:/";
    }

}
