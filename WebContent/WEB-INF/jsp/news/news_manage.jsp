<!DOCTYPE html>
<html lang="en">

	<head>
		<title>深燃管理平台-采编管理</title>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="Thu, 19 Nov 1900 08:52:00 GMT">
		<link rel="shortcut icon" href="../../images/icons/favicon.ico">
		<link rel="apple-touch-icon" href="../../images/icons/favicon.png">
		<link rel="apple-touch-icon" sizes="72x72" href="../../images/icons/favicon-72x72.png">
		<link rel="apple-touch-icon" sizes="114x114" href="../../images/icons/favicon-114x114.png">
		<!--Loading bootstrap css-->
		<link type="text/css" href="../../css/google-family.css">
		<link type="text/css" rel="stylesheet" href="../../vendors/jquery-ui-1.10.4.custom/css/ui-lightness/jquery-ui-1.10.4.custom.min.css">
		<link type="text/css" rel="stylesheet" href="../../vendors/font-awesome/css/font-awesome.min.css">
		<link type="text/css" rel="stylesheet" href="../../vendors/bootstrap/css/bootstrap.min.css">
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
							<li>
								<a href="#">
									<i class="fa fa-key fa-fw">
										<div class="icon-bg bg-orange"></div>
									</i>
									<span class="menu-title">用户权限管理</span>
									<span class="fa arrow"></span>
								</a>
								<ul class="nav nav-second-level">
									<li>
										<a href="../user_role/role-manager.html">
											<i class="fa fa-leaf"></i>
											<span class="submenu-title">角色管理</span>
										</a>
									</li>
									<li class="active">
										<a href="../user_role/resource-manager.html">
											<i class="fa fa-bookmark-o"></i>
											<span class="submenu-title">资源管理(菜单)</span>
										</a>
									</li>
									<li>
										<a href="../user_role/authorization-manager.html">
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
							<li class="active">
								<a href="#">
									<i class="fa fa-pagelines fa-fw">
										<div class="icon-bg bg-pink"></div>
									</i>
									<span class="menu-title">采编管理</span>
									<span class="fa arrow"></span>
								</a>
								<ul class="nav nav-second-level">
									<li class="active">
										<a href="#">
											<i class="fa fa-folder"></i>
											<span class="submenu-title">资讯管理</span>
										</a>
									</li>
									<li>
										<a href="gas_manage.html">
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
	                        <div class="page-title">资讯管理</div>
	                    </div>
	                    <ol class="breadcrumb page-breadcrumb">
	                        <li><i class="fa fa-home"></i>&nbsp;<a href="../home/home.html">主页</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
	                        <li><i class="fa fa-pagelines"></i>&nbsp;<a href="#">采编管理</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
	                        <li class="active"><i class="fa fa-folder"></i>&nbsp;资讯管理</li>
	                    </ol>
	                    <div class="clearfix"></div>
	                </div>
					<div class="page-content">
						<div class="row">
	                        <div class="col-lg-12">
	                            <div class="portlet box">
                                	<div class="portlet-header">
                                    	<div class="actions">
                                    		<a href="news_add.html" class="btn btn-info btn-xs">
                                    			<i class=" fa fa-plus">
                                    				&nbsp;新增资讯
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
	                                                    <td><strong>资讯标题</strong></td>
	                                                    <td><strong>资讯类别</strong></td>
	                                                    <td><strong>发布到</strong></td>
	                                                    <td><strong>发布时间</strong></td>
	                                                    <td><strong>状态</strong></td>
	                                                    <td><strong>操作</strong></td>
	                                                </tr>
	                                            </thead>
	                                            <tbody>
	                                                <tr class="odd gradeX">
	                                                    <td>特大喜讯,昨日深燃煤气普遍降价</td>
	                                                    <td>新闻</td>
	                                                    <td>燃气公告版块</td>
	                                                    <td>2015-01-01 13:11</td>
	                                                    <td><span class="label label-sm label-info">已审核</span></td>
	                                                    <td>
	                                                    	<a href="javascript:;">发布</a>&nbsp;
	                                                    	<a href="javascript:;">退回</a>&nbsp;
	                                                    	<a href="javascript:;">删除</a>
	                                                    </td>
	                                                </tr>
	                                                <tr class="odd gradeX">
	                                                    <td>特大喜讯,昨日深燃煤气普遍降价</td>
	                                                    <td>新闻</td>
	                                                    <td>燃气公告版块</td>
	                                                    <td>2015-01-01 13:11</td>
	                                                    <td><span class="label label-sm label-grey">待审核</span></td>
	                                                    <td>
	                                                    	<a href="javascript:;">审核</a>&nbsp;
	                                                    	<a href="javascript:;">编辑</a>&nbsp;
	                                                    	<a href="javascript:;">删除</a>
	                                                    </td>
	                                                </tr>
	                                                <tr class="odd gradeX">
	                                                    <td>走访深燃煤气</td>
	                                                    <td>科谱</td>
	                                                    <td>知识宣传版块</td>
	                                                    <td>2015-01-01 13:11</td>
	                                                    <td><span class="label label-sm label-grey">待审核</span></td>
	                                                    <td>
	                                                    	<a href="javascript:;">审核</a>&nbsp;
	                                                    	<a href="javascript:;">编辑</a>&nbsp;
	                                                    	<a href="javascript:;">删除</a>
	                                                    </td>
	                                                </tr>
	                                                <tr class="odd gradeX">
	                                                    <td>走访深燃煤气</td>
	                                                    <td>科谱</td>
	                                                    <td>知识宣传版块</td>
	                                                    <td>2015-01-01 13:11</td>
	                                                    <td><span class="label label-sm label-success">已发布</span></td>
	                                                    <td>
	                                                    	<a href="javascript:;">取消发布</a>&nbsp;
	                                                    </td>
	                                                </tr>
	                                            </tbody>
	                                        </table>
	                                    </div>
	                                </div>
	                            </div>
	                        </div>
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