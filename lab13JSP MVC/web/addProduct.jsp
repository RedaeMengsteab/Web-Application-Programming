
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <title>Add product</title>
    <meta charset="utf-8"/>
    <script type="text/javascript" src="resources/js/product.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
            integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
          integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/style.css" />"/>
</head>
<body>
<div id="header">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <ul class="nav navbar-nav navbar-right">
            <li><a style="margin-right: 20px" class="btn btn-info" href="/logout">Logout</a></li>
        </ul>
        <ul class="nav navbar-nav">
            <li><h4>Welcome <%=session.getAttribute("sessuser")%>
            </h4></li>
        </ul>

    </nav>

</div>
<div class="container" id="addProductDiv">
    <form method="post" action="/add_product">
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" class="form-control" id="name" placeholder="Name" name="name" required
                   >
        </div>
        <div class="form-group">
            <label for="no">No</label>
            <input type="number" class="form-control" id="no" placeholder="No" name="no" required
                   pattern="[0-9]{1,3}">
        </div>
        <div class="form-group">
            <label for="type">Type</label>
            <input type="text" class="form-control" id="type" placeholder="type" name="type" required
                   >
        </div>
        <div class="form-group">
            <label for="desc">Description</label>
            <input type="text" class="form-control" id="desc" placeholder="Description" name="desc" required
                  >
        </div>
        <div class="form-group">
            <label for="test">Test</label>
            <select class="form-control" id="test" name="test" required>
                <option value="0">Test1</option>
                <option value="1">Test2</option>
            </select>
        </div>
        <button type="submit" class="btn btn-primary">Create</button>
        <a class="btn btn-primary" href="dashboard">Cancel</a>
    </form>

</div>
<footer style="background-color: #f8f9fa;" class="footer">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <!--Footer Bottom-->
                <p style="text-align: center">&copy; Copyright 2018 - All rights reserved. WAP!!!</p>
            </div>
        </div>
    </div>
</footer>
</body>

</html>
