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
<title>欢迎进入进销存管理系统！</title>
<base href="<%=basePath%>">
<style type="text/css">
#topFrame {
	box-shadow: 0 0 10px grey;
	display: block;
	position: absolute;
	z-index: 999;
}

#leftFrame {
	box-shadow: 0 5px 8px grey;
}

#mainFrame {
	position: relative;
	z-index: 1;
}
</style>
</head>

<frameset rows="120,*" cols="*" frameborder="no" border="0"
	framespacing="0">
	<frame src="jsp/top.jsp" name="topFrame" scrolling="No"
		noresize="noresize" id="topFrame" title="topFrame" />
	<frameset cols="230,*" rows="100%" frameborder="1" border="0"
		framespacing="0">
		<frame src="jsp/left.jsp" name="leftFrame" scrolling="No"
			noresize="noresize" id="leftFrame" title="leftFrame" />
		<frame src="jsp/introduce.jsp" name="mainFrame" id="mainFrame"
			title="mainFrame" />
	</frameset>
</frameset>
<noframes>
	<body>
	</body>
</noframes>
</html>