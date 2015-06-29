package com.szgas.bsm.security.mapper;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.github.pagehelper.Page;
import com.szgas.bsm.security.domain.Resources;

@Repository
@Transactional
public interface ResourcesMapper {
	/* 加载所有资源与权限关系 */
    List<Resources> findResourcePermissions();
    
    /* 查询分页 */
    Page<Resources> findResourcesByPage(Object param);
}
