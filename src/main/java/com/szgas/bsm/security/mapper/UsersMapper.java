package com.szgas.bsm.security.mapper;

import java.util.Map;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.szgas.bsm.security.domain.Users;

@Repository  
@Transactional
public interface UsersMapper{
    /**
     * 通用用户名查询用户
     * @param name
     * @return
     */
    public Users findByAccount(Map<String,String> param);//用于security登录验证
    
}
