<%--
  Created by IntelliJ IDEA.
  User: Daniel
  Date: 3/12/2019
  Time: 5:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <link href="<c:url value='/resources/css/style.css' />" rel="stylesheet">
  </head>
  <body>

     <form action="/login" method="post">
       <h1>Login Authication</h1>
       <label>UserName:<input type="text" name="username" value="${userName}"></label>
       <label>Password:<input type="password" name="password"></label>
       <c:choose>
       <c:when test="${not empty userName}">
       <input type="checkbox" name="remember" checked >
       </c:when>
         <c:otherwise>
         <input type="checkbox" name="remember"  >
         </c:otherwise>
       </c:choose>
       <input type="submit">

     </form>
     <p>${Message}</p>
  </body>
</html>
