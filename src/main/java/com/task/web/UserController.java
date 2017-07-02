package com.task.web;


import com.task.entity.User;
import com.task.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Collection;
import java.util.List;

@RestController
@RequestMapping(value = "/")
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/user")
    public ResponseEntity<Collection<User>> getAllUsers() {

        List<User> list = userService.getAll();
        System.out.println(list.get(0).getCreatedDate());
        if (list.isEmpty()) {
            return new ResponseEntity<Collection<User>>(HttpStatus.NO_CONTENT);
        }
        return new ResponseEntity<Collection<User>>(list, HttpStatus.OK);
    }


}
