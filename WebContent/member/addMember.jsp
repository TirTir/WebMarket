<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel ="stylesheet" href ="./resources/css/bootstrap.min.css" />
<script type ="text/javascript" src ="./resources/js/validation.js"></script>
<title>회원가입</title>
</head>
<body>
	<fmt:setLocale value='<%= request.getParameter("language") %>'/>
	<fmt:bundle basename="bundle.message" > 
	<jsp:include page="menu.jsp" />	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3"><fmt:message key="sing-up" /></h1>
		</div>
	</div>
	<div class="container">
		<div class="text-right"> 
			<a href="?language=ko" >Korean</a>|<a href="?language=en" >English</a>
		</div>	
		<form name="newMember" action="./processAddMember.jsp" class="form-horizontal" method="post">
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="id" /></label>
				<div class="col-sm-3">
					<input type="text" id ="id" name="id" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="password" /></label>
				<div class="col-sm-3">
					<input type="text" id ="password" name="password" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="passwordCheck" /></label>
				<div class="col-sm-3">
					<input type="text" id ="password_check" name="passwordCheck" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="name" /></label>
				<div class="col-sm-3">
					<input type="text" id ="name" name="name" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="gender" /></label>
				<div class="col-sm-5">
					<input type="radio" name="gender" value="남" ><fmt:message key="gender-male" />
					<input type="radio" name="gender" value="여" ><fmt:message key="gender-female" /> 
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="birth" /></label>
				<div class="col-sm-3">
					<input type="text" maxlength="4" size="4" name="birth1" ><select name="birth2">
																			<option value="1">1</option>
							   					   						    <option value="2">2</option>
																  			<option value="3">3</option>
																		    <option value="4">4</option>
																		    <option value="5">5</option>
																		    <option value="6">6</option>
																		    <option value="7">7</option>
																		    <option value="8">8</option>
																		    <option value="9">9</option>
																		    <option value="10">10</option>
																		    <option value="11">11</option>
																		    <option value="12">12</option>
																		    </select><input type="text" maxlength="2" size="2" name="birth3" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="mail" /></label>
				<div class="col-sm-5">
					<input type="text" name="mail">@<select name="mail1">
													<option value="naver.com">naver.com</option>
													<option value="daum.net">daum.net</option>
													<option value="gmail.com">gmail.com</option></select>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="phone" /></label>
				<div class="col-sm-3">
					<input type="text" name="phone" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2"><fmt:message key="address" /></label>
				<div class="col-sm-3">
					<input type="text" name="address" class="form-control" >
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<input type="submit" class="btn btn-primary" value="<fmt:message key="button" />" >
					<a href="./loginMember.jsp" class="btn btn-secondary" role="button"> 취소 </a>
				</div>
			</div>
		</form>
	</div>
	</fmt:bundle>
</body>
</html>
