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
<title>성적 조회 후 정정 / 삭제</title>
</head>
<body>
<h1>성적 조회 후 정정 / 삭제</h1>
		<!-- 폼 형식 -->
		<form method='post' action='ShowREC.jsp'>
			<table cellspacing=1 width=400 border=0>
			<tr>
				<td width=100><p align=center>조회할 학번</p></td>
				<!-- 기본값 지정 -->
				<td width=200><p align=center><input type='number' name='searchid' value="209901"></p></td>
				<td width=100><input type="submit" value="조회"></td>
			</tr>
			</table>
		</form>
		<form>
			<table cellspacing=1 width=400 border=1>
			<tr>
				<td width=100><p align=center>이름</p></td>
				 <!-- maxlength : 최대 길이 / required : 필수 / pattern : 한글, 영어만 가능 / title : 오류 입력시 alert 내용 -->
				<td width=300><p align=center><input type='text' name='name' value='' maxlength=20 required pattern='^[가-힣a-zA-Z]+$'></p></td>
			</tr>
				<td width=100><p align=center>학번</p></td>
				<td width=300><p align=center></p></td>
			</tr>
				<td width=100><p align=center>국어</p></td>
				<td width=300><p align=center><input type='text' name='korean' value=''></p></td>
			</tr>
				<td width=100><p align=center>영어</p></td>
				<td width=300><p align=center><input type='text' name='english' value=''></p></td>
			</tr>
				<td width=100><p align=center>수학</p></td>
				<td width=300><p align=center><input type='text' name='mathmatic' value=''></p></td>
			</tr>
			</table>	<!--테이블 끝-->
		</form>	<!--폼 형식 종료-->
</body>
</html>