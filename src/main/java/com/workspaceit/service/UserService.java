package com.workspaceit.service;

import com.workspaceit.entity.User;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface UserService {
    User save (User user);
    User getUser(long id);
    boolean update(User user);
    boolean delete(long id);
    List<User> getAllUsers();
}
