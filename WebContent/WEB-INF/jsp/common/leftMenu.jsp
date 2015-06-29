<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--BEGIN SIDEBAR MENU-->
<%@taglib prefix="x" uri="http://www.org.ct.x" %> 
<nav id='sidebar' role='navigation' class='navbar-default navbar-static-side'>
	<div class='sidebar-collapse menu-scroll'>
		<ul id='side-menu' class='nav'>
			<li class='user-panel'>
				<div class='thumb'>
					<img src='resources/images/128.jpg' alt='' class='img-circle' />
				</div>
				<div class='info'>
					<p>蜗牛</p>
					<ul class='list-inline list-unstyled'>
						<li>
							<a href='userProfile/personalInfo' data-hover='tooltip' title='个人信息'>
								<i class='fa fa-user'></i>
							</a>
						</li>
						<li>
							<a href='auth/lockScreen' data-hover='tooltip' title='锁屏'>
								<i class='fa fa-lock'></i>
							</a>
						</li>
						<li>
							<a href='auth/logout' data-hover='tooltip' title='安全退出'>
								<i class='fa fa-sign-out'></i>
							</a>
						</li>
					</ul>
				</div>
				<div class='clearfix'></div>
			</li>
			<x:menu menuItem="myMenus"/>
		</ul>
	</div>
</nav>
<!--END SIDEBAR MENU-->