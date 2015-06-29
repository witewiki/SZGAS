package com.szgas.bsm.security.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.szgas.bsm.security.domain.Roles;


@Repository  
@Transactional
public interface RolesMapper{
	public List<Roles> findAll();
	
}
