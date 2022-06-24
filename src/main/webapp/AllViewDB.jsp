<%@page import="kr.ac.kopo.ctc.kopo32.dto.Pagination"%>
<%@page import="kr.ac.kopo.ctc.kopo32.domain.ScoreItem"%>
<%@page import="java.util.List"%>
<%@page import="kr.ac.kopo.ctc.kopo32.service.ScoreItemServiceImpl"%>
<%@page import="kr.ac.kopo.ctc.kopo32.service.ScoreItemService"%>
<%@page import="kr.ac.kopo.ctc.kopo32.dao.ScoreItemDao"%>
<%@page import="kr.ac.kopo.ctc.kopo32.dao.ScoreItemDaoImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AllViewDB</title>
<!--스타일 지정-->
<style type="text/css"> 
	a { text-decoration:none } 
	table {border-spacing: 0px; padding:0px; }
	td {border-spacing: 0px; padding:0px;}
	p { margin-top:0px; margin-bottom:0px;}
</style> 
</head>
<body>
<h1>성적 조회</h1>
<%
		ScoreItemDao scoreItemDao = new ScoreItemDaoImpl();
		ScoreItemService scoreItemService = new ScoreItemServiceImpl();
		
		String cPage = request.getParameter("cPage");
	    if (cPage == null || "null".equals(cPage)) {
	        cPage = "1";
	      }
		
	    int cPageInt = Integer.parseInt(cPage);
		int totalCount = scoreItemDao.selectTotalCount();
		
		
		List<ScoreItem> scoreItems = scoreItemDao.selectAll(cPageInt, 10);
		pageContext.setAttribute("scoreItems", scoreItems);
		
		
		Pagination pagination = scoreItemService.getPagination(cPageInt, 10, 10, totalCount);
		pageContext.setAttribute("pagination", pagination);
		
		
%>
		
		
		<table cellspacing=1 border=1 >			
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
			<c:url var="url" value = "/OneView.jsp" context="/ScoreAdmin">
				<c:param name = "name" value = "${scoreItem.name}"/>
			</c:url>
			<tr height=80px align=center>
				<td><a href= <c:out value="${url}"/>><c:out value= "${scoreItem.name}"/></a></td>
				<td><c:out value="${scoreItem.studentId}"/></td>
				<td><c:out value="${scoreItem.kor}"/></td>
				<td><c:out value="${scoreItem.eng}"/></td>
				<td><c:out value="${scoreItem.mat}"/></td>
			<tr>
			</c:forEach>  
		</table>   
	
		
		
		총 게시물 수 : <c:out value="${pagination.totalCount}"/>개 <br>
		현재 페이지 / 총 페이지 : <c:out value="${pagination.cPage}"/> / <c:out value="${pagination.totalPage}"/>
	
		<br><br>
		

		
		<c:url var="urlppPage" value="/AllViewDB.jsp" context="/ScoreAdmin">
			<c:param name="cPage" value="${pagination.ppPage}"/>
		</c:url>
<%-- 		
	<c:url var="urlpPage" value="/AllViewDB.jsp" context="/ScoreAdmin">
			<c:param name="cPage" value="${pagination.pPage}"/>
		</c:url> 
		
		<c:url var="urlPage" value="/AllViewDB.jsp" context="/ScoreAdmin">
			<c:param name="cPage" value="${pagination.cPage}"/>
		</c:url> --%>
		
		<c:url var="urlnnPage" value="/AllViewDB.jsp" context="/ScoreAdmin">
			<c:param name="cPage" value="${pagination.nnPage}"/>
		</c:url>
		
	
		
		<c:url var="urlnPage" value="/AllViewDB.jsp" context="/ScoreAdmin">
			<c:param name="cPage" value="${pagination.nPage}"/>
		</c:url>
		
		
		<c:if test="${ppPage ne 0 && pPage ne 0}">
			<a href=<c:out value="${urlppPage}"/>><c:out value="<<"/></a>&nbsp
			<b><a href = '/ScoreAdmin/AllViewDB.jsp?cPage=${pagination.pPage}'> &lt </a></b>
		</c:if>

		<c:forEach var="i" begin="${pagination.startPage}" end="${pagination.lastPage}">
          <b><a href = '/ScoreAdmin/AllViewDB.jsp?cPage=${i}'>${i}</a></b>
        </c:forEach>
        

		
		<c:if test="${nnPage ne 0 && nPage ne 0}">
			&nbsp&nbsp<a href=<c:out value="${urlnPage}"/>><c:out value=">"/></a>&nbsp
			<a href=<c:out value="${urlnnPage}"/>><c:out value=">>"/></a>
		</c:if>
		
		
	
		
		
</body>
</html>