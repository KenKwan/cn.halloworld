<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'index.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!-- <meta http-equiv="refresh" content=0;URL="app/index"> -->

<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<script type="text/javascript" src="resources/js/jquery-1.9.1.min.js"></script>
</head>

<body>
	<h1>Welcome U</h1>
	<input value="Click me" onclick="clickMe();" type="button">
	<%
		System.out.println(path);
		System.out.println(basePath);
	%>
	<script type="text/javascript">
		/* $(document).ready(function(){
			
		}); */
		//alert(${basePath });
		
		function clickMe(){
			$.ajax({
				url: '${path}/app/test/ajax/testList',
				type: 'POST',
				contentType : "application/x-www-form-urlencoded; charset=utf-8",
				   // data: store,
				   cache: false,
			});
		}
	</script>
</body>
</html>
