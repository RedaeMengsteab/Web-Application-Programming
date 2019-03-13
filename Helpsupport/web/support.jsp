<%--
  Created by IntelliJ IDEA.
  User: Daniel
  Date: 3/11/2019
  Time: 8:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/helpsupport.css" />
    <title>Document</title>
</head>
<body>
<form action="/support" method="POST">
    <h1>Support Help</h1>
    <label>Name<input type='text' name='name'/></label>
    <label>Email<input type='text' name='email'/></label>
    <label>Problem:<input type='text' name='problem'/></label>
    <label>Problem Description:</label><textarea rows='4' cols='50'></textarea>
    <input type='submit' value='help' />
</form>
</body>
</html>