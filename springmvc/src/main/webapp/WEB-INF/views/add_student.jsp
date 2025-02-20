<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Requesting to add Student Data</title>
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
            width: 350px;
            text-align: center;
        }
        table {
            width: 100%;
            margin-bottom: 20px;
        }
        td {
            padding: 8px;
        }
        input[type="text"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type="radio"] {
            margin-right: 5px;
        }
        input[type="submit"] {
            background-color: #28a745;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #218838;
        }
        h4 {
            color: #d9534f;
        }
    </style>
<body>

		<div align="center">
		<h1>Add Student Data</h1>
			<form action="./add_student" method="post">
					<table>
							<tr>
								<td>Name</td>
								<td><input type="text" name="name" required="required"> </td>
							</tr>
							
							<tr>
								<td>Email</td>
								<td><input type="text" name="email" required="required"> </td>
							</tr>
							
							<tr>
								<td>Mobile</td>
								<td><input type="text" name="mobile" required="required"> </td>
							</tr>
							
							<tr>
								<td>Course</td>
										<td><input type="radio" name="course" value="DEVELOPMENT"> 
											<label>Developement</label>
										</td>										
							</tr>
							<tr>
								<td></td>
								<td><input type="radio" name="course" value="TESTING"> 
											<label>Testing</label>
								</td>
							</tr>
					</table>
					<input type="submit" value="Click Here To Add">			
			</form>
			
			<%
			String message = (String) request.getAttribute("message");
			if(message != null){
			%>
			<h4><%=message%></h4>
			<%
			}
			%>
		</div>
</body>
</html>