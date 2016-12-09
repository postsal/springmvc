package com.hujian.springmvc.Controller.System;

import com.hujian.springmvc.Model.User;
import com.hujian.springmvc.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 * Created by hujian on 2016/12/7.
 */
@Controller
@RequestMapping("/Register")
public class RegisterController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return "System/Register";
    }

    @RequestMapping(value = "/Login", method = RequestMethod.POST)
    public String login(@RequestParam("userName") String userName,
                        @RequestParam("nickName") String nickName,
                        @RequestParam("emailAddress") String emailAddress,
                        @RequestParam("password") String password) {
        User user = new User();
        user.setUserName(userName);
        user.setNickName(nickName);
        user.setEmailAddress(emailAddress);
        user.setPassword(password);
        userService.save(user);
        return "redirect:/";

    }
}
