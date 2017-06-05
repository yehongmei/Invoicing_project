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
<title>用户登录</title>
<base href="<%=basePath%>">
<link rel="stylesheet" type="text/css" href="css/login.css">
<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
<script type="text/javascript">

	$(document).ready(function() {
		$("#user_code").blur(function() {
			var user_code = $("#user_code").val();
			$.ajax({
				url : "identifyCode",
				data : "user_code=" + user_code,
				type : "POST",
				success : function(data) {
					if (data) {
						$("#error").html("√ 短信验证码正确，请继续");
					}else{
						$("#identifyCodeImg").attr("src","getIdentifyCode?"+Math.random());
						$("#error").html("× 验证码有误，请核实后重新填写");
					}
				}
			});
		});
	});
</script>
</head>
<body>
	<form action="login" method="post">
		<div>
			<span>LOGIN</span><br> <input type="text" placeholder="用户名"
				id="username" name="username" value="张三"> <input
				type="password" placeholder="密&nbsp;&nbsp;码" password="username"
				value="123456"> <input type="text" name="user_code"
				id="user_code" placeholder="请输入验证码" /> <img id="identifyCodeImg" src="getIdentifyCode">
				<span id="error"></span>
			<input type="submit" value="登录" class="input1">
		</div>
	</form>
</body>
</html>