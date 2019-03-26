
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>搜索结果</title>
    </head>
    <body background="../../img/314879.jpg">
        <div>
			<h2 style="text-align: center;">客户关系表查询结果</h2>
			<h3><a href="/">返回搜索界面</a></h3>
		</div>
    	<div style="background-color: white;">
    	<table border="1" width="100%" cellpadding="0" cellspacing="0">
		<tr style="background-color: orange;">
			<th>客户ID</th>
			<th>客户公司</th>
			<th>客户来源</th>
			<th>客户行业</th>
			<th>客户电话</th>
			<th>客户级别</th>
			<th>客户联系人</th>
			<th>联系人电话</th>
		</tr>
		<c:forEach items="${customer}" var="c" varStatus="vs">
			<tr style='background-color:${vs.count %2==0?"gray":""};'>
				<td>${c.cust_id}</td>
				<td>${c.cust_name}</td>
				<td>${c.cust_phone}</td>
				<td>${c.cust_source}</td>
				<td>${c.cust_industry}</td>
				<td>${c.cust_level}</td>
				<td>${c.cust_linkman}</td>
				<td>${c.cust_linkman_phone}</td>
			</tr>
		</c:forEach>
	</table>
    </div>
    </body>
</html>