<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String path = request.getContextPath();String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>新增商品信息</title>
    <base href="<%=basePath%>">
    <link rel="stylesheet" type="text/css" href="css/insert.css">
</head>
<body>
<div class="level">
    <img src="images/house.png">
    <div class="txt">&nbsp;首页&nbsp;&gt;&nbsp;档案管理&nbsp;&gt;&nbsp;商品档案&nbsp;&gt;&nbsp;新增</div>
</div>

<div class="content">
    <form action="merchandiseRegister" method="post">
        <table>
            <tr>
                <td class="title">商品编号：</td>
                <td class="edit"><input type="text" name="mcode" class="text" autofocus></td>
            </tr>
            <tr>
                <td class="title">商品名称：</td>
                <td class="edit"><input type="text" name="mname" class="text"></td>
            </tr>
            <tr>
                <td class="title">单价：</td>
                <td class="edit"><input type="text" name="mprice" class="text"></td>
            </tr>
        </table>
        <input type="submit" value="保存" id="save"><input type="reset" value="重置" id="reset">
    </form>
</div>
</body>
</html>