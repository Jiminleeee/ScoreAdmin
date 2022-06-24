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
<title>성적 삭제</title>
</head>
<body>
<h1>성적 삭제 </h1>
<%
	request.setCharacterEncoding("UTF-8");
	ScoreItemService scoreItemService = new ScoreItemServiceImpl();
	scoreItemService.scoreItemDeleteOne(Integer.parseInt(request.getParameter("studentid")));
	
%>
<!--테이블 만들기-->
      <table cellspacing=1 border = 1 height=60px>
         <tr bgcolor=lightgray>
            <td width=100px><p align=center>이름</p></td>
            <td width=100px><p align=center>학번</p></td>
            <td width=100px><p align=center>국어</p></td>
            <td width=100px><p align=center>영어</p></td>
            <td width=100px><p align=center>수학</p></td>
         </tr>
         <tr>
         	<td colspan=5 align=center bgcolor='#ffff00'> 삭제 성공</td>
         </tr>
	</table>
</body>
</html>