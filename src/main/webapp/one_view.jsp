
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@page import="com.dao.JobDAO"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.Jobs"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>signle Jobs</title>
<%@include file="all_components/all_css.jsp"%>
</head>
<body style="background-color: #f0f1f2">
	<%-- <c:if test="${userobj.role ne 'admin' }">
		<c:redirect url="login.jsp"></c:redirect>
	</c:if>--%>
	<%@include file="all_components/navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-12">


				<%
				int id = Integer.parseInt(request.getParameter("id"));

				JobDAO dao = new JobDAO(DBConnect.getConn());
				Jobs j = dao.getJobById(id);
				%>
				<div class="card mt-2">
					<div class="card-body">
						<div class="text-center text-primary">
							<i class="far fa-clipboard fa-2x"></i>

						</div>
						<h6><%=j.getTitle()%></h6>
						<p><%=j.getDescription()%></p>
						<br>
						<div class="form-row">
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="Location:<%=j.getLocation()%>" readonly>
							</div>
							<div class="form-group col-md-3">
								<input type="text" class="form-control form-control-sm"
									value="Category:<%=j.getCategory()%>" readonly>
							</div>
						</div>
						<h6>
							Publish Date:<%=j.getPdate().toString()%></h6>
					</div>
				</div>
			</div>
		</div>
	</div>


</body>
</html>