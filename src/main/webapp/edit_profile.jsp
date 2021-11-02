<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>edit profile</title>
<%@include file="all_components/all_css.jsp"%>

</head>
<body style="background-color: #f0f1f2">
	<c:if test="${empty userobj }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>
	<%@include file="all_components/navbar.jsp"%>
	<div class="continer-fluid">
		<div class="row p-5">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<div class="text-center">
							<i class="fa fa-user-plus fa-2x" aria-hidden="true"></i>
							<h5>update profile</h5>

						</div>

						<form action="update_profile" method="post">

							<input type="hidden" name="id" value="${userobj.id}">
							<div class="from-group">
								<label>Enter Full Name</label> <input type="text"
									required="required" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="email" value="${userobj.name }">
							</div>
							<div class="from-group">
								<label>Enter Qualification</label> <input type="text"
									required="required" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp" name="qua"
									value="${userobj.qualification }">

							</div>
							<div class="from-group">
								<label>Enter Email</label> <input type="text"
									required="required" class="form-control"
									id="exampleInputEmail1" aria-describedby="emailHelp"
									name="email" value="${userobj.email }">
							</div>
							<br>
							<div class="from-group">
								<label for="exampleInputpassword1">Enter Password</label> <input
									type="password" required="required" class="form-control"
									id="exampleInputPassword1" name="ps"
									value="${userobj.password }">
							</div>
							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Update</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>