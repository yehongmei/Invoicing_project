<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,vo.*"%>
<%String path = request.getContextPath();String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>

<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<title>销售管理</title>
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

	<div class="level">
		<img src="images/house.png">
		<div class="txt">&nbsp;首页&nbsp;&gt;&nbsp;销售管理&nbsp;&gt;&nbsp;订货单</div>
	</div>
<form action="selectAllOrders" method="post">
	<div class="whole">
		
		<div class="littletitle">搜索查询</div>
		订单编号：<input type="text" placeholder="请输入订单编号" name="ocode">&nbsp;&nbsp;
		商品名称：<input type="search" style="height: 30px" placeholder="请输入商品名称" name="mname">&nbsp;&nbsp;
		<input type="submit" value="查询">
	</div>
</form>
	<div class="main">
		<%
		List<Orders> list= (List<Orders>) request.getAttribute("allOrders");
	%>
		<table id="cs_table" border-color="blue" class="data-table">
			<thead>
				<tr class="head">
					<td>订单ID</td>
					<td>订单编号</td>
					<td>客户名称</td>
					<td>商品名称</td>
					<td>订货日期</td>
					<td>订货数量</td>
					<td>经手人</td>
					<td>操作</td>
				</tr>
			</thead>
			<tbody id="group_one">
				<%
				for (int i = 0; i < list.size(); i++) {
					Orders orders = list.get(i);
			%>
				<tr>
					<td><%=orders.getOid()%></td>
					<td><%=orders.getOcode()%></td>
					<td><%=orders.getCname()%></td>
					<td><%=orders.getMname()%></td>
					<td><%=orders.getOrderdata()%></td>
					<td><%=orders.getOamount()%></td>
					<td><%=orders.getEname()%></td>
					 <td> <a href=""
						style="text-decoration: none">新增</a>&nbsp;&nbsp; 
						<a href="" style="text-decoration: none">修改</a>&nbsp;&nbsp;
						<a href="" style="text-decoration: none">删除</a></td>
					<%} %>
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