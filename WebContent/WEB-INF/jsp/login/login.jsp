<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
	<head>
		<title>登陆</title>
		<%@include file="../common/header.jsp" %>
	</head>

	<body id="signin-page">
		<div class="page-form">
			<form action="j_spring_security_check" class="form" method="post">
				<div class="header-content">
					<h1>深燃管理平台</h1>
				</div>
				<div class="body-content">
					<div class="form-group">
						<div class="input-icon right"><i class="fa fa-user"></i>
							<input type="text" placeholder="用户名" name="j_username" class="form-control" value="admin">
						</div>
					</div>
					<div class="form-group">
						<div class="input-icon right"><i class="fa fa-key"></i>
							<input type="password" placeholder="密码" name="j_password" class="form-control" value="123456">
						</div>
					</div>
					<div class="form-group pull-left">
						<div class="checkbox-list">
							<label>
								<input type="checkbox">&nbsp; 记住我
							</label>
						</div>
					</div>
					<div class="form-group pull-right">
						<button type="submit" class="btn btn-success">登陆 &nbsp;
							<i class="fa fa-chevron-circle-right"></i>
						</button>
					</div>
					<div class="clearfix"></div>
				</div>
			</form>
			<c:if test="${notPermission!=null}">
				<div class="body-content" id='errorContent'>
					<hr style="margin-top: -32px;"/>
					<span id='errorInfo' style="color: #ff0000;overflow-wrap: break-word;">
						${ notPermission }
					</span>
				</div>	
			</c:if>
		</div>
		
		<%@include file="../common/script.jsp" %>
		<script>
			 //BEGIN CHECKBOX & RADIO
			$('input[type="checkbox"]').iCheck({
				checkboxClass: 'icheckbox_minimal-grey',
				increaseArea: '20%' // optional
			});
			$('input[type="radio"]').iCheck({
				radioClass: 'iradio_minimal-grey',
				increaseArea: '20%' // optional
			});
			 //END CHECKBOX & RADIO
		</script>
	</body>

</html>