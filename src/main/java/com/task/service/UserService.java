package com.task.service;


import com.task.entity.User;

import java.util.List;

public interface UserService {

    User getOne(Integer id);

    List<User> getAll();

    User create(User instance);

    User update(User instance);

    void delete(Integer id);
}
