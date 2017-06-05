<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,vo.*"%>
		<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<title>员工档案管理</title>
<base href="<%=basePath%>">
<link rel="stylesheet" href="css/table.css" />
<script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="js/table.js"></script>
<script type="text/javascript" language="javascript">
        window.onload = function(){
            page = new Page(5,'cs_table','group_one'); };
    </script>
</head>
<body>
	<%
		List<Employee> list = (List<Employee>) request.getAttribute("allEmployee");
	%>
	<div class="level">
		<img src="images/house.png">
		<div class="txt">&nbsp;首页&nbsp;&gt;&nbsp;档案管理&nbsp;&gt;&nbsp;员工档案</div>
	</div>


	<div class="main">
		<table id="cs_table" border-color="blue" class="data-table">
			<thead>
				<tr class="head">
					<td>员工ID</td>
					<td>员工编号</td>
					<td>姓名</td>
					<td>出生日期</td>
					<td>性别</td>
					<td>电话</td>
					<td>电子邮件</td>
					<td>操作</td>
				</tr>
			</thead>
			<tbody id="group_one">
				<%
				for (int i = 0; i < list.size(); i++) {
					Employee employee = list.get(i);
			%>
				<tr>
					<td><%=employee.getEid()%></td>
					<td><%=employee.getEcode()%></td>
					<td><%=employee.getEname()%></td>
					<td><%=employee.getBirthday()%></td>
					<td><%=employee.getSex()%></td>
					<td><%=employee.getEtelephone()%></td>
					<td><%=employee.getEemail()%></td>

			<td><a href="jsp/employee-insert.jsp"
						style="text-decoration: none">新增</a>&nbsp;&nbsp;
						 <a href="selectemployee?eid=<%= employee.getEid()%>" style="text-decoration: none">修改</a>&nbsp;&nbsp;
						<a href="employeedelete?eid=<%= employee.getEid()%>" style="text-decoration: none">删除</a></td>
					<%
					}
				%>
				</tr>
				
			</tbody>
			<tfoot>
				<td colspan="7"><span id="divFood"></span>&nbsp;&nbsp; <a
					href="#" onclick="page.firstPage();"><button>首页</button></a>&nbsp;&nbsp;
					<a href="#" onclick="page.prePage();"><button>上一页</button></a>&nbsp;&nbsp;
					<a href="#" onclick="page.nextPage();"><button>下一页</button></a>&nbsp;&nbsp;
					<a href="#" onclick="page.lastPage();"><button>尾页</button></a>&nbsp;&nbsp;&nbsp;
					<input type="text" id="pageno" value="1"
					style="width: 30px; text-align: center" />&nbsp; <a href="#"
					onclick="page.aimPage();"><button>跳转</button></a></td>
			</tfoot>
		</table>
		<table id="cs_table2" class="data-table"></table>
		<hr>
	</div>
</body>
</html>