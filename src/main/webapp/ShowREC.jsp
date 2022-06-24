<%@page import="kr.ac.kopo.ctc.kopo32.domain.ScoreItem"%>
<%@page import="kr.ac.kopo.ctc.kopo32.service.ScoreItemServiceImpl"%>
<%@page import="kr.ac.kopo.ctc.kopo32.service.ScoreItemService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<script language=javascript>
//제출 형식 함수 설정 / 추가, 삭제
			 function submitForm(mode) {
				var myform = document.updel;
				if (mode == 1) {
				   myform.action= "UpdateDB.jsp";
				} 
				if (mode == 2) {
				   myform.action="DeleteDB.jsp";
				}
            
			}
</script>
<meta charset="UTF-8">
<title>학번 조회</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	ScoreItemService scoreItemService = new ScoreItemServiceImpl();
	ScoreItem scoreItemOutput = scoreItemService.scoreItemSelectId(Integer.parseInt(request.getParameter("searchid")));
	pageContext.setAttribute("scoreItemOutput", scoreItemOutput);
%>

	<h1>학번 조회</h1>
	<form method='post' name='updel' action='UpdateForm.jsp'>

		<table cellspacing=1 width=400 border=1>
			<tr>
				<td width=100><p align=center>이름</p></td>
				<td width=300><p align=center>
						<!-- 최소길이, 최대길이, name 지정, required, pattern : 한글, 영어만 -->
						<input type="text" name="name" minlength="1" maxlength="8"
							id='namee' required='required' pattern='^[가-힣a-zA-Z]*'
							value="${scoreItemOutput.name}" title='이름은 한글, 영어만 가능합니다'>
					</p></td>
			</tr>
			<tr>
				<td width=100><p align=center>학번</p></td>
				<td width=300><p align=center>
						<!--읽기 전용-->
						<input type='text' name='studentid'
							value="${scoreItemOutput.studentId}" readonly>
					</p></td>
			</tr>
			<tr>
				<td width=100><p align=center>국어</p></td>
				<td width=300><p align=center>
						<input type='number' min='0' max='100' name='korean' id='korr'
							required='required' value="${scoreItemOutput.kor}">
					</p></td>
			</tr>
			<tr>
				<td width=100><p align=center>영어</p></td>
				<td width=300><p align=center>
						<input type='number' min='0' max='100' name='english' id='engg'
							required='required' value="${scoreItemOutput.eng}">
					</p></td>
			</tr>
			<tr>
				<td width=100><p align=center>수학</p></td>
				<td width=300><p align=center>
						<input type='number' min='0' max='100' name='mathmatic' id='matt'
							required='required' value="${scoreItemOutput.mat}">
					</p></td>
			</tr>

		</table>
		<c:set var="id" value="${scoreItemOutput.studentId}" />
		<c:if test="${!empty id}">
			<table cellspacing=1 width=400 border=0>
				<tr>
					<td width=200></td>
					<td width=100><p align=center>
							<input type=submit value="수정" onClick="submitForm(1)">
						</p></td>
					<td width=100><p align=center>
							<input type=submit value="삭제" onClick="submitForm(2)">
						</p></td>
				</tr>
			</table>
		</c:if>
</body>
</html>