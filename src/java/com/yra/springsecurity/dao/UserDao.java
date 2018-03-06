package com.yra.springsecurity.dao;

import com.yra.springsecurity.model.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by YaroshR on 06.03.2018.
 */
public interface UserDao extends JpaRepository<User, Long> {

    User findByUsername(String username);
}
