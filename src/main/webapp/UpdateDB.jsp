<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="kr.ac.kopo.ctc.kopo32.dao.ScoreItemDaoImpl"%>
<%@page import="kr.ac.kopo.ctc.kopo32.dao.ScoreItemDao"%>
<%@page import="kr.ac.kopo.ctc.kopo32.domain.ScoreItem"%>
<%@page import="kr.ac.kopo.ctc.kopo32.service.ScoreItemServiceImpl"%>
<%@page import="kr.ac.kopo.ctc.kopo32.service.ScoreItemService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- 스타일 지정 -->
<style type="text/css"> 
	a { text-decoration:none } 
	table {border-spacing: 0px; padding:0px; }
	td {border-spacing: 0px; padding:0px;}
	p { margin-top:0px; margin-bottom:0px;}
</style> 
<title>성적 수정</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	ScoreItemDao scoreItemDao = new ScoreItemDaoImpl();
	ScoreItemService scoreItemService = new ScoreItemServiceImpl();
	ScoreItem scoreItemOutput = scoreItemService.scoreItemUpdateOne(request.getParameter("name"), request.getParameter("studentid"),request.getParameter("korean"), request.getParameter("english"), request.getParameter("mathmatic"));
	pageContext.setAttribute("scoreItemOutput", scoreItemOutput);
	
	
	int totalNum = scoreItemDao.selectTotalCount();
	List<ScoreItem> scoreItems = new ArrayList<ScoreItem>();
	scoreItems = scoreItemDao.selectAll(1, totalNum);
	pageContext.setAttribute("scoreItems", scoreItems);
	
		

%>
<h1>성적 수정 </h1>
<!--테이블 만들기-->
	 <table cellspacing=1 border = 1>
	    <tr height=60px bgcolor=lightgray>
	       <td width=100px><p align=center>이름</p></td>
	       <td width=100px><p align=center>학번</p></td>
	       <td width=100px><p align=center>국어</p></td>
	       <td width=100px><p align=center>영어</p></td>
	       <td width=100px><p align=center>수학</p></td>
	    </tr>

<!-- 내용 출력 -->

<c:set var="id" value="${scoreItemOutput.studentId}" />
<c:set var="selectid" value="${scoreItemOutput.studentId}" />

		<c:if test="${id eq selectid}">
			<tr height=80px align=center bgcolor = '#ffff00'>
				<td><p align=center><c:out value= "${scoreItemOutput.name}"/></p></td>
				<td><p align=center><c:out value="${scoreItemOutput.studentId}"/></p></td>
				<td><p align=center><c:out value="${scoreItemOutput.kor}"/></p></td>
				<td><p align=center><c:out value="${scoreItemOutput.eng}"/></p></td>
				<td><p align=center><c:out value="${scoreItemOutput.mat}"/></p></td>
			</tr>
		</c:if>
	
		
	

</body>
</html>