package com.practice.spring_mvc_thymeleaf.controller;

import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.practice.spring_mvc_thymeleaf.model.User;
import com.practice.spring_mvc_thymeleaf.service.UserService;

@Controller
public class UserController {
    private final UserService _userService;

    public UserController(UserService userService) {
        this._userService = userService;
    }

    @GetMapping("/user")
    public String index(Model model) {
        List<User> userList = this._userService.getAllUsers();
        model.addAttribute("users", userList);

        return "/user/index";
    }

    @GetMapping("/user/create")
    public String createPage(Model model) {
        model.addAttribute("user", new User());
        return "/user/create";
    }

    @PostMapping("/user/create")
    public String createUser(@ModelAttribute User createUser, Model model) {
        List<User> userList = this._userService.createUser(createUser);
        model.addAttribute("users", userList);

        return "/user/index";
    }
}
