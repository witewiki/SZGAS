<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!--BEGIN BACK TO TOP-->
<a id="totop" href="#">
	<i class="fa fa-angle-up"></i>
</a>
<!--END BACK TO TOP-->
<!--BEGIN TOPBAR-->
<div id="header-topbar-option-demo" class="page-header-topbar">
	<nav id="topbar" role="navigation" style="margin-bottom: 0; z-index: 2;" class="navbar navbar-default navbar-static-top">
		<div class="navbar-header">
                  <a id="logo" href="#" class="navbar-brand">
                  	<span class="logo-text">管理平台</span>
                  	<span style="display: none" class="logo-text-icon">SR</span>
                  </a>
              </div>
		<div class="topbar-main">
			<a id="menu-toggle" href="#" class="hidden-xs">
				<i class="fa fa-bars"></i>
			</a>
			<ul class="nav navbar navbar-top-links navbar-right mbn">
				<li class="dropdown topbar-user">
					<a data-hover="dropdown" href="#" class="dropdown-toggle">
						<img src="resources/images/128-small.jpg" alt="" class="img-responsive img-circle" />&nbsp;
						<span class="hidden-xs">蜗牛</span>&nbsp;
						<span class="caret"></span>
					</a>
					<ul class="dropdown-menu dropdown-user pull-right">
						<li class="divider"></li>
						<li>
							<a href="userProfile/personalInfo">
								<i class="fa fa-user"></i>
								个人信息
							</a>
						</li>
						<li class="divider"></li>
						<li>
							<a href="auth/lockScreen">
								<i class="fa fa-lock"></i>
								锁屏
							</a>
						</li>
						<li>
							<a href="auth/logout">
								<i class="fa fa-key"></i>
								安全退出
							</a>
						</li>
					</ul>
				</li>
			</ul>
		</div>
	</nav>
</div>
<!--END TOPBAR-->