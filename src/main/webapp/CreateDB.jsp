<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테이블 만들기</title>
</head>
<body>
 <h1> 테이블 만들기 ok </h1>
	<%
        Class.forName("com.mysql.jdbc.Driver");	//클래스 선언
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/kopoctc","root","kopo32");	//DB연결은 localhost로 하는 것임을 주의
        Statement stmt = conn.createStatement();	//statement
        //create table 명령어
		stmt.execute("create table if not exists examtable("+
					"name varchar(20)," +
					"studentid int not null primary key," +
					"kor int , "+
					"eng int , "+
					"mat int ) DEFAULT CHARSET=utf8;");
		//open한 만큼 close 하기
        stmt.close();
        conn.close();
      %>
</body>
</html>