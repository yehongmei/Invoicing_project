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
    <div class="txt">&nbsp;首页&nbsp;&gt;&nbsp;档案管理&nbsp;&gt;&nbsp;进货单&nbsp;&gt;&nbsp;新增</div>
</div>

<div class="content">
    <form action="" method="post">
        <table>
            <tr>
                <td class="title">进货单ID：</td>
                <td class="edit"><input type="text" class="text" name="sid" autofocus></td>
            </tr>
            <tr>
                <td class="title">进货单编号：</td>
                <td class="edit"><input type="text" class="text" name="scode" ></td>
            </tr>
            <tr>
                <td class="title">供应商名称：</td>
                <td class="edit"><input type="text" class="text" name="customerid"></td>
            </tr>
            <tr>
                <td class="title">货物名称：</td>
                <td class="edit"><input type="tel" class="text" name="merchandiseid"></td>
            </tr>
            <tr>
                <td class="title">货物数量：</td>
                <td class="edit"><input type="email" class="text" name="samount"></td>
            </tr>
                <tr>
                <td class="title">进货时间：</td>
                <td class="edit"><input type="tel" class="text" name="stockindate"></td>
            </tr>
            <tr>
                <td class="title">经手人：</td>
                <td class="edit"><input type="email" class="text" name="employeeid"></td>
            </tr>
        </table>
        <input type="submit" value="保存" id="save"><input type="reset" value="重置" id="reset">
    </form>
</div>
</body>
</html>