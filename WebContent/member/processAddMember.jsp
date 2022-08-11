<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%
	String sessionId = (String) session.getAttribute("sessionId");

	String memberId = request.getParameter("memberId");
	String password = request.getParameter("password");
	String passwordCheck = request.getParameter("passwordCheck");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String birth = request.getParameter("birth");
	String mail = request.getParameter("mail");
	String phone = request.getParameter("phone");
	String address = request.getParameter("address");
%>
<sql:setDataSource var="dataSource"
	url="jdbc:mysql://localhost:3306/WebMarketDB"
	driver="com.mysql.jdbc.Driver" user="root" password="0000abc" />
	
<sql:update dataSource="${dataSource}" var="resultSet">
	INSERT INTO member(id, password, name, gender, birth, mail, phone, address) VALUES (?,?,?,?,?,?,?,?)
	<sql:param value="<%=memberId%>" />
	<sql:param value="<%=password%>" />
	<sql:param value="<%=name%>" />
	<sql:param value="<%=gender%>" />
	<sql:param value="<%=birth%>" />
	<sql:param value="<%=mail%>" />
	<sql:param value="<%=phone%>" />
	<sql:param value="<%=address%>" />
</sql:update>
<%
	response.sendRedirect("/member/resultMember.jsp?msg=1");
%>
