<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sign_up</title>

<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f9;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.form-container {
	background-color: #fff;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	padding: 20px;
	width: 300px;
	box-sizing: border-box;
}

.form-container h4 {
	color: #e74c3c;
	text-align: center;
}

table {
	width: 100%;
	margin-bottom: 20px;
}

td {
	padding: 10px;
	text-align: left;
}

input[type="email"], input[type="password"] {
	width: 100%;
	padding: 10px;
	margin: 5px 0;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type="submit"] {
	width: 100%;
	padding: 10px;
	background-color: #3498db;
	color: white;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
	margin-top: 10px;
}

input[type="submit"]:hover {
	background-color: #2980b9;
}

input[type="submit"]:active {
	background-color: #1d6fa5;
}

.form-container table td input {
	width: 100%;
}
</style>

 <!-- <style type="text/css">
 /* General reset for padding and margins */
body {
    margin: 0;
    padding: 0;
    font-family: Arial, sans-serif;
    background-color: #f4f4f9;
    color: #333;
}

/* Center the content */
body > div {
    width: 40%;
    margin: 50px auto;
    background-color: #fff;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

/* Header label styling */
label {
    display: block;
    font-size: 24px;
    font-weight: bold;
    text-align: center;
    margin-bottom: 20px;
    color: #555;
}

/* Table styling */
table {
    width: 100%;
    border-collapse: collapse;
    margin-bottom: 15px;
}

td {
    padding: 10px;
    vertical-align: middle;
}

/* Input fields styling */
input[type="email"],
input[type="password"] {
    width: calc(100% - 10px);
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 14px;
}

/* Submit button styling */
input[type="submit"] {
    width: 100%;
    padding: 10px;
    background-color: #007BFF;
    border: none;
    color: white;
    font-size: 16px;
    font-weight: bold;
    border-radius: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
}

input[type="submit"]:hover {
    background-color: #0056b3;
}

/* Message styling */
h4 {
    margin-top: 20px;
    text-align: center;
    color: #e63946;
}
 
 
 </style> -->
</head>
<body>
	<div>
		<label>Sign Up Page</label>
		<form action="./add-admin" method="post">
			<table>
				<tr>
						<td>Email</td>
						<td><input type="email" name="email"></td>				
				</tr>
				
				<tr>
						<td>Password</td>
						<td><input type="password" name="password"></td>				
				</tr>
			</table>
			<input type="submit" value="Signup">
		</form>

		<%
		String message = (String) request.getAttribute("message");
		if(message != null){
		%>
		<h4><%=message%></h4>
		<% 
		}
		%>
		 <h4>
			Already an user?<a href="login-page">login</a>
		</h4> 
		 
	</div>
</body>
</html>