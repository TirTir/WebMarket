<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/WebMarketDB"
	driver="com.mysql.jdbc.Driver" user="root" password="0000abc" />
	
<%	
	String id = request.getParameter("id");
	String paswd = request.getParameter("paswd");

	String memberId = request.getParameter("memberId");
	String password = request.getParameter("password");
	
	if((id == memberId) && (paswd == password)){
		response.sendRedirect("/member/resultMember.jsp?msg=2");
	}
	else{
		response.sendRedirect("/member/loginMember.jsp?msg=error");
	}
%>