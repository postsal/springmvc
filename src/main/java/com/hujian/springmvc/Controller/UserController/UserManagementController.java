package com.hujian.springmvc.Controller.UserController;

import com.hujian.springmvc.Model.User;
import com.hujian.springmvc.Service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * Created by hujian on 2016/12/2.
 */
@Controller
@RequestMapping("/UserController")
public class UserManagementController {
    @Autowired
    private UserService userService;

    /**
     * 进入用户管理界面
     *
     * @param modelMap
     * @return
     */
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index(ModelMap modelMap) {
        List<User> userList = userService.getAll();
        modelMap.addAttribute("userList", userList);
        return "UserController/users";
    }

    /**
     * 进入用户信息详情页
     *
     * @param id
     * @param modelMap
     * @return
     */
    @RequestMapping(value = "/getUser/id/{id}", method = RequestMethod.GET)
    public String getUser(@PathVariable int id, ModelMap modelMap) {
        User user = userService.getById(id);
        modelMap.addAttribute("user", user);
        return "UserController/userDetail";
    }

    /**
     * 进入新增用户页
     *
     * @return
     */
    @RequestMapping(value = "/addUser", method = RequestMethod.GET)
    public String addUser() {
        return "UserController/addUser";
    }

    /**
     * 新增用户
     *
     * @param user
     * @return
     */
    @RequestMapping(value = "/users/add", method = RequestMethod.POST)
    public String addUserPost(@ModelAttribute("user") User user) {
        userService.save(user);
        return "redirect:/UserController/";
    }

    /**
     * 进入用户修改页面
     *
     * @param id
     * @param modelMap
     * @return
     */
    @RequestMapping(value = "/modifyUser/id/{id}", method = RequestMethod.GET)
    public String modifyUser(@PathVariable int id, ModelMap modelMap) {
        User user = userService.getById(id);
        modelMap.addAttribute("user", user);
        return "/UserController/updateUser";
    }

    /**
     * 修改某个用户
     * @param userP
     * @return
     */
    @RequestMapping(value = "/modifyUser/userP", method = RequestMethod.POST)
    public String modifyUserToSave(@ModelAttribute("userP") User userP) {
        User user = userService.getById(userP.getId());
        //User newUser=new User(userP.getId(),userP.getUserName(),userP.getAddress(),userP.getFirstName(),userP.getLastName());
        user.setUserName(userP.getUserName());
        user.setFirstName(userP.getFirstName());
        user.setLastName(userP.getLastName());
        user.setAddress(userP.getAddress());
        userService.saveOrUpdate(user);
        return "redirect:/UserController/";
    }

    /**
     * 删除某个用户
     *
     * @param id
     * @return
     */
    @RequestMapping(value = "/users/delete/id/{id}", method = RequestMethod.GET)
    public String deleteUser(@PathVariable int id) {
        userService.deleteById(id);
        userService.flush();
        return "redirect:/UserController/";
    }


    @RequestMapping("/backToHome")
    public String backToHome(){
        return "redirect:/UserController/";
    }
}
