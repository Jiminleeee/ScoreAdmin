<%@page import="kr.ac.kopo.ctc.kopo32.domain.ScoreItem"%>
<%@page import="java.util.List"%>
<%@page import="kr.ac.kopo.ctc.kopo32.service.ScoreItemServiceImpl"%>
<%@page import="kr.ac.kopo.ctc.kopo32.service.ScoreItemService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!--스타일 지정-->
<style type="text/css"> 
	a { text-decoration:none } 
	table {border-spacing: 0px; padding:0px; }
	td {border-spacing: 0px; padding:0px;}
	p { margin-top:0px; margin-bottom:0px;}
</style> 
<title>OneView</title>
</head>
<body>
<%
		ScoreItemService scoreItemService = new ScoreItemServiceImpl();
		List<ScoreItem> scoreItems = scoreItemService.scoreItemSelectName(request.getParameter("name"));
		pageContext.setAttribute("scoreItems", scoreItems);
%>

		<table cellspacing=1 border=1>		
		<tr height=60px  bgcolor=lightgray>		
			<th width=100px>				
				이름
			</th>
			<th width=100px>				
				학번
			</th>
			<th width=100px>			
				국어
			</th>
			<th width=100px>			
				영어
			</th>
			<th width=100px>				
				수학
			</th>

		</tr>
		
			<c:forEach var="scoreItem" items="${scoreItems}">
			
		
			<tr height=80px>
				<td width=50><p align='center'><c:out value= "${scoreItem.name}"/></p></td>
				<td width=50><p align='center'><c:out value="${scoreItem.studentId}"/></p></td>
				<td width=50><p align='center'><c:out value="${scoreItem.kor}"/></p></td>
				<td width=50><p align='center'><c:out value="${scoreItem.eng}"/></p></td>
				<td width=50><p align='center'><c:out value="${scoreItem.mat}"/></p></td>
			</tr>
			</c:forEach>
		</table>

</body>
</html>