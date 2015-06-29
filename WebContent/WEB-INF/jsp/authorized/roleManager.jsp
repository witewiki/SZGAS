<!DOCTYPE html>
<html lang="en">

	<head>
		<title>深燃管理平台-资源管理</title>
		<!--LOADING STYLESHEET FOR PAGE-->
	    <link type="text/css" rel="stylesheet" href="../../vendors/DataTables/media/css/jquery.dataTables.css">
	    <link type="text/css" rel="stylesheet" href="../../vendors/DataTables/media/css/dataTables.bootstrap.css">
		<!--Loading style vendors-->
		<link type="text/css" rel="stylesheet" href="../../vendors/animate.css/animate.css">
		<link type="text/css" rel="stylesheet" href="../../vendors/iCheck/skins/all.css">
		<link type="text/css" rel="stylesheet" href="../../vendors/jquery-notific8/jquery.notific8.min.css">
		<link type="text/css" rel="stylesheet" href="../../vendors/bootstrap-daterangepicker/daterangepicker-bs3.css">
		<!--Loading style-->
		<link type="text/css" rel="stylesheet" href="../../css/themes/style1/orange-blue.css" class="default-style">
		<link type="text/css" rel="stylesheet" href="../../css/themes/style1/orange-blue.css" id="theme-change" class="style-change color-change">
		<link type="text/css" rel="stylesheet" href="../../css/style-responsive.css">
		<link type="text/css" rel="stylesheet" href="../../vendors/select2/select2-madmin.css">
	</head>

	<body class=" ">
		<div>
			<!--BEGIN BACK TO TOP-->
			<a id="totop" href="#">
				<i class="fa fa-angle-up"></i>
			</a>
			<!--END BACK TO TOP-->
			<!--BEGIN TOPBAR-->
			<div id="header-topbar-option-demo" class="page-header-topbar">
				<nav id="topbar" role="navigation" style="margin-bottom: 0; z-index: 2;" class="navbar navbar-default navbar-static-top">
					<div class="navbar-header">
	                    <a id="logo" href="../home/home.html" class="navbar-brand">
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
									<img src="../../images/128-small.jpg" alt="" class="img-responsive img-circle" />&nbsp;
									<span class="hidden-xs">蜗牛</span>&nbsp;
									<span class="caret"></span>
								</a>
								<ul class="dropdown-menu dropdown-user pull-right">
									<li class="divider"></li>
									<li>
										<a href="../user_profile/personal_info.html">
											<i class="fa fa-user"></i>
											个人信息
										</a>
									</li>
									<li class="divider"></li>
									<li>
										<a href="../login/lock-screen.html">
											<i class="fa fa-lock"></i>
											锁屏
										</a>
									</li>
									<li>
										<a href="../login/login.html">
											<i class="fa fa-key"></i>
											安全退出
										</a>
									</li>
								</ul>
							</li>
							<li class="dropdown hidden-xs">
								<!--BEGIN THEME SETTING-->
								<a id="theme-setting" href="javascript:;" data-hover="dropdown" data-step="1" data-intro="&lt;b&gt;Header&lt;/b&gt;, &lt;b&gt;sidebar&lt;/b&gt;, &lt;b&gt;border style&lt;/b&gt; and &lt;b&gt;color&lt;/b&gt;, all of them can change for you to create the best" data-position="left" class="dropdown-toggle">
									<i class="fa fa-cogs"></i>
								</a>
								<ul class="dropdown-menu dropdown-theme-setting pull-right">
									<li>
										<h4 class="mtn">菜单样式</h4>
										<select id="list-menu" class="form-control">
											<option value="sidebar-default">样式1</option>
											<option value="sidebar-colors">样式2</option>
											<option value="sidebar-icons">样式3</option>
											<option value="sidebar-collapsed">样式4</option>
										</select>
									</li>
									<li>
										<h4 class="mtn">标题栏</h4>
										<select id="list-header" class="form-control">
											<option value="header-static">静态</option>
											<option value="header-fixed">固定</option>
										</select>
									</li>
									<li>
										<h4 class="mtn">系统主题颜色</h4>
										<ul id="list-color" class="list-unstyled list-inline">
											<li data-color="green-dark" data-hover="tooltip" title="Green - Dark" class="green-dark"></li>
											<li data-color="red-dark" data-hover="tooltip" title="Red - Dark" class="red-dark"></li>
											<li data-color="pink-dark" data-hover="tooltip" title="Pink - Dark" class="pink-dark"></li>
											<li data-color="blue-dark" data-hover="tooltip" title="Blue - Dark" class="blue-dark"></li>
											<li data-color="yellow-dark" data-hover="tooltip" title="Yellow - Dark" class="yellow-dark"></li>
											<li data-color="green-grey" data-hover="tooltip" title="Green - Grey" class="green-grey"></li>
											<li data-color="red-grey" data-hover="tooltip" title="Red - Grey" class="red-grey"></li>
											<li data-color="pink-grey" data-hover="tooltip" title="Pink - Grey" class="pink-grey"></li>
											<li data-color="blue-grey" data-hover="tooltip" title="Blue - Grey" class="blue-grey"></li>
											<li data-color="yellow-grey" data-hover="tooltip" title="Yellow - Grey" class="yellow-grey"></li>
											<li data-color="yellow-green" data-hover="tooltip" title="Yellow - Green" class="yellow-green"></li>
											<li data-color="orange-grey" data-hover="tooltip" title="Orange - Grey" class="orange-grey"></li>
											<li data-color="pink-blue" data-hover="tooltip" title="Pink - Blue" class="pink-blue"></li>
											<li data-color="pink-violet" data-hover="tooltip" title="Pink - Violet" class="pink-violet active"></li>
											<li data-color="orange-violet" data-hover="tooltip" title="Orange - Violet" class="orange-violet"></li>
											<li data-color="pink-green" data-hover="tooltip" title="Pink - Green" class="pink-green"></li>
											<li data-color="pink-brown" data-hover="tooltip" title="Pink - Brown" class="pink-brown"></li>
											<li data-color="orange-blue" data-hover="tooltip" title="Orange - Blue" class="orange-blue"></li>
											<li data-color="yellow-blue" data-hover="tooltip" title="Yellow - Blue" class="yellow-blue"></li>
											<li data-color="green-blue" data-hover="tooltip" title="Green - Blue" class="green-blue"></li>
										</ul>
									</li>
								</ul>
								<!--END THEME SETTING-->
							</li>
						</ul>
					</div>
				</nav>
			</div>
			<!--END TOPBAR-->
			<div id="wrapper">
				<!--BEGIN SIDEBAR MENU-->
				<nav id="sidebar" role="navigation" class="navbar-default navbar-static-side">
					<div class="sidebar-collapse menu-scroll">
						<ul id="side-menu" class="nav">
							<li class="user-panel">
								<div class="thumb">
									<img src="../../images/128.jpg" alt="" class="img-circle" />
								</div>
								<div class="info">
									<p>蜗牛</p>
									<ul class="list-inline list-unstyled">
										<li>
											<a href="../user_profile/personal_info.html" data-hover="tooltip" title="个人信息">
												<i class="fa fa-user"></i>
											</a>
										</li>
										<li>
											<a href="../login/lock-screen.html" data-hover="tooltip" title="锁屏">
												<i class="fa fa-lock"></i>
											</a>
										</li>
										<li>
											<a href="../login/login.html" data-hover="tooltip" title="安全退出">
												<i class="fa fa-sign-out"></i>
											</a>
										</li>
									</ul>
								</div>
								<div class="clearfix"></div>
							</li>
							<li>
								<a href="../home/home.html">
									<i class="fa fa-home fa-fw">
										<div class="icon-bg bg-orange"></div>
									</i>
									<span class="menu-title">主页</span>
								</a>
							</li>
							<li class="active">
								<a href="#">
									<i class="fa fa-key fa-fw">
										<div class="icon-bg bg-orange"></div>
									</i>
									<span class="menu-title">用户权限管理</span>
									<span class="fa arrow"></span>
								</a>
								<ul class="nav nav-second-level">
									<li class="active">
										<a href="#">
											<i class="fa fa-leaf"></i>
											<span class="submenu-title">角色管理</span>
										</a>
									</li>
									<li>
										<a href="resource-manager.html">
											<i class="fa fa-bookmark-o"></i>
											<span class="submenu-title">资源管理(菜单)</span>
										</a>
									</li>
									<li>
										<a href="authorization-manager.html">
											<i class="fa fa-eye"></i>
											<span class="submenu-title">用户授权</span>
										</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="#">
									<i class="fa fa-flask fa-fw">
										<div class="icon-bg bg-pink"></div>
									</i>
									<span class="menu-title">管道气业务管理</span>
									<span class="fa arrow"></span>
								</a>
								<ul class="nav nav-second-level">
									<li>
										<a href="../vocational_work/details.html">
											<i class="fa fa-suitcase"></i>
											<span class="submenu-title">业务详情</span>
										</a>
									</li>
									<li>
										<a href="../vocational_work/booking.html">
											<i class="fa fa-group"></i>
											<span class="submenu-title">预约</span>
										</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="#">
									<i class="fa fa-pagelines fa-fw">
										<div class="icon-bg bg-pink"></div>
									</i>
									<span class="menu-title">采编管理</span>
									<span class="fa arrow"></span>
								</a>
								<ul class="nav nav-second-level">
									<li>
										<a href="../news/news_manage.html">
											<i class="fa fa-folder"></i>
											<span class="submenu-title">资讯管理</span>
										</a>
									</li>
									<li>
										<a href="../news/gas_manage.html">
											<i class="fa fa-globe"></i>
											<span class="submenu-title">燃气服务点管理</span>
										</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="#">
									<i class="fa fa-frown-o fa-fw">
										<div class="icon-bg bg-pink"></div>
									</i>
									<span class="menu-title">投诉建议管理</span>
									<span class="fa arrow"></span>
								</a>
								<ul class="nav nav-second-level">
									<li>
										<a href="../complain/reply.html">
											<i class="fa fa-check-circle-o"></i>
											<span class="submenu-title">答复客户</span>
										</a>
									</li>
									<li>
										<a href="../complain/complain_count.html">
											<i class="fa fa-subscript"></i>
											<span class="submenu-title">投诉统计</span>
										</a>
									</li>
									<li>
										<a href="../complain/gather_advise.html">
											<i class="fa fa-hand-o-right"></i>
											<span class="submenu-title">收集建议</span>
										</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="#">
									<i class="fa fa-tint fa-fw">
										<div class="icon-bg bg-pink"></div>
									</i>
									<span class="menu-title">积分规则</span>
									<span class="fa arrow"></span>
								</a>
								<ul class="nav nav-second-level">
									<li>
										<a href="../integral_rule/rule_manage.html">
											<i class="fa fa-tasks"></i>
											<span class="submenu-title">规则管理</span>
										</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="../mobile/mobile_manage.html">
									<i class="fa fa-mobile fa-fw">
										<div class="icon-bg bg-pink"></div>
									</i>
									<span class="menu-title">移动客户端管理</span>
								</a>
							</li>
							<li>
								<a href="../vocational_work/vocational_work_count.html">
									<i class="fa fa-retweet fa-fw">
										<div class="icon-bg bg-pink"></div>
									</i>
									<span class="menu-title">业务统计</span>
								</a>
							</li>
							<li>
								<a href="#">
									<i class="fa fa-envelope-o fa-fw">
										<div class="icon-bg bg-pink"></div>
									</i>
									<span class="menu-title">手机短信&邮件设置</span>
									<span class="fa arrow"></span>
								</a>
								<ul class="nav nav-second-level">
									<li>
										<a href="../message/sms.html">
											<i class="fa fa-envelope"></i>
											<span class="submenu-title">短信</span>
										</a>
									</li>
									<li>
										<a href="../message/email.html">
											<i class="fa fa-ticket"></i>
											<span class="submenu-title">邮件</span>
										</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="#">
									<i class="fa fa-shield fa-fw">
										<div class="icon-bg bg-pink"></div>
									</i>
									<span class="menu-title">安全审计</span>
									<span class="fa arrow"></span>
								</a>
								<ul class="nav nav-second-level">
									<li>
										<a href="../security/log_manage.html">
											<i class="fa fa-file-text-o"></i>
											<span class="submenu-title">日志管理</span>
										</a>
									</li>
								</ul>
							</li>
							<li>
								<a href="../rate_of_flow/rate_of_flow_count.html">
									<i class="fa fa-random fa-fw">
										<div class="icon-bg bg-pink"></div>
									</i>
									<span class="menu-title">流量统计</span>
								</a>
							</li>
							
						</ul>
					</div>
				</nav>
				<!--END SIDEBAR MENU-->
				<!--BEGIN PAGE WRAPPER-->
				<div id="page-wrapper">
					<!--BEGIN CONTENT-->
	                <div id="title-breadcrumb-option-demo" class="page-title-breadcrumb">
	                    <div class="page-header pull-left">
	                        <div class="page-title">角色管理</div>
	                    </div>
	                    <ol class="breadcrumb page-breadcrumb">
	                        <li><i class="fa fa-home"></i>&nbsp;<a href="../home/home.html">主页</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
	                        <li><i class="fa fa-key"></i>&nbsp;<a href="#">用户权限管理</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
	                        <li class="active"><i class="fa fa-leaf"></i>&nbsp;角色管理</li>
	                    </ol>
	                    <div class="clearfix"></div>
	                </div>
					<div class="page-content">
						<div class="row">
	                        <div class="col-lg-12">
	                            <div class="portlet box">
                                	<div class="portlet-header">
                                    	<div class="actions">
                                    		<a href="#" class="btn btn-info btn-xs">
                                    			<i class=" fa fa-plus" data-target="#modal-header-primary" data-toggle="modal">
                                    				&nbsp;新增角色
                                    			</i>
                                    		</a>&nbsp;
	                                        <div class="btn-group">
	                                        	<a href="#" data-toggle="dropdown" class="btn btn-warning btn-xs dropdown-toggle">
	                                        		<i class="fa fa-wrench"></i>&nbsp;Tools
	                                        	</a>
	                                            <ul class="dropdown-menu pull-right">
	                                                <li><a href="#">导出到EXCEL</a>
	                                                </li>
	                                                <li><a href="#">导出到CSV</a>
	                                                </li>
	                                                <li><a href="#">导出到XML</a>
	                                                </li>
	                                            </ul>
	                                        </div>
	                                    </div>
                                    </div>
	                                <div class="portlet-body">
	                                    <div class="table-responsive">
	                                        <table id="example1" style="border-bottom:1px solid #ddd" class="table table-striped table-bordered table-hover text-center">
	                                            <thead>
	                                                <tr>
	                                                    <td><strong>角色</strong></td>
	                                                    <td><strong>描述</strong></td>
	                                                    <td><strong>状态</strong></td>
	                                                    <td><strong>创建时间</strong></td>
	                                                    <td><strong>操作</strong></td>
	                                                </tr>
	                                            </thead>
	                                            <tbody>
	                                                <tr class="odd gradeX">
	                                                    <td>系统管理员</td>
	                                                    <td>系统的日常维护</td>
	                                                    <td><span class="label label-sm label-success">启用</span></td>
	                                                    <td class="center">2015-01-01 13:11</td>
	                                                    <td>
	                                                    	<a href="javascript:;">编辑</a>&nbsp;
	                                                    	<a href="javascript:;">删除</a>&nbsp;
	                                                    	<a href="javascript:;">禁用</a>
	                                                    </td>
	                                                </tr>
	                                                <tr class="odd gradeX">
	                                                    <td>采购</td>
	                                                    <td>采购管理</td>
	                                                    <td><span class="label label-sm label-success">启用</span></td>
	                                                    <td class="center">2015-01-01 13:11</td>
	                                                    <td>
	                                                    	<a href="javascript:;">编辑</a>&nbsp;
	                                                    	<a href="javascript:;">删除</a>&nbsp;
	                                                    	<a href="javascript:;">禁用</a>
	                                                    </td>
	                                                </tr>
	                                                <tr class="odd gradeX">
	                                                    <td>经理</td>
	                                                    <td></td>
	                                                    <td><span class="label label-sm label-success">启用</span></td>
	                                                    <td class="center">2015-01-01 13:11</td>
	                                                    <td>
	                                                    	<a href="javascript:;">编辑</a>&nbsp;
	                                                    	<a href="javascript:;">删除</a>&nbsp;
	                                                    	<a href="javascript:;">禁用</a>
	                                                    </td>
	                                                </tr>
	                                                <tr class="odd gradeX">
	                                                    <td>财务</td>
	                                                    <td></td>
	                                                    <td><span class="label label-sm label-success">启用</span></td>
	                                                    <td class="center">2015-01-01 13:11</td>
	                                                    <td>
	                                                    	<a href="javascript:;">编辑</a>&nbsp;
	                                                    	<a href="javascript:;">删除</a>&nbsp;
	                                                    	<a href="javascript:;">禁用</a>
	                                                    </td>
	                                                </tr>
	                                                <tr class="odd gradeX">
	                                                    <td>主管</td>
	                                                    <td></td>
	                                                    <td><span class="label label-sm label-success">启用</span></td>
	                                                    <td class="center">2015-01-01 13:11</td>
	                                                    <td>
	                                                    	<a href="javascript:;">编辑</a>&nbsp;
	                                                    	<a href="javascript:;">删除</a>&nbsp;
	                                                    	<a href="javascript:;">禁用</a>
	                                                    </td>
	                                                </tr>
	                                                <tr class="odd gradeX">
	                                                    <td>主管2</td>
	                                                    <td></td>
	                                                    <td><span class="label label-sm label-success">启用</span></td>
	                                                    <td class="center">2015-01-01 13:11</td>
	                                                    <td>
	                                                    	<a href="javascript:;">编辑</a>&nbsp;
	                                                    	<a href="javascript:;">删除</a>&nbsp;
	                                                    	<a href="javascript:;">禁用</a>
	                                                    </td>
	                                                </tr>
	                                                <tr class="odd gradeX">
	                                                    <td>主管3</td>
	                                                    <td></td>
	                                                    <td><span class="label label-sm label-grey">禁用</span></td>
	                                                    <td class="center">2015-01-01 13:11</td>
	                                                    <td>
	                                                    	<a href="javascript:;">编辑</a>&nbsp;
	                                                    	<a href="javascript:;">删除</a>&nbsp;
	                                                    	<a href="javascript:;">启用</a>
	                                                    </td>
	                                                </tr>
	                                                <tr class="odd gradeX">
	                                                    <td>主管4</td>
	                                                    <td></td>
	                                                    <td><span class="label label-sm label-success">启用</span></td>
	                                                    <td class="center">2015-01-01 13:11</td>
	                                                    <td>
	                                                    	<a href="javascript:;">编辑</a>&nbsp;
	                                                    	<a href="javascript:;">删除</a>&nbsp;
	                                                    	<a href="javascript:;">禁用</a>
	                                                    </td>
	                                                </tr>
	                                                <tr class="odd gradeX">
	                                                    <td>主管5</td>
	                                                    <td></td>
	                                                    <td><span class="label label-sm label-success">启用</span></td>
	                                                    <td class="center">2015-01-01 13:11</td>
	                                                    <td>
	                                                    	<a href="javascript:;">编辑</a>&nbsp;
	                                                    	<a href="javascript:;">删除</a>&nbsp;
	                                                    	<a href="javascript:;">禁用</a>
	                                                    </td>
	                                                </tr>
	                                                <tr class="odd gradeX">
	                                                    <td>主管5</td>
	                                                    <td></td>
	                                                    <td><span class="label label-sm label-grey">禁用</span></td>
	                                                    <td class="center">2015-01-01 13:11</td>
	                                                    <td>
	                                                    	<a href="javascript:;">编辑</a>&nbsp;
	                                                    	<a href="javascript:;">删除</a>&nbsp;
	                                                    	<a href="javascript:;">启用</a>
	                                                    </td>
	                                                </tr>
	                                                <tr class="odd gradeX">
	                                                    <td>主管5</td>
	                                                    <td></td>
	                                                    <td><span class="label label-sm label-grey">禁用</span></td>
	                                                    <td class="center">2015-01-01 13:11</td>
	                                                    <td>
	                                                    	<a href="javascript:;">编辑</a>&nbsp;
	                                                    	<a href="javascript:;">删除</a>&nbsp;
	                                                    	<a href="javascript:;">启用</a>
	                                                    </td>
	                                                </tr>
	                                            </tbody>
	                                        </table>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                    
	                    <!--
                        	作者：zhijie_94@163.com
                        	时间：2015-06-14
                        	描述：新增角色弹出框
                        -->
                        <div id="modal-header-primary" tabindex="-1" role="dialog" aria-labelledby="modal-header-primary-label" aria-hidden="true" class="modal fade">
                            <form action="#" class="form-validate form-horizontal">
		                        <div class="modal-dialog">
		                            <div class="modal-content">
		                                <div class="modal-header modal-header-primary">
		                                    <button type="button" data-dismiss="modal" aria-hidden="true" class="close">&times;</button>
		                                    <h4 id="modal-header-primary-label" class="modal-title">新增角色</h4>
		                                </div>
		                                <div class="modal-body">
	                                        <div class="form-group">
                                        		<label for="roleName" class="col-md-2 control-label text-right">角色名称</label>
	                                            <div class="col-md-10">
                                                    <div class="input-icon">
			                                            <input type="text" name="roleName" id="roleName" class="form-control required" />
                                                    </div>
                                                </div>
	                                        </div>
	                                        <div class="form-group">
                                        		<label for="roleDesc" class="col-md-2 control-label text-right">描述</label>
	                                            <div class="col-md-10">
                                                    <div class="input-icon">
			                                            <input type="text" name="roleDesc" id="roleDesc" class="form-control" />
                                                    </div>
                                                </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="add_role_form_status_select" class="col-md-2 control-label text-right">状态</label>
	                                            <div class="col-md-10">
                                                    <div class="input-icon">
			                                            <select id="add_role_form_status_select" class="select2"  style="width:50%;">
			                                            	<option selected>启用</option>
			                                            	<option>禁用</option>
			                                            </select>
                                                    </div>
                                                </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="add_role_form_resource_select" class="col-md-2 control-label text-right">关联菜单</label>
	                                            <div class="col-md-10">
                                                	<div class="family-tree-vertical pre-scrollable" style="max-height: 230px;">
		                                                <ul><li><a href="#">主页</a></li></ul>
		                                                <ul>
		                                                    <li>
		                                                    	<a href="#">用户权限管理</a>
		                                                        <ul>
		                                                            <li><a href="#">角色管理</a></li>
		                                                            <li><a href="#">资源管理(菜单)</a></li>
		                                                            <li><a href="#">用户授权</a></li>
		                                                        </ul>
		                                                    </li>
		                                                </ul>
		                                                <ul>
		                                                    <li>
		                                                    	<a href="#">管道气业务管理</a>
		                                                        <ul>
		                                                            <li><a href="#">业务详情</a></li>
		                                                            <li><a href="#">预约</a></li>
		                                                        </ul>
		                                                    </li>
		                                                </ul>
		                                                <ul>
		                                                    <li>
		                                                    	<a href="#">采编管理</a>
		                                                        <ul>
		                                                            <li><a href="#">资讯管理</a></li>
		                                                            <li><a href="#">燃气服务点管理</a></li>
		                                                        </ul>
		                                                    </li>
		                                                </ul>
		                                                <ul>
		                                                    <li>
		                                                    	<a href="#">投诉建议管理</a>
		                                                        <ul>
		                                                            <li><a href="#">答理客户</a></li>
		                                                            <li><a href="#">投诉统计</a></li>
		                                                            <li><a href="#">收集建议</a></li>
		                                                        </ul>
		                                                    </li>
		                                                </ul>
		                                                <ul>
		                                                    <li>
		                                                    	<a href="#">积分规则</a>
		                                                        <ul>
		                                                            <li><a href="#">规则管理</a></li>
		                                                        </ul>
		                                                    </li>
		                                                </ul>
		                                                <ul>
		                                                    <li>
		                                                    	<a href="#">移动客户端管理</a>
		                                                    </li>
		                                                </ul>
		                                                <ul>
		                                                    <li>
		                                                    	<a href="#">业务统计</a>
		                                                    </li>
		                                                </ul>
		                                                <ul>
		                                                    <li>
		                                                    	<a href="#">手机短信&邮件设置</a>
		                                                        <ul>
		                                                            <li><a href="#">短信</a></li>
		                                                            <li><a href="#">邮件</a></li>
		                                                        </ul>
		                                                    </li>
		                                                </ul>
		                                                <ul>
		                                                    <li>
		                                                    	<a href="#">安全审计</a>
		                                                        <ul>
		                                                            <li><a href="#">日志管理</a></li>
		                                                        </ul>
		                                                    </li>
		                                                </ul>
		                                                <ul>
		                                                    <li>
		                                                    	<a href="#">流量统计</a>
		                                                    </li>
		                                                </ul>
		                                            </div>
                                                </div>
	                                        </div>
		                                </div>
		                                <div class="modal-footer">
		                                    <button type="submit" class="btn btn-success">保存修改</button>
		                                    <button type="button" data-dismiss="modal" class="btn btn-default">关闭</button>
		                                </div>
		                            </div>
		                        </div>
                            </form>
	                    </div>
					</div>
					<!--END CONTENT-->
					
				</div>
				<!--BEGIN FOOTER-->
				<div id="footer" class="navbar-fixed-bottom">
					<div class="copyright">2015 © 版权</div>
				</div>
				<!--END FOOTER-->
				<!--END PAGE WRAPPER-->
			</div>
		</div>
	    <script src="../../js/jquery-1.10.2.min.js"></script>
	    <script src="../../js/jquery-migrate-1.2.1.min.js"></script>
	    <script src="../../js/jquery-ui.js"></script>
	    <!--loading bootstrap js-->
	    <script src="../../vendors/bootstrap/js/bootstrap.min.js"></script>
	    <script src="../../vendors/bootstrap-hover-dropdown/bootstrap-hover-dropdown.js"></script>
	    <script src="../../js/html5shiv.js"></script>
	    <script src="../../js/respond.min.js"></script>
	    <script src="../../vendors/metisMenu/jquery.metisMenu.js"></script>
	    <script src="../../vendors/slimScroll/jquery.slimscroll.js"></script>
	    <script src="../../vendors/jquery-cookie/jquery.cookie.js"></script>
	    <script src="../../vendors/iCheck/icheck.min.js"></script>
	    <script src="../../vendors/iCheck/custom.min.js"></script>
	    <script src="../../vendors/jquery-notific8/jquery.notific8.min.js"></script>
	    <script src="../../vendors/jquery-highcharts/highcharts.js"></script>
	    <script src="../../js/jquery.menu.js"></script>
	    <script src="../../vendors/holder/holder.js"></script>
	    <script src="../../vendors/responsive-tabs/responsive-tabs.js"></script>
	    <script src="../../vendors/jquery-news-ticker/jquery.newsTicker.min.js"></script>
	    <script src="../../vendors/moment/moment.js"></script>
	    <script src="../../vendors/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
	    <script src="../../vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
	    <!--CORE JAVASCRIPT-->
	    <script src="../../js/main.js"></script>
	    <!--LOADING SCRIPTS FOR PAGE-->
	    <script src="../../vendors/DataTables/media/js/jquery.dataTables.js"></script>
	    <script src="../../vendors/DataTables/media/js/dataTables.bootstrap.js"></script>
	    <script src="../../vendors/DataTables/jquery.jeditable.js"></script>
	    <script src="../../js/table-editable.js"></script>
    	<script src="../../vendors/jquery-validate/jquery.validate.min.js"></script>
    	<script src="../../js/form-validation.js"></script>
    	<script src="../../vendors/select2/select2.min.js"></script>
    	<script type="text/javascript">
    		$(function(){
    			$(".select2").select2();
    		});
    	</script>
	</body>

</html>