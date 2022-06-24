<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>menu</title>
</head>
<body text="#000000" link="#ff0000" vlink="#00ff00"alink="0000ff">	<!--본문 내용 / text: 검정색 / 하이퍼링크:빨강색 / 한번 누른 하이퍼링크: 초록색 / 누르는 중: 파랑색-->
	<a href="CreateDB.jsp" target="main">* TBL생성</a><br>	<!--createDB와 연결 / target은 메인 / 한줄 띄우기-->
	<a href="DropDB.jsp" target="main">* TBL삭제</a><br>	<!--dropDB와 연결 / target은 메인 / 한줄 띄우기-->
	<a href="AllSetDB.jsp" target="main">* TBL값넣기</a><br>	<!--AllsetDB와 연결 / target은 메인 / 한줄 띄우기-->
	<a href="AllViewDB.jsp" target="main">* TBL전체조회</a><br><br><br>	<!--AllviewDB와 연결 / target은 메인 / 한줄 띄우기-->
	<a href="InsertForm.jsp" target="main">* 추가</a><br>
	<a href="UpdateForm.jsp" target="main">* 정정/삭제</a><br>
</body>
</html>