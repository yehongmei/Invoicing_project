<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
			<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>进销存系统左侧栏菜单</title>
<base href="<%=basePath%>">

<link rel="stylesheet" href="css/sidebar-menu.css">
<style type="text/css">
</style>
</head>
<body>
	<aside class="main-sidebar">
		<section class="sidebar">
			<ul class="sidebar-menu">
				<li class="header">简化进销存系统</li>
				<li class="treeview"><a href="#"> <i class="fa fa-files-o"></i>
						<span>档案管理</span> <span class="label label-primary pull-right">3</span>
				</a>
					<ul class="treeview-menu" style="display: none;">
						<li><a href="selectAllemployee" target="mainFrame"><i
								class="fa fa-circle-o"></i> 员工档案</a></li>
						<li><a href="selectAllmerchandise" target="mainFrame"><i
								class="fa fa-circle-o"></i> 商品档案</a></li>
						<li><a href="selectAllCustomer" target="mainFrame"><i
								class="fa fa-circle-o"></i> 客户档案</a></li>
					</ul></li>
				<li class="treeview"><a href="#"> <i
						class="fa fa-pie-chart"></i> <span>销售管理</span> <i
						class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu">
						<li><a href="selectAllOrders" target="mainFrame"><i
								class="fa fa-circle-o"></i> 订货单</a></li>
					</ul></li>
				<li class="treeview"><a href="#"> <i class="fa fa-laptop"></i>
						<span>进货管理</span> <i class="fa fa-angle-left pull-right"></i>
				</a>
					<ul class="treeview-menu">
						<li><a href="selectAllStockin" target="mainFrame"><i
								class="fa fa-circle-o"></i> 进货单</a></li>
					</ul></li>
			</ul>
		</section>
	</aside>

	<script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
	<script src="js/sidebar-menu.js"></script>
	<script>
    $.sidebarMenu($('.sidebar-menu'))
</script>

</body>
</html>