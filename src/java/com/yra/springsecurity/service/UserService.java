package com.yra.springsecurity.service;

import com.yra.springsecurity.model.User;

/**
 * Created by YaroshR on 06.03.2018.
 */
public interface UserService {

    void save(User user);

    User findByUsername(String username);
}
