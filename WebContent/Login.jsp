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
	$(document).ready(
			function() {
				$("#user_code").blur(
						function() {
							var user_code = $("#user_code").val();
							$.ajax({
								url : "identifyCode",
								data : "user_code=" + user_code,
								type : "POST",
								success : function(data) {
									if (data) {
										$("#error").html("正确");
									} else {
										$("#identifyCodeImg").attr(
												"src",
												"getIdentifyCode?"
														+ Math.random());
										$("#error").html("有误");
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
				id="username" name="username" value="张三" class="username">
				 <input type="password" placeholder="密&nbsp;&nbsp;码" name="password" value="123456" class="password"> 
				<input type="text" name="user_code" class="user_code" id="user_code"
				placeholder="请输入验证码" /> 
				<img id="identifyCodeImg" src="getIdentifyCode" class="img">
				 <span id="error"></span> 
				 <br/>
				 	 <br/>
				 	 	
				 <input type="submit" value="登录" class="input1">&nbsp;&nbsp;
				 <a href="jsp/register.jsp" style="text-decoration: none" target="parent" class="input1">注册</a></td>
		</div>
	</form>
</body>
</html>