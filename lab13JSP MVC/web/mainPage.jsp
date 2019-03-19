<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
<head>
    <title>Welcome to Product demo</title>
    <meta charset="utf-8"/>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
            integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
            crossorigin="anonymous"></script>
    <script type="text/javascript" src="resources/js/product.js"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
          integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <link type="text/css" rel="stylesheet" href="<c:url value="/resources/css/style.css" />"/>
</head>
<body>
<div class="headerMain">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <ul class="nav navbar-nav navbar-right">
            <li><a style="margin-right: 20px" class="btn btn-primary" href="/logout">Logout</a></li>
        </ul>
        <ul class="nav navbar-nav">
            <li><h4>Welcome, <%=session.getAttribute("sessuser")%>
            </h4></li>
        </ul>
    </nav>
</div>
<div id="divInfo">
    <h2></h2>
</div>

<div class="accordion" id="accordions">
    <div class="card">
        <div class="card-header" id="sectionOne">
            <h3 class="mb-0">
                <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne"
                        aria-expanded="false" aria-controls="collapseOne">
                    <strong> Products </strong>
                </button>
            </h3>
        </div>
        <div id="collapseOne" class="collapse show" aria-labelledby="sectionOne" data-parent="#accordions">
            <div class="card-body">
                <div id="productDiv">
                    <h4 style="text-align: center; padding-bottom: 30px">Products</h4>
                    <a href="add_product">
                        <button style="margin-bottom: 30px" type="button" class="btn btn-primary">Add product</button>
                    </a>
                    <table id="productList" class="table table-striped">
                        <thead>
                        <tr>
                            <th>Name</th>
                            <th>No</th>
                            <th>Type</th>
                            <th>Test</th>
                            <th>Desc</th>
                            <th>Delete</th>
                        </tr>
                        </thead>
                        <tbody>

                        <c:forEach items="${products}" var="product">
                            <tr>
                                <td>${product.name}</td>
                                <td>${product.no}</td>
                                <td>${product.type}</td>
                                <td>${product.test}</td>
                                <td>${product.desc}</td>
                                <td>
                                    <a class="btn btn-primary" href="delete_product?no=${product.no}">x</a>
                                </td>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<%--<div id="info">
    <input type="button" id="contactInfo" class="btn btn-primary" name="contactInfo" value="Developer"/>
    <div id="details"></div>
</div>--%>
<footer class="footer">
    <div class="container">
        <div class="row">
            <div class="col-xs-12">
                <!--Footer Bottom-->
                <p>&copy; Copyright 2018 - All rights reserved. WAP!!!</p>
            </div>
        </div>
    </div>
</footer>
</body>

</html>
