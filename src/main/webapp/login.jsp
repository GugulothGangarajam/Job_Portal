<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
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
							<h5>Login Page</h5>

						</div>
						<c:if test="${not empty succMsg}">
							<h4 class="text-center text-danger">${succMsg }</h4>
							<c:remove var="succMsg" />
						</c:if> 
						
						<form action="login" method="post">

						<div class="from-group">
							<label>Enter Email</label> <input type="email"
								required="required" class="form-control" id="exampleInputEmail1"
								aria-describedby="emailHelp" name="email">

						</div>
						<br>
						<div class="from-group">
							<label for="exampleInputpassword1">Enter Password</label> <input
								type="password" required="required" class="form-control"
								id="exampleInputPassword1" name="password">
						</div>
						<br>
					
						<button type="submit" 
						    class="btn btn-primary badge-pill btn-block">Login</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>