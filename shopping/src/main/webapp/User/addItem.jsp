<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>cartlist.jsp</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>	
	<link rel="stylesheet" type="text/css" href="<c:url value='/User/css/pager.css'/>" />
    
	<style type="text/css">
		.row1{
			background-color: #F0FFF0;
		}
	</style>
  </head>
  <body>

	<c:choose>
		<c:when test="${empty pb.beanList }">
			<table width="95%" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td>
						<span class="spanEmpty">购物车为空</span>
						<a href="<c:url value='/GoodServlet?method=findAll'/>">添加物品</a> 
					</td>
				</tr>
			</table>  
		</c:when>
		<c:otherwise>
		<div  align="center">我的购物车</div>
			<table width="95%" align="center" cellpadding="0" cellspacing="0">
				<tr bgcolor="#efeae5">
					<td>名称</td>
					<td>数量</td>
					<td>单价</td>
					<td>总价</td>
					<td>操作</td>
				</tr>	
	
				<c:forEach items="${pb.beanList }" var="cardItem" varStatus="status">
					<tr >					
						<td align="left" width="100px" >
						    <a  href="<c:url value='/GoodServlet?method=findByGid&gId=${cardItem.g_id  }'/>"><span>${cardItem.good.gName }</span></a>
						</td>
						<td align="left" width="100px" >
						    <span>${cardItem.g_quantity }</span>
						</td>
						<td>${cardItem.good.gPrice }</td>
						<td>${cardItem.good.gPrice * cardItem.g_quantity }</td>
						<td>
							<a href="<c:url value='/CardServlet?method=addItem&g_id=${ cardItem.g_id }&g_quantity=${ cardItem.g_quantity}&cardId=${cardItem.card_id }&o_id=${orderId }&itemPrice=${cardItem.good.gPrice * cardItem.g_quantity }'/>" target="body">添加到    ${orderId } 号订单中</a>
						</td>
					</tr>
					<br>
				</c:forEach>
	
			</table>
	
		</c:otherwise>
	</c:choose>
	<c:if test="${!empty pb.beanList}">
		<div align="center"><%@include file="/User/pager.jsp" %></div>
	</c:if>

  </body>
</html>