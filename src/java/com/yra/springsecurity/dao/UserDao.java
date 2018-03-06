package com.yra.springsecurity.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.security.core.userdetails.User;

/**
 * Created by YaroshR on 06.03.2018.
 */
public interface UserDao extends JpaRepository<User, Long> {

    User findByUsername(String username);
}
