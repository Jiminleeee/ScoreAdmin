<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
<title>데이터 입력</title>
</head>
<body>
 <h1> 실습데이터 입력 </h1>
	<!--데이터 입력-->
	<%
        Class.forName("com.mysql.jdbc.Driver");		//클래스 선언
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/kopoctc","root","kopo32");	//DB연결은 localhost로 하는 것임을 주의
        Statement stmt = conn.createStatement();	//statement
        //insert table...values 명령어로 내용 넣기
		stmt.execute("CREATE TABLE IF NOT EXISTS examtable(name varchar(20), studentid int not null primary key, kor int, eng int, mat int);");
		stmt.execute("insert into examtable (name, studentid, kor, eng, mat) values ('나연',209901,95,100,95);");
		stmt.execute("insert into examtable (name, studentid, kor, eng, mat) values ('정연',209902,95,95,95);");
		stmt.execute("insert into examtable (name, studentid, kor, eng, mat) values ('모모',209903,100,100,100);");
		stmt.execute("insert into examtable (name, studentid, kor, eng, mat) values ('사나',209904,100,95,90);");
		stmt.execute("insert into examtable (name, studentid, kor, eng, mat) values ('지효',209905,80,100,70);");
		stmt.execute("insert into examtable (name, studentid, kor, eng, mat) values ('미나',209906,100,100,70);");
		stmt.execute("insert into examtable (name, studentid, kor, eng, mat) values ('다현',209907,70,70,70);");
		stmt.execute("insert into examtable (name, studentid, kor, eng, mat) values ('채영',209908,80,75,72);");
		stmt.execute("insert into examtable (name, studentid, kor, eng, mat) values ('쯔위',209909,78,79,82);");
		stmt.execute("insert into examtable (name, studentid, kor, eng, mat) values ('나연',209910,95,100,95);");
		stmt.execute("insert into examtable (name, studentid, kor, eng, mat) values ('정연',209911,95,95,95);");
		stmt.execute("insert into examtable (name, studentid, kor, eng, mat) values ('모모',209912,100,100,100);");
		stmt.execute("insert into examtable (name, studentid, kor, eng, mat) values ('사나',209913,100,95,90);");
		stmt.execute("insert into examtable (name, studentid, kor, eng, mat) values ('지효',209914,80,100,70);");
		stmt.execute("insert into examtable (name, studentid, kor, eng, mat) values ('미나',209915,100,100,70);");
		stmt.execute("insert into examtable (name, studentid, kor, eng, mat) values ('다현',209916,70,70,70);");
		stmt.execute("insert into examtable (name, studentid, kor, eng, mat) values ('채영',209917,80,75,72);");
		stmt.execute("insert into examtable (name, studentid, kor, eng, mat) values ('쯔위',209918,78,79,82);");
		//open한 만큼 close 하기
        stmt.close();
        conn.close();
      %>
</body>
</html>