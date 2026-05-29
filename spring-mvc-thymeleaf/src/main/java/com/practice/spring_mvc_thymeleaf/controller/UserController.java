package com.practice.spring_mvc_thymeleaf.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.practice.spring_mvc_thymeleaf.model.User;
import com.practice.spring_mvc_thymeleaf.service.UserService;

@Controller
public class UserController {
    private final UserService _userService;

    public UserController(UserService userService) {
        this._userService = userService;
    }

    @GetMapping("/users")
    public String index(Model model) {
        List<User> userList = this._userService.getAllUsers();
        model.addAttribute("users", userList);

        return "/user/index";
    }
}
