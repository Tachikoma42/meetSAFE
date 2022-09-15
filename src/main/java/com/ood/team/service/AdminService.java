package com.ood.team.service;

import com.ood.team.entity.Admin;

public interface AdminService {

    Admin login(String name, String password);

    int updateByPrimaryKey(Admin admin);
}
