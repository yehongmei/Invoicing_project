<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<div class="level">
    <img src="images/house.png">
    <div class="txt">&nbsp;首页&nbsp;&gt;&nbsp;用户管理&nbsp;&gt;&nbsp;用户注册</div>
</div>

<div class="content">
    <form action="userinfoRegister"  method="post">
        <table>
        <tr>
            <td class="title">姓名：</td>
            <td class="edit"><input type="text" name="username"></td>
        </tr>
          <tr>
            <td class="title">密码：</td>
            <td class="edit"><input type="text" name="password"></td>
        </tr>
        <tr>
            <td class="title">性别：</td>
            <td class="edit">&nbsp;<input type="radio" name="sex" value="男" checked>&nbsp;男&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio" name="sex" value="女">&nbsp;女</td>
        </tr>
        <tr>
            <td class="title">出生年月日：</td>
            <td class="edit"><input type="text" name="birthday"></td>
        </tr>
        <tr>
            <td class="title">电话：</td>
            <td class="edit"><input type="text" name="telephone"></td>
        </tr>
        <tr>
            <td class="title">Email：</td>
            <td class="edit"><input type="text" name="email"></td>
        </tr>
        </table>
        <input type="submit" value="保存" id="save"><input type="reset" value="重置" id="reset">
    </form>
</div>
</body>
</html>