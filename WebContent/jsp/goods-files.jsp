<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,vo.*"%>
<%String path = request.getContextPath();String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";%>

<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<title>商品档案管理</title>
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
		List<Merchandise> list= (List<Merchandise>) request.getAttribute("allmerchandise");
	%>
	<div class="level">
		<img src="images/house.png">
		<div class="txt">&nbsp;首页&nbsp;&gt;&nbsp;档案管理&nbsp;&gt;&nbsp;商品档案</div>
	</div>

	<div class="main">
		<table id="cs_table" border-color="blue" class="data-table">
			<thead>
				<tr class="head">
					<td>商品ID</td>
					<td>商品编号</td>
					<td>商品名称</td>
					<td>单价</td>
					<td>操作</td>
				</tr>
			</thead>
			<tbody id="group_one">
				<%
				for (int i = 0; i < list.size(); i++) {
					Merchandise merchandise = list.get(i);
			%>
				<tr>
					<td><%=merchandise.getMid()%></td>
					<td><%=merchandise.getMcode()%></td>
					<td><%=merchandise.getMid()%></td>
					<td><%=merchandise.getMprice()%></td>
					<td><a href="jsp/goods-insert.jsp"
						style="text-decoration: none">新增</a>&nbsp;&nbsp;
					<a href="selectmerchandise?mid=<%=merchandise.getMid()%>" style="text-decoration: none">修改</a>&nbsp;&nbsp;
						<a href="merchandisedelete?mid=<%=merchandise.getMid()%>" style="text-decoration: none">删除</a></td>
					</tr>
					<%
					}
				%>
				</tr>
			</tbody>
			<tfoot>
				<td colspan="4"><span id="divFood"></span>&nbsp;&nbsp; <a
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