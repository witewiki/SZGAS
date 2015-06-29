package com.szgas.bsm.common.aspect;

import java.util.Enumeration;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

/**
 * 对Controller的参数进行特殊处理, 把请求的参数转换为Map<String, Object> 注入到方法中
 */
@Component
@Aspect
public class ControllerAspect {

	@Pointcut("@annotation(org.springframework.web.bind.annotation.RequestMapping)")
	public void pointCut(){
		
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	@Around("pointCut()")
	public Object paramProcess(ProceedingJoinPoint pjp) throws Throwable{
		Object[] targetMethodParams = pjp.getArgs();
		HttpServletRequest request = null;
		Map<String, Object> queryParams = null;
		for( Object param : targetMethodParams ){
			if( request == null && param instanceof HttpServletRequest){
				request = (HttpServletRequest) param;
			}else if( queryParams == null && param instanceof Map){
				queryParams = (Map<String, Object>) param;
			}
		}
		
		if( request != null && queryParams != null ){
			//以POST方式提交的处理
			Enumeration parmeterNames = request.getParameterNames();
			while (parmeterNames.hasMoreElements()) {
				String key = parmeterNames.nextElement().toString();
				String value = request.getParameter(key);
				if( value != null ){
					if( "".equals(value.trim()) ){
						value = null;
					}
				}
				queryParams.put(key, value);
			}
			
			//以GET方式提交的处理
			Enumeration attributeNames = request.getAttributeNames();
			while (attributeNames.hasMoreElements()) {
				String key = attributeNames.nextElement().toString();
				String value = request.getParameter(key);
				if( value != null ){
					if( "".equals(value.trim()) ){
						value = null;
					}
				}
				queryParams.put(key, value);
			}
		}
		
		Object retVal = pjp.proceed(targetMethodParams);

		if( request != null ){
			request.setAttribute("queryParam", queryParams);
		}
		return retVal;
	}
}
