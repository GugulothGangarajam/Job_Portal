<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup Page</title>
<%@include file="all_components/all_css.jsp"%>
</head>
<body style="background-color : #f0f1f2">
	<%@include file="all_components/navbar.jsp"%>
	<div class="continer-fluid">
		<div class="row p-5">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
							<h5>Registration</h5>

						</div>
						<c:if test="${not empty succMsg}">
							<h4 class="text-center text-success">${succMsg }</h4>
							<c:remove var="succMsg" />
						</c:if> 
						<form action="add_user" method="post">


						<div class="from-group">
							<label for="exampleInputpassword1">Full Name</label> <input
								type="text" required="required" class="form-control"
								id="exampleInputName1" name="name">
						</div>
						<br>
						<div class="from-group">
							<label>Enter Qualification</label> <input type="text"
								required="required" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="qua">

						</div>
						<br>

						<div class="from-group">
							<label>Enter Email</label> <input type="email"
								required="required" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="email">

						</div>
						<br>
						<div class="from-group">
							<label for="exampleInputpassword1">Enter Password</label> <input
								type="password" required="required" class="form-control"
								id="exampleInputPassword1" name="ps">
						</div>
						<br>

						<button type="submit" class="btn btn-primary badge-pill btn-block">Register</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>