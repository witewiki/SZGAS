package com.szgas.bsm.security.common;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.access.SecurityConfig;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;

import com.szgas.bsm.security.domain.Resources;
import com.szgas.bsm.security.domain.Roles;
import com.szgas.bsm.security.mapper.ResourcesMapper;


/**
 * 加载资源与权限的对应关系 
 */
public class MySecurityMetadataSource implements FilterInvocationSecurityMetadataSource {  
	
	protected static Logger logger = Logger.getLogger(MySecurityMetadataSource.class);
	
	private static List<Resources> resources = null;  
    private static Map<String, Collection<ConfigAttribute>> resourceMap = null;  
    private static ResourcesMapper resourcesMapper;  
    
    //由spring调用  
    @SuppressWarnings("static-access")
	public MySecurityMetadataSource(ResourcesMapper resourcesMapper) {  
        this.resourcesMapper = resourcesMapper;  
        loadResourceDefine();  
    }  
  
    public ResourcesMapper getResourcesDao() {  
        return resourcesMapper;  
    }  
  
    @SuppressWarnings("static-access")
	public void setResourcesDao(ResourcesMapper resourcesDao) {  
        this.resourcesMapper = resourcesDao;  
    }  
  
    public Collection<ConfigAttribute> getAllConfigAttributes() {  
        
        return null;  
    }  
  
    public boolean supports(Class<?> clazz) {  
        
        return true;  
    }  
    //加载所有资源与权限的关系  
    private static void loadResourceDefine() {  
        if(resourceMap == null) {  
            resourceMap = new HashMap<String, Collection<ConfigAttribute>>();
            if( resources == null || resources.isEmpty() ){
                resources = resourcesMapper.findResourcePermissions();  
                logger.info("加载菜单资源!");
            }
            for (Resources resource : resources) {  
                Collection<ConfigAttribute> configAttributes = new ArrayList<ConfigAttribute>();  
                //以权限名封装为Spring的security Object  
                for(Roles role : resource.getRoles()){
                	//通过角色名称来表示具体的权限 注意：必须"ROLE_"开头 "ROLE_角色ID_角色名称"，防止角色重名
                	//关联代码：com.szgas.bsm.security.service.MyUserDetailServiceImpl#obtionGrantedAuthorities
                	ConfigAttribute configAttribute = new SecurityConfig("ROLE_" + role.getId() + "_" + role.getName());
                    configAttributes.add(configAttribute);  
                }
                resourceMap.put(resource.getUrl(), configAttributes);  
            }
        }  
    }  
    //返回所请求资源所需要的权限
    public Collection<ConfigAttribute> getAttributes(Object object) throws IllegalArgumentException {  
        String requestUrl = ((FilterInvocation) object).getRequestUrl();  
        if(resourceMap == null) {  
            loadResourceDefine();
        }
        Collection<ConfigAttribute> configAttribute = resourceMap.get(requestUrl);
        logger.debug("请求资源：" + requestUrl + "需要的权限为：" + configAttribute);
        return configAttribute;  
    }  
    
    public static Map<String, Collection<ConfigAttribute>> reloadResourceDefine(){
    	resourceMap = null;
    	loadResourceDefine();
    	return resourceMap;
    }
    
    /**
     * 得到所有资源菜单
     * @return
     */
    public static List<Resources> getResources(){
    	return resources;
    }
  
}  
