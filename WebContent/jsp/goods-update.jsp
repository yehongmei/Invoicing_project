<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,vo.*"%>
<%String path = request.getContextPath();String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>

<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<title>新增客户信息</title>
<base href="<%=basePath%>">
<link rel="stylesheet" type="text/css" href="css/insert.css">
</head>
<body>
	<%
	Merchandise merchandise= (Merchandise) request.getAttribute("merchandise");
	%>

	<div class="level">
		<img src="images/house.png">
		<div class="txt">&nbsp;首页&nbsp;&gt;&nbsp;档案管理&nbsp;&gt;&nbsp;客户档案&nbsp;&gt;&nbsp;修改</div>
	</div>

	<div class="content">
		<form action="merchandiseUpdate" method="post">
			<table>
				<tr>
					<td class="title">商品ID：</td>
					<td class="edit"><input type="text" name="mid"
						value="<%=merchandise.getMid()%>" class="text" autofocus></td>
				</tr>
				<tr>
					<td class="title">商品编号：</td>
					<td class="edit"><input type="text" name="mcode"
						value="<%=merchandise.getMcode()%>" class="text" autofocus></td>
				</tr>
				<tr>
					<td class="title">商品名称：</td>
					<td class="edit"><input type="text" name="mname"
						value="<%=merchandise.getMname()%>" class="text"></td>
				</tr>
				<tr>
					<td class="title">单价：</td>
					<td class="edit"><input type="text" name="mprice"
						value="<%=merchandise.getMprice()%>" class="text"></td>
				</tr>
			</table>
			</table>
			<input type="submit" value="保存" id="save"><input type="reset"
				value="重置" id="reset">
		</form>
	</div>
</body>
</html>