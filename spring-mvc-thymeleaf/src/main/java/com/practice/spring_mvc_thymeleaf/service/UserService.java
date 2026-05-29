package com.practice.spring_mvc_thymeleaf.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.springframework.stereotype.Service;

import com.practice.spring_mvc_thymeleaf.model.User;

@Service
public class UserService {
    List<User> list = new ArrayList<>(Arrays.asList(new User(
            1, "John Doe", "john.doe@example.com", 30),
            new User(2, "Jane Smith", "jane.smith@example.com", 25),
            new User(3, "Bob Johnson", "bob.johnson@example.com", 35)));

    public List<User> getAllUsers() {
        return this.list;
    }

    public List<User> createUser(User u) {
        int nextId = list.stream()
                .mapToInt(User::getId)
                .max()
                .orElse(0) + 1;
        u.setId(nextId);

        list.addLast(u);

        return this.list;
    }
}
