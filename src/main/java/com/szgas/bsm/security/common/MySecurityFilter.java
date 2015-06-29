package com.szgas.bsm.security.common;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import org.apache.log4j.Logger;
import org.springframework.security.access.SecurityMetadataSource;
import org.springframework.security.access.intercept.AbstractSecurityInterceptor;
import org.springframework.security.access.intercept.InterceptorStatusToken;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;

/**
 * 第2步, 认证授权
 * 
 * @author xuzhijie
 */
public class MySecurityFilter extends AbstractSecurityInterceptor implements Filter {
    /*
     * 与applicationContext-security.xml里的myFilter的属性securityMetadataSource对应，
     * 其他的两个组件，已经在AbstractSecurityInterceptor定义
     */
    private FilterInvocationSecurityMetadataSource securityMetadataSource;
    protected static Logger logger = Logger.getLogger(MySecurityFilter.class);

    @Override
    public SecurityMetadataSource obtainSecurityMetadataSource() {
        return this.securityMetadataSource;
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        FilterInvocation fi = new FilterInvocation(request, response, chain);
        invoke(fi);
    }

    private void invoke(FilterInvocation fi) throws IOException, ServletException {
        logger.debug("url:" + fi.getRequestUrl());
        
        /*
         * 核心的InterceptorStatusToken token = super.beforeInvocation(fi);
         * 会调用我们定义的 
         *      securityMetadataSource:getAttributes(Object object)
         * 和
         *      accessDecisionManager:decide(Object object)
         *      
         * ↓↓↓****** super.beforeInvocation(fi) 执行的处理如下    ******↓↓↓
         * 
         *      1. 获取请求资源的权限    :  MySecurityMetadataSource
         *          |-- Collection<ConfigAttribute> attributes = securityMetadataSource.getAttributes(fi);
         *      2. 是否拥有权限         :  MyAccessDecisionManager
         *          |-- 2.1 获取安全主体，可以强制转换为UserDetails的实例 
         *          |       Authentication authenticated = authenticateIfRequired();
         *          |       this.accessDecisionManager.decide(authenticated, fi, attributes);
         *          |-- 2.2 用户拥有的权限GrantedAuthority
         *                  Collection<GrantedAuthority> authenticated.getAuthorities()
         * 
         * ↑↑↑****** super.beforeInvocation(fi) 执行的处理如上    ******↑↑↑
         */
        InterceptorStatusToken token = super.beforeInvocation(fi);
        try {
            fi.getChain().doFilter(fi.getRequest(), fi.getResponse());
        } finally {
            super.afterInvocation(token, null);
        }
    }

    public FilterInvocationSecurityMetadataSource getSecurityMetadataSource() {
        return securityMetadataSource;
    }

    public void setSecurityMetadataSource(FilterInvocationSecurityMetadataSource securityMetadataSource) {
        this.securityMetadataSource = securityMetadataSource;
    }

    public void init(FilterConfig arg0) throws ServletException {
        
    }

    public void destroy() {

    }

    @Override
    public Class<? extends Object> getSecureObjectClass() {
        // 下面的MyAccessDecisionManager的supports方面必须放回true,否则会提醒类型错误
        return FilterInvocation.class;
    }
}