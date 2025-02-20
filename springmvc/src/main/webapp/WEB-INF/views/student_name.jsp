<%@page import="edu.jspiders.springmvc.dto.Student"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student List</title>
</head>
<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 80%;
            max-width: 800px;
            text-align: center;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #28a745;
            color: white;
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        a {
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
        }
        a:hover {
            text-decoration: underline;
        }
        h4 {
            color: #d9534f;
        }
    </style>
<body>
	<div class="container" >
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