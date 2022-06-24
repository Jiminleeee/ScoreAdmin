<%@page import="kr.ac.kopo.ctc.kopo32.domain.ScoreItem"%>
<%@page import="kr.ac.kopo.ctc.kopo32.dao.ScoreItemDaoImpl"%>
<%@page import="kr.ac.kopo.ctc.kopo32.dao.ScoreItemDao"%>
<%@page import="kr.ac.kopo.ctc.kopo32.service.ScoreItemServiceImpl"%>
<%@page import="kr.ac.kopo.ctc.kopo32.service.ScoreItemService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>성적 입력 추가 완료</title>
</head>
<body>
<h1>성적 입력 추가 완료</h1>
<%
	request.setCharacterEncoding("UTF-8");
	ScoreItemService scoreItemService = new ScoreItemServiceImpl();
	ScoreItem scoreItemOutput = scoreItemService.scoreItemInsertOne(request.getParameter("name"), request.getParameter("korean"), request.getParameter("english"), request.getParameter("mathmatic"));
	pageContext.setAttribute("scoreItemOutput", scoreItemOutput);
%>

<form method="post" action="InsertForm.jsp">
         <table cellspacing=1 width=400 border=1>
            <tr>
               <td width=100><p align=center>이름</p></td>
               <td width=300><p align=center><input type='text' name='name'  value= "${scoreItemOutput.name}" readonly></p>	
               </td>
            </tr>
            <tr>
               <td width=100><p align=center>학번</p></td>
               <td width=300><p align=center>
                  <input type='text' name='studentid' value= "${scoreItemOutput.studentId}" readonly></p>
               </td>
            </tr>
            <tr>
               <td width=100><p align=center>국어</p></td>
               <td width=300><p align=center>
                  <input type='text' name='korean' value= "${scoreItemOutput.kor}" readonly></p>
               </td>
            </tr>
            <tr>
               <td width=100><p align=center>영어</p></td>
               <td width=300><p align=center>
                  <input type='text' name='english' value="${scoreItemOutput.eng}" readonly></p>
               </td>
            </tr>
            <tr>
               <td width=100><p align=center>수학</p></td>
               <td width=300><p align=center>
                  <input type='text' name='mathmatic' value="${scoreItemOutput.mat}" readonly></p>
               </td>
            </tr>
            
         </table>
      </form>	<!--폼 형식 종료-->
</body>
</html>