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
    <title>系统介绍</title>
    <base href="<%=basePath%>">
    <link rel="stylesheet" type="text/css" href="css/introduce.css">
</head>
<body>
<div class="whole">
    <div class="content">
        <span>简化进销存系统(Simple Logistics Management System)</span><br>
        主要有销售、进货两个业务模块并相应有个辅助的基础模块，档案管理。<br>
        &nbsp;&nbsp;&nbsp;销售是公司的销售人员将生产的商品卖给客户，生成销售订单。<br>
        进货是公司的采购人员向供应商采购原材料，生成采购订单。<br>
        &nbsp;&nbsp;&nbsp;与此同时，公司有管理人员能够对公司的员工、商品、供应商和客户进行统一管理维护。<br>
        系统采用B/S方式，界面简单清晰，业务简化，性能良好，可维护性好。<br>
        &nbsp;&nbsp;&nbsp;数据库设计遵照3NF规范，尽量简化，避免复杂。
    </div>
</div>
</body>
</html>