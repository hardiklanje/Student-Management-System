<%@page import="edu.jspiders.springmvc.dto.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center" >
		<%
		@SuppressWarnings("unchecked")
		List<Student> students = (List<Student>) request.getAttribute("students");
		if (students != null) {
		%>
		<table border="1px solid" style="padding: 20px" >
			<tr>
				<th>Name</th>
				<th>Email</th>
				<th>Mobile</th>
				<th>Course</th>
				<th colspan="2">Action</th>

			</tr>
			<%
			for (Student student : students) {
			%>
			<tr>
				<td><%=student.getName()%></td>
				<td><%=student.getEmail()%></td>
				<td><%=student.getMobile()%></td>
				<td><%=student.getCourse()%></td>
				<td><a href="  edit-student?id= <%=student.getId()%>" > Edit </a></td>
				<td><a href="  delete-student?id= <%=student.getId()%>" > Delete </a></td>
			</tr>
			<%
			}
			%>
		</table>
		
<!--========================================================================================================================================  -->	
<!-- ========================================================================================================================================= -->	
		<%
		}
		%>

		<%
		String message = (String) request.getAttribute("message");
		if (message != null) {
		%>
		<h4><%=message%></h4>
		<%
		}
		%>
	</div>
</body>
</html>