<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>Details</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  <h1><a href="">Go back index</a></h1>
  <h1><s:property value="book.name" />'s details</h1>
 <div class="item2">
			BookName:&nbsp;&nbsp;&nbsp;&nbsp;
			<s:property value="book.name" />
		</div>

		<div class="item2">
			publish date:&nbsp;&nbsp;&nbsp;&nbsp;
			<s:property value="book.pubtime" />
		</div>
		<div class="item2">
			publisher:&nbsp;&nbsp;&nbsp;&nbsp;
			<s:property value="book.whopub" />
		</div>
		<div class="item2">
			Price:&nbsp;&nbsp;&nbsp;&nbsp;
			<s:property value="book.price" />
		</div>
		<div style="margin: 12px 0 15px 0;height: 20px;"></div>

		<h1>Author's info</h1>
		<div class="item2">
			Name:&nbsp;&nbsp;&nbsp;&nbsp;
			<s:property value="book.author" />
		</div>
		<div class="item2">
			Age:&nbsp;&nbsp;&nbsp;&nbsp;
			<s:property value="book.age" />
		</div>
		<div class="item2">
			Country:&nbsp;&nbsp;&nbsp;&nbsp;
			<s:property value="book.country" />

  </body>
</html>
