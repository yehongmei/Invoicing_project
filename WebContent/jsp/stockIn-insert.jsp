
<%@page import="vo.*"%>
<%@page import="java.util.List"%>
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
<%
	List<Customer> customers = (List<Customer>)request.getAttribute("customerNames"); 
	List<Employee> employees = (List<Employee>)request.getAttribute("employeeNames"); 
	List<Merchandise> merchandises= (List<Merchandise>)request.getAttribute("merchandiseNames"); 
%>
<div class="content">
    <form action="addStockInOrder" method="post">
        <table>

            <tr>
                <td class="title">进货单编号：</td>
                <td class="edit"><input type="text" class="text" name="scode" ></td>
            </tr>
            <tr>
                <td class="title">供应商名称：</td>
                <td class="edit">
                <select name="cname">
                	<%
                		for(int i=0;i<customers.size();i++){
                			Customer c = customers.get(i);
                			%>
                			<option value="<%=c.getCid()%>"><%=c.getCname() %></option>
                			<%
                		}
                	%>
                </select>
                </td>
            </tr>
            <tr>
                <td class="title">货物名称：</td>
                <td class="edit">
					<select name="mname">
                	<%
                		for(int i=0;i<merchandises.size();i++){
                			Merchandise c = merchandises.get(i);
                			%>
                			<option value="<%=c.getMid()%>"><%=c.getMname()%></option>
                			<%
                		}
                	%>
                </select>
				</td>
            </tr>
            <tr>
                <td class="title">货物数量：</td>
                <td class="edit"><input type="number" class="text" name="samount"></td>
            </tr>
                <tr>
                <td class="title">进货时间：</td>
                <td class="edit"><input type="tel" class="text" name="stockindate"></td>
            </tr>
            <tr>
                <td class="title">经手人：</td>
                <td class="edit">
					<select name="ename">
                	<%
                		for(int i=0;i<employees.size();i++){
                			Employee c = employees.get(i);
                			%>
                			<option value="<%=c.getEid()%>"><%=c.getEname()%></option>
                			<%
                		}
                	%>
                </select>
				</td>
            </tr>
        </table>
        <input type="submit" value="保存" id="save"><input type="reset" value="重置" id="reset">
    </form>
</div>
</body>
</html>