<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en" >
<head>
    <meta charset="UTF-8">
    <title>进销存介绍</title>
    <base href="<%=basePath%>">

        <script src="js/LunBoQI.js"></script>

</head>
<body>
<div id="banner">
    <img id="img" src="images/jxc2.png"/>
</div>
</body>
</html>