<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>搜索服务</title>
		 <link rel="stylesheet" href="../../css/bootstrap.min.css">
	    <script src="../../js/jquery-3.2.1.min.js"></script>
       <script src="../../js/bootstrap.min.js"></script>
	  <style>
	  	.search{
	  		width: 400px;
	  		height: 600px;
	  		position: fixed;
	  		left: 50%;
	  		top: 50%;
	  		margin-left:-150px ;
	  	}
	  </style>
	</head>
	
	<body>s
		 <script src="js/search.js"></script>
		<div class="search" >
			<form class="navbar-form navbar-left" role="search" action="/search" method="post" style="text-align:center ;">
                   <div class="form-group">
                  <input type="text" class="form-control" name="keyword" placeholder="请输入关键词">
                 </div>
				<button type="submit" class="btn btn-default" ><strong style="color: #985f0d">点我啊</strong></button>
               </form>
			
		</div>
		
	</body>
</html>
