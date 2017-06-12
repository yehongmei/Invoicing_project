
<%@page import="vo.*"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String path = request.getContextPath();String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>

<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>修改客户信息</title>
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
Stockin stockin = (Stockin)request.getAttribute("stockin");
%>
<div class="content">
    <form action="updateStockInOrder" method="post">
    <input type="hidden" value="<%= stockin.getSid()%>" name="sid">
        <table>
            <tr>
                <td class="title">进货单编号：</td>
                <td class="edit"><input type="text" class="text" name="scode" value=<%=stockin.getScode() %>></td>
            </tr>
            <tr>
                <td class="title">供应商名称：</td>
                <td class="edit">
                <select name="cname" value=<%=stockin.getCname() %>>
                	
                	
                	<%
                		for(int i=0;i<customers.size();i++){
                			Customer c = customers.get(i);
                		
                			if(String.valueOf(c.getCid()).equals(stockin.getCname())){
                	%>
                				<option selected="selected" value="<%=c.getCid()%>"><%=c.getCname() %></option>
                	<%}else{%>
                				<option value="<%=c.getCid()%>"><%=c.getCname() %></option>
                	<%		}
                	}%>
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
                		
                			if(String.valueOf(c.getMid()).equals(stockin.getMname())){
                	%>
                				<option selected="selected" value="<%=c.getMid()%>"><%=c.getMname()%></option>
                	<%}else{%>
                				<option value="<%=c.getMid()%>"><%=c.getMname()%></option>
                	<%		}
                	}%>
                </select>
				</td>
            </tr>
            <tr>
                <td class="title">货物数量：</td>
                <td class="edit"><input type="number" class="text" name="samount" value="<%=stockin.getSamount()%>"></td>
            </tr>
                <tr>
                <td class="title">进货时间：</td>
                <td class="edit"><input  class="text" name="stockindate" value="<%=stockin.getStockindate() %>"></td>
            </tr>
            <tr>
                <td class="title">经手人：</td>
                <td class="edit">
					<select name="ename">
                	<%
                		for(int i=0;i<employees.size();i++){
                			Employee c = employees.get(i);
                		
                			if(String.valueOf(c.getEid()).equals(stockin.getEname())){
                	%>
                				<option selected="selected" value="<%=c.getEid()%>"><%=c.getEname()%></option>
                	<%}else{%>
                				<option  value="<%=c.getEid()%>"><%=c.getEname()%></option>	
                	<%		}
                	}%>
                </select>
				</td>
            </tr>
        </table>
        <input type="submit" value="保存" id="save"><input type="reset" value="重置" id="reset">
    </form>
</div>
</body>
</html>