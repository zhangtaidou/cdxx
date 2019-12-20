package com.yijiayifeng.service;

import com.yijiayifeng.entity.Admin_specialty;
import com.yijiayifeng.mapper.Admin_specialtyMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class Admin_specialtyServiceImpl implements Admin_specialtyService {
    @Autowired
    Admin_specialtyMapper admin_specialtyMapper;

    @Override
    public Admin_specialty selectByPwdd(Admin_specialty admin) {
        Admin_specialty admin_specialty = admin_specialtyMapper.selectByPwdd(admin);
        return admin_specialty;
    }
}
