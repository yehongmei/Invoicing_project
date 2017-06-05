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
    <title></title>
    <base href="<%=basePath%>">
    <link rel="stylesheet" type="text/css" href="css/top.css">
    <script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
</head>
<body>
<div class="rec">
    <img src="images/shopcar.png" id="middle">
    <h1>进&nbsp;&nbsp;销&nbsp;&nbsp;存&nbsp;&nbsp;管&nbsp;&nbsp;理&nbsp;&nbsp;系&nbsp;&nbsp;统</h1>
</div>
</body>
</html>