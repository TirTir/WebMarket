<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel ="stylesheet" href ="./resources/css/bootstrap.min.css" />
<script type ="text/javascript" src ="./resources/js/validation.js"></script>
<title>회원가입 수정</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">회원 수정</h1>
		</div>
	</div>
	<%@ include file="dbconn.jsp"%>
	<%
		String memberId = "skSW";
		
		String sql = "select * from member where id = ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, memberId);
		rs = pstmt.executeQuery();
		if (rs.next()) {
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-7">
				<form name="updateMember" action="./processUpdateMember.jsp"
					class="form-horizontal" method="post" enctype="multipart/form-data">
					<div class="form-group row">
						<label class="col-sm-2">아이디</label>
						<div class="col-sm-3">
							<input type="text" id ="id" name="id" class="form-control" value="<%=rs.getString("id")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">비밀번호</label>
						<div class="col-sm-3">
							<input type="text" id ="password" name="password" class="form-control" value="<%=rs.getString("password")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">비밀번호 확인</label>
						<div class="col-sm-3">
							<input type="text" id ="password_check" name="password_check" class="form-control" >
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">성명</label>
						<div class="col-sm-3">
							<input type="text" id ="name" name="name" class="form-control" value="<%=rs.getString("name")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">성별</label>
						<div class="col-sm-3">
							<input type="text" name="gender" class="form-control" value="<%=rs.getString("gender")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">생일</label>
						<div class="col-sm-3">
							<input type="text" name="birth" class="form-control" value="<%=rs.getString("birth")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">이메일</label>
						<div class="col-sm-3">
							<input type="text" name="mail" class="form-control" value="<%=rs.getString("mail")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">전화번호</label>
						<div class="col-sm-3">
							<input type="text" name="phone" class="form-control" value="<%=rs.getString("phone")%>">
						</div>
					</div>
					<div class="form-group row">
						<label class="col-sm-2">주소></label>
						<div class="col-sm-3">
							<input type="text" name="address" class="form-control" value="<%=rs.getString("address")%>">
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-offset-2 col-sm-10 ">
							<input type="submit" class="btn btn-primary" value="<fmt:message key="button" />" >
							<a href="./deleteMember.jsp?id=<%=rs.getString("id")%>"	class="btn btn-success" role="button"> 회원탈퇴 &raquo;></a>
						</div>
					</div>
				</form>

			</div>
		</div>
	</div>
	<%
		}
		if (rs != null)
			rs.close();
 		if (pstmt != null)
 			pstmt.close();
 		if (conn != null)
			conn.close();
 	%>
</body>
</html>
