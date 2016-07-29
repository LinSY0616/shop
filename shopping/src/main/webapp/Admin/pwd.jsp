<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>pwd.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/css/css.css'/>">
	<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/css/user/pwd.css'/>">
	<script type="text/javascript" src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>
	<script type="text/javascript" src="<c:url value='/jsps/js/user/pwd.js'/>"></script>
	<script src="<c:url value='/js/common.js'/>"></script>
  </head>
  
  <body>
    <div class="div0">
    	<span>修改信息</span>
    </div>

	<div class="div1">
		<form action="<c:url value='/UserServlet'/>" method="post" target="_top" onSubmit="validateAll();">
			<input type="hidden" name="method" value="update"/>
		<table align="center">
			<tr>
				<td align="center">修名字：</td>
				<td><input class="input" type="text" name="oldName"  value="${u_name }"/></td>
				<td><label id="loginpassError" class="error">${errors.oldPass }</label></td>
			</tr>
			<tr>
				<td align="center">修改地址：</td>
				<td><input class="input" type="text" name="oldAdress"  value="${u_adress }"/></td>
				<td><label id="loginpassError" class="error">${errors.oldPass }</label></td>
			</tr>
			<tr>
				<td align="center">修改email:</td>
				<td><input class="input" type="text" name="oidEmail" value="${u_email }"/></td>
				<td><label id="loginpassError" class="error">${errors.oldPass }</label></td>
			</tr>
			<tr>
				<td><label class="error">${msg }</label></td>
				<td colspan="2">&nbsp;</td>
			</tr>
		
			<tr>
				<td align="right"></td>
				<td><input id="submit" type="submit" value="修改"/></td>
			</tr>
		</table>
		</form>
	</div>
  </body>
</html>
