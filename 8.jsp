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
    
    <title>lab2</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  <style>
  .bg
  {text-align: center;}
  </style>
  <body class="bg">
  <h1>Index</h1>
<form action="search">
					<input type="text" name="au" maxlength="100" placeholder="input author name"> 
					<input type="submit" value="Go!" >
				</form>
<h2>All Books</h2>
   <s:iterator value="books" var="c">

<s:property value="#c.name" /> <s:property value="#c.author" />
<a href="one?id=<s:property value="#c.id"/>">details</a>
<a href="delete?id=<s:property value="#c.id"/>">delete</a>
<br>
				</s:iterator>
  </body>
</html>
