package com.practice.spring_mvc_thymeleaf.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
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

    @GetMapping("/user/edit/{id}")
    public String updatePage(Model model, @PathVariable int id) {
        List<User> newUserList = this._userService.getAllUsers();

        User updateUser = newUserList.stream().filter(user -> user.getId() == id)
                .findFirst().get();

        model.addAttribute("id", id);
        model.addAttribute("user", updateUser);

        return "/user/edit";
    }

    @PostMapping("/user/edit")
    public String updateUser(Model model, @ModelAttribute User updateUser) {
        List<User> newUserList = this._userService.updateUser(updateUser);
        model.addAttribute("users", newUserList);

        return "/user/index";
    }

    @PostMapping("/user/delete/{id}")
    public String deleteUser(Model model, @PathVariable int id) {
        List<User> newUserList = this._userService.deleteUser(id);
        model.addAttribute("users", newUserList);

        return "/user/index";
    }
}
