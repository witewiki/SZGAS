package com.szgas.bsm.security.service;

import com.github.pagehelper.Page;
import com.szgas.bsm.security.domain.Resources;

public interface ResourceService {

    /**
     * 查询菜单资源-分页
     * @param pageNum 当前页
     * @param queryParam 查询参数
     * @return
     */
    Page<Resources> findResourceByPage(int pageNum, Object queryParam);
}
