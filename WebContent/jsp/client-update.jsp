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
	Customer customer= (Customer) request.getAttribute("customer");
	%>

<div class="level">
    <img src="images/house.png">
    <div class="txt">&nbsp;首页&nbsp;&gt;&nbsp;档案管理&nbsp;&gt;&nbsp;客户档案&nbsp;&gt;&nbsp;修改</div>
</div>

<div class="content">
    <form action="customerUpdate" method="post">
        <table>
      
        	   <tr>
                <td class="title">客户id：</td>
                <td class="edit"><input value="<%=customer.getCid()%>" name="cid"></td>
            </tr>
            <tr>
                <td class="title">客户编号：</td>
                <td class="edit"><input value="<%=customer.getCcode()%>" name="ccode"></td>
            </tr>
            <tr>
                <td class="title">客户名称：</td>
                <td class="edit"><input value="<%=customer.getCname()%>" name="cname"></td>
            </tr>
            <tr>
                <td class="title">地址：</td>
                <td class="edit"><input value="<%=customer.getAdress()%>" name="adress"></td>
            </tr>
            <tr>
                <td class="title">电话：</td>
                <td class="edit"><input value="<%=customer.getCtelephone()%>" name="ctelephone"></td>
            </tr>
            <tr>
                <td class="title">电子邮件：</td>
                <td class="edit"><input value="<%=customer.getCemail()%>" name="cemail"></td>
            </tr>
        </table>
        <input type="submit" value="保存" id="save"><input type="reset" value="重置" id="reset">
    </form>
</div>
</body>
</html>