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
    <div class="txt">&nbsp;首页&nbsp;&gt;&nbsp;档案管理&nbsp;&gt;&nbsp;员工档案&nbsp;&gt;&nbsp;新增</div>
</div>

<div class="content">
    <form action="employeeRegister" method="post">
        <table>
          <tr>
            <td >员工编号：</td>
            <td class="edit"><input type="text" name="ecode"></td>
        </tr>
        <tr>
            <td class="title">员工姓名：</td>
            <td class="edit"><input type="text" name="ename"></td>
        </tr>
        <tr>
            <td class="title">员工性别：</td>
            <td class="edit">&nbsp;<input type="radio" name="sex" value="男" checked>&nbsp;男&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio" name="sex" value="女">&nbsp;女</td>
        </tr>
        <tr>
            <td class="title">出生年月日：</td>
            <td class="edit"><input type="text" name="birthday"></td>
        </tr>
        <tr>
            <td class="title">员工电话：</td>
            <td class="edit"><input type="text" name="etelephone"></td>
        </tr>
        <tr>
            <td class="title">员工Email：</td>
            <td class="edit"><input type="text" name="eemail"></td>
        </tr>
           
        </table>
        <input type="submit" value="保存" id="save"><input type="reset" value="重置" id="reset">
    </form>
</div>
</body>
</html>
