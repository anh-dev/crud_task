package com.task.service;

import com.task.entity.User;
import com.task.repo.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;

    @Override
    public User getOne(Integer id) {
        return userRepository.findOne(id);
    }

    @Override
    public List<User> getAll() {
        return userRepository.findAll();
    }

    @Override
    public User create(User instance) {

        return null;
    }

    @Override
    public User update(User instance) {
        return null;
    }

    @Override
    public void delete(Integer id) {
        userRepository.delete(id);
    }
}
