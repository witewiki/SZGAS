package com.szgas.bsm.security.common;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;
import org.springframework.security.web.savedrequest.RequestCache;
import org.springframework.security.web.savedrequest.SavedRequest;
import org.springframework.util.StringUtils;

import com.szgas.bsm.common.util.MenuUtil;
import com.szgas.bsm.security.domain.Resources;
import com.szgas.bsm.security.domain.Roles;
import com.szgas.bsm.security.domain.Users;
import com.szgas.bsm.security.mapper.UsersMapper;

public class MyloginLogAuthenticationSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {

    protected final Logger logger;
    private RequestCache requestCache;

    @Autowired
    private UsersMapper usersMapper;

    public MyloginLogAuthenticationSuccessHandler() {
        this.logger = Logger.getLogger("service");

        this.requestCache = new HttpSessionRequestCache();
    }

    // 当认证通过后调用的方法
    @SuppressWarnings("unchecked")
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws ServletException, IOException {
        SavedRequest savedRequest = this.requestCache.getRequest(request, response);

        UserDetails userDetails = (UserDetails) authentication.getPrincipal();// 从认证对象中获取UserDetails
        
        Map<String, String> map = new HashMap<String, String>();
        map.put("account", userDetails.getUsername().toString());
        
        String fristUrl = setSessionGlobalInformation(request.getSession(), map, usersMapper);
        String refererUrl = request.getHeader("Referer");// 上一次请求的路径
        String host = request.getHeader("Host");
        String[] arrUrl = refererUrl.split(host);
        refererUrl = arrUrl[arrUrl.length - 1];

        List<Resources> resources = (List<Resources>) request.getSession().getAttribute("myMenus");
        int exist = MenuUtil.getParentUrl(resources, refererUrl);
        if ( exist > 0 ) {
            fristUrl = refererUrl;
        }
        if ( fristUrl == null ) {
            fristUrl = this.getDefaultTargetUrl();
        }
       
        getRedirectStrategy().sendRedirect(request, response, fristUrl);
        if ( savedRequest == null ) {
            super.onAuthenticationSuccess(request, response, authentication);
            return;
        }

        if ( (isAlwaysUseDefaultTargetUrl()) || (StringUtils.hasText(request.getParameter(getTargetUrlParameter()))) ) {
            this.requestCache.removeRequest(request, response);
            super.onAuthenticationSuccess(request, response, authentication);

            return;
        }

        clearAuthenticationAttributes(request);

        this.logger.info("Redirecting to DefaultSavedRequest Url: " + fristUrl);
    }

    public void setRequestCache(RequestCache requestCache) {
        this.requestCache = requestCache;
    }

    /**
     * 将全局信息放入会话中
     * 
     * @param session
     * @param map
     * @param usersMapper
     * @param service
     */
    public static String setSessionGlobalInformation(HttpSession session, Map<String, String> map, UsersMapper usersMapper) {
        try {
            // 重新加载所有资源与权限的关系
            MySecurityMetadataSource.reloadResourceDefine();

            Users user = usersMapper.findByAccount(map);// 获取对象
            session.setAttribute("user", user);// 保存当前用户

            // 获取资源
            List<Resources> resources = MySecurityMetadataSource.getResources();
            List<Resources> myResources = new ArrayList<Resources>();

            //TODO 写死登陆进入的第一个显示的页面
//            String fristUrl = null;
            String fristUrl = "/home/home";
            for ( Resources resource : resources ) {
                for ( Roles role : resource.getRoles() ) {
                    for ( Roles mRole : user.getRoles() ) {
                        if ( ("ROLE_" + role.getId() + "_" + role.getName()).endsWith("ROLE_" + mRole.getId() + "_" + mRole.getName()) ) {
                            if ( !myResources.contains(resource) ) {
                            	myResources.add(resource);
//                                if ( fristUrl == null && !"#".equals(resource.getUrl()) ) {
//                                    fristUrl = resource.getUrl();
//                                }
                            }
                        }
                    }
                }
            }
            // 菜单
            session.setAttribute("myMenus", myResources);// 保存菜单
            return fristUrl;
        } catch ( Exception e ) {
            e.printStackTrace();
        }
        return null;
    }
}
