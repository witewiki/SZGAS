package com.szgas.bsm.security.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.szgas.bsm.common.domain.Constant;
import com.szgas.bsm.security.domain.Resources;
import com.szgas.bsm.security.mapper.ResourcesMapper;
import com.szgas.bsm.security.service.ResourceService;

@Service
public class ResourceServiceImpl implements ResourceService {
	
	@Autowired
	private ResourcesMapper mapper;
	
	@Override
	public Page<Resources> findResourceByPage(int pageNum, Object queryParam) {
		PageHelper.startPage(pageNum, Constant.PAGE_SIZE);
		return mapper.findResourcesByPage(queryParam);
	}

}
