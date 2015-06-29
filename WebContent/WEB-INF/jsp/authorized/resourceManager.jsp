<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
	<head>
		<title>深燃管理平台-资源管理</title>
		<%@include file="../common/header.jsp" %>
	</head>

	<body class=" ">
		<div>
			<%@include file="../common/topbar.jsp" %>
			<div id="wrapper">
				<%@include file="../common/leftMenu.jsp" %>
				<!--BEGIN PAGE WRAPPER-->
				<div id="page-wrapper">
					<!--BEGIN CONTENT-->
	                <div id="title-breadcrumb-option-demo" class="page-title-breadcrumb">
	                    <div class="page-header pull-left">
	                        <div class="page-title">资源管理</div>
	                    </div>
	                    <ol class="breadcrumb page-breadcrumb">
	                        <li><i class="fa fa-home"></i>&nbsp;<a href="home/home">主页</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
	                        <li><i class="fa fa-key"></i>&nbsp;<a href="">用户权限管理</a>&nbsp;&nbsp;<i class="fa fa-angle-right"></i>&nbsp;&nbsp;</li>
	                        <li class="active"><i class="fa fa-bookmark-o"></i>&nbsp;资源管理</li>
	                    </ol>
	                    <div class="clearfix"></div>
	                </div>
					<div class="page-content">
                        <div class="col-lg-12">
							<div class="row">
	                            <div class="portlet box">
                                	<div class="portlet-header">
                                    	<div class="actions">
                                    		<a href="javascript:;" class="btn btn-info btn-xs">
                                    			<i class=" fa fa-plus" data-target="#modal-header-primary" data-toggle="modal">
                                    				&nbsp;新增资源
                                    			</i>
                                    		</a>&nbsp;
	                                        <div class="btn-group">
	                                        	<a href="#" data-toggle="dropdown" class="btn btn-warning btn-xs dropdown-toggle">
	                                        		<i class="fa fa-wrench"></i>&nbsp;Tools
	                                        	</a>
	                                            <ul class="dropdown-menu pull-right">
	                                                <li><a href="#">导出到EXCEL</a></li>
	                                                <li><a href="#">导出到CSV</a></li>
	                                                <li><a href="#">导出到XML</a></li>
	                                            </ul>
	                                        </div>
	                                    </div>
                                    </div>
                                    <!-- 查询条件 -->
                                	<div class="portlet-header">
                                		<form id="searchForm" action="authorized/resourceManager" method="post">
											<div class="input-group input-group-sm col-md-3" style="float:right;">
												<input type="search" class="form-control input-sm" name="name" placeholder="资源菜单名称" value="${ queryParam.name }">
												<span class="input-group-btn">
													<input type="submit" class="btn btn-success" value='查询'/>
												</span>
											</div>
										</form>
                                	</div>
                                	<!-- 数据显示区域 -->
	                                <div class="portlet-body">
	                                    <div class="table-responsive">
	                                        <table class="table table-striped table-bordered table-hover text-center">
	                                            <thead>
	                                                <tr>
	                                                    <td><strong>资源菜单</strong></td>
	                                                    <td><strong>父级菜单</strong></td>
	                                                    <td><strong>描述</strong></td>
	                                                    <td><strong>状态</strong></td>
	                                                    <td><strong>创建时间</strong></td>
	                                                    <td><strong>操作</strong></td>
	                                                </tr>
	                                            </thead>
	                                            <tbody>
	                                            	<c:forEach items="${page.list}" var="res">
		                                                <tr>
		                                                    <td>${res.name}</td>
		                                                    <td>${res.pname}</td>
		                                                    <td>${res.remark}</td>
		                                                    <td>
		                                                    	<c:if test="${ res.enable == 0 }">
			                                                    	<span class="label label-sm label-grey">禁用</span>
		                                                    	</c:if>
		                                                    	<c:if test="${ res.enable == 1 }">
			                                                    	<span class="label label-sm label-success">启用</span>
		                                                    	</c:if>
		                                                    </td>
		                                                    <td class="center">2015-01-01 13:11</td>
		                                                    <td>
		                                                    	<a href="javascript:;" >编辑</a>&nbsp;
		                                                    	<a href="javascript:;">删除</a>&nbsp;
		                                                    	<a href="javascript:;">禁用</a>
		                                                    </td>
		                                                </tr>
	                                            	</c:forEach>
	                                            </tbody>
	                                        </table>
	                                    </div>
										<!-- 分页 -->
		                                <x:paging searchFormId="searchForm"/>
	                                </div>
	                                
	                            </div>
	                        </div>
	                    </div>
	                    
	                    <div id="modal-header-primary" tabindex="-1" role="dialog" aria-labelledby="modal-header-primary-label" aria-hidden="true" class="modal fade">
                            <form action="#" class="form-validate form-horizontal">
		                        <div class="modal-dialog">
		                            <div class="modal-content">
		                                <div class="modal-header modal-header-primary">
		                                    <button type="button" data-dismiss="modal" aria-hidden="true" class="close">&times;</button>
		                                    <h4 id="modal-header-primary-label" class="modal-title">新增资源</h4>
		                                </div>
		                                <div class="modal-body">
	                                        <div class="form-group">
                                        		<label for="sourceName" class="col-md-2 control-label text-right">菜单名称</label>
	                                            <div class="col-md-10">
                                                    <div class="input-icon">
			                                            <input type="text" name="sourceName" id="sourceName" class="form-control required" />
                                                    </div>
                                                </div>
	                                        </div>
	                                        <div class="form-group">
                                        		<label for="add_source_form_parent_select" class="col-md-2 control-label text-right">父菜单</label>
	                                            <div class="col-md-10">
                                                    <div class="input-icon">
			                                            <select id="add_source_form_parent_select" class="select2" style="width:50%;">
			                                            	<option selected>请选择</option>
			                                            	<option>主页</option>
			                                            	<option>用户权限管理</option>
			                                            	<option>管道气业务管理</option>
			                                            	<option>采编管理</option>
			                                            	<option>投诉建议管理</option>
			                                            	<option>积分规则</option>
			                                            	<option>移动客户端管理</option>
			                                            	<option>业务统计</option>
			                                            	<option>手机短信&邮件设置</option>
			                                            	<option>安全审计</option>
			                                            	<option>流量统计</option>
			                                            </select>
                                                    </div>
                                                </div>
	                                        </div>
	                                        <div class="form-group">
                                        		<label for="sourceDesc" class="col-md-2 control-label text-right">描述</label>
	                                            <div class="col-md-10">
                                                    <div class="input-icon">
			                                            <input type="text" name="sourceDesc" id="sourceDesc" class="form-control" />
                                                    </div>
                                                </div>
	                                        </div>
	                                        <div class="form-group">
	                                            <label for="add_source_form_status_select" class="col-md-2 control-label text-right">状态</label>
	                                            <div class="col-md-10">
                                                    <div class="input-icon">
			                                            <select id="add_source_form_status_select" class="select2" style="width:50%;">
			                                            	<option selected>启用</option>
			                                            	<option>禁用</option>
			                                            </select>
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
					</div><!-- page content end -->
					<!--END CONTENT-->
				</div>
				<%@include file="../common/footer.jsp" %>
				<!--END PAGE WRAPPER-->
			</div>
		</div>
		<%@include file="../common/script.jsp" %>
	</body>

</html>