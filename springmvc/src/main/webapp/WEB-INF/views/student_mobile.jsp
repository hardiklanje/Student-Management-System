<%@page import="edu.jspiders.springmvc.dto.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<div align="center">
			<%
			@SuppressWarnings("unchecked")
			Student student = (Student) request.getAttribute("student");
			if(student != null){
			%>
		
			<table border="1px solid">
				<tr>
						<th>Name</th>
						<th>Email</th>
						<th>Mobile</th>
						<th>Course</th>				
						<th colspan="2">Action</th>
				</tr>
				<tr>
						<th><%=student.getName() %></th>
						<th><%=student.getEmail() %></th>
						<th><%=student.getMobile() %></th>
						<th><%=student.getCourse() %></th>
						<td><a href=" edit-student?id=<%=student.getId()%>" >Edit</a></td>
						<td><a href=" delete-student?id=<%=student.getId()%>" >Delete</a></td>
				</tr>
			</table>
			
			<%
			}
			%>
			
			<%
			String message = (String) request.getAttribute("message");
			if (message != null){
			%>
			<h4><%=message%></h4>
			<%
			}
			%>
					
		</div>
</body>
</html>