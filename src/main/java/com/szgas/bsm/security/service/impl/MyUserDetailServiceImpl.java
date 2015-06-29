package com.szgas.bsm.security.service.impl;

import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

import org.apache.log4j.Logger;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.GrantedAuthorityImpl;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import com.szgas.bsm.security.domain.Roles;
import com.szgas.bsm.security.domain.Users;
import com.szgas.bsm.security.mapper.UsersMapper;

public class MyUserDetailServiceImpl implements UserDetailsService {  
    
	protected static Logger logger = Logger.getLogger("service");
	
    private UsersMapper usersMapper;  
      
    public UsersMapper getUsersMapper() {
		return usersMapper;
	}

	public void setUsersMapper(UsersMapper usersMapper) {
		this.usersMapper = usersMapper;
	}

	// 登录验证
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {  
		Map<String,String> map = new HashMap<String,String>();
		map.put("account", username);
		
        Users users = this.usersMapper.findByAccount(map);  
        
        if(users == null) {  
            throw new UsernameNotFoundException(username);  
        }  
        
        //封装用户与角色关系
        Collection<GrantedAuthority> grantedAuths = obtionGrantedAuthorities(users);  
        
        //封装成spring security的user
        User userdetail = new User(users.getAccount(), users.getPassword(), true, true, true, true, grantedAuths);
        return userdetail;  
    }  
      
    private Set<GrantedAuthority> obtionGrantedAuthorities(Users user) {  
        Set<GrantedAuthority> authSet = new HashSet<GrantedAuthority>();  
        Set<Roles> roles = user.getRoles();  
        logger.debug("登录成功的用户默认添加ROLE_USER角色");
        authSet.add(new GrantedAuthorityImpl("ROLE_USER"));  
        for(Roles role : roles) {  
        	logger.debug("ROLE_" + role.getId() + "_" + role.getName());
        	authSet.add(new GrantedAuthorityImpl("ROLE_" + role.getId() + "_" + role.getName()));
        }  
        return authSet;  
    }  
}  
