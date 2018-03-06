package com.yra.springsecurity.service;

/**
 * Created by YaroshR on 06.03.2018.
 */
public interface SecurityService {

    String findLoggedInUsername();

    void autoLogin(String username, String password);
}
