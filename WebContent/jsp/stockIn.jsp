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
    <title>进货管理</title>
    <base href="<%=basePath%>">
    <link rel="stylesheet" href="css/stockIn-table.css"/>
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
    <div class="txt">&nbsp;首页&nbsp;&gt;&nbsp;进货管理&nbsp;&gt;&nbsp;进货单</div>
</div>
<form action="selectAllStockin" method="post">
<div class="whole">
    <div class="littletitle">搜索查询</div>
    进货单编号：<input type="text" placeholder="按进货单编号查询" name="scode">&nbsp;&nbsp;
    经手人：<input type="text" style="height: 30px" placeholder="按员工姓名查询" name="ename">&nbsp;&nbsp;
   <input type="submit" value="查询">
</div>
</form>



<div class="main">
<%
		List<Stockin> list = (List<Stockin>) request.getAttribute("allStockin");
	%>
    <table id="cs_table" border-color="blue" class="data-table">
    
        <thead>
            <tr class="head">
             	<td>进货单ID</td>
                <td>进货单编号</td>
                <td>供应商</td>
                <td>货物名称</td>
                <td>进货数量</td>
                <td>进货日期</td>
                <td>经手人</td>
                <td>操作</td>
            </tr>
        </thead>
        <tbody id="group_one">
        	<%
				for (int i = 0; i < list.size(); i++) {
					Stockin stockin = list.get(i);
			%>
            <tr>
                <td ><%=stockin.getSid()%></td>
                <td><%=stockin.getScode()%></td>
                <td><%=stockin.getCname()%></td>
                 <td><%=stockin.getMname()%></td>
                 <td><%=stockin.getSamount()%></td>
                <td><%=stockin.getStockindate()%></td>
                <td><%=stockin.getEname()%></td>
                <td>
                <a href="preAddStockInOrder"
						style="text-decoration: none">新增</a>&nbsp;&nbsp; 
						<a href="selectStockInOrder?sid=<%=stockin.getSid()%>" style="text-decoration: none">修改</a>&nbsp;&nbsp;
						<a href="deleteStockInOrder?sid=<%=stockin.getSid()%>" style="text-decoration: none">删除</a></td>
                	<%
					}
				%>
            </tr>
           
        </tbody>
        <tfoot>
            <td colspan="9">
                <span id="divFood"></span>&nbsp;&nbsp;
                <a href="#" onclick="page.firstPage();"><button>首页</button></a>&nbsp;&nbsp;
                <a href="#" onclick="page.prePage();"><button>上一页</button></a>&nbsp;&nbsp;
                <a href="#" onclick="page.nextPage();"><button>下一页</button></a>&nbsp;&nbsp;
                <a href="#" onclick="page.lastPage();"><button>尾页</button></a>&nbsp;&nbsp;&nbsp;
                <input type="text" id="pageno" value="1" style="width:30px;text-align: center"/>&nbsp;
                <a href="#" onclick="page.aimPage();"><button>跳转</button></a>
            </td>
        </tfoot>
    </table>
    <table id="cs_table2" class="data-table"></table>
    <hr>
</div>
</div>
</body>
</html>