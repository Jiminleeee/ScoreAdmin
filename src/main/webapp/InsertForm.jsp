<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<title>성적 추가 입력</title>
</head>
<body>
	<h1>성적입력추가</h1>
		<!-- 폼 형식 > InsertOne.jsp로 전달 -->
		<form method="post" action='InsertOne.jsp'>
			<!-- 테이블 만들기 -->
			<table cellspacing=1 width=400 border=0>
				<tr>
					<td width=300></td>   
					<td width=100><input type="submit" value="추가" onClick="checkOnlyNum()"></td>
				</tr>
			</table>

			 <table cellspacing=1 width=400 border=1>
				<tr>
				   <td width=100><p align=center>이름</p></td>
				   <!-- maxlength : 최대 길이 / required : 필수 / pattern : 한글, 영어만 가능 / title : 오류 입력시 alert 내용 -->
				   <td width=300><p align=center><input type='text' name='name' value='' maxlength=20 required pattern='^[가-힣a-zA-Z]+$' title='이름은 이름형식만 가능합니다'></p></td>
				</tr>
				<tr>
				   <td width=100><p align=center>학번</p></td>
				   <td width=300><p align=center>자동부여</p></td>     
				</tr>
				<tr>
				   <td width=100><p align=center>국어</p></td>
				   <td width=300><p align=center>
				   <!-- type: number > 숫자만 입력 가능 / min,max 지정 / required : 필수 -->
					  <input type='number' min='0' max='100' name='korean' id = 'korr'  required='required' value=''></p>
				   </td>
				</tr>
				<tr>
				   <td width=100><p align=center>영어</p></td>
				   <td width=300><p align=center>
				    <!-- type: number > 숫자만 입력 가능 / min,max 지정 / required : 필수 -->
					  <input type='number' min='0' max='100' name='english' id = 'engg'  required='required' value='' ></p>
				   </td>
				</tr>
				<tr>
				   <td width=100><p align=center>수학</p></td>
				   <td width=300><p align=center>
				    <!-- type: number > 숫자만 입력 가능 / min,max 지정 / required : 필수 -->
					  <input type='number' min='0' max='100' name='mathmatic' id = 'matt' required='required' value='' ></p>
				   </td>
				</tr>
			 </table>
		</form> <!--폼 형식 종료-->
</body>
</html>