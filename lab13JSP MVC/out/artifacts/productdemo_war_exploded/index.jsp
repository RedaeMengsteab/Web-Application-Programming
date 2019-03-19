<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <script type="text/javascript" src="resources/js/product.js"></script>
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
            integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
            crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
          integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous"/>
    <link type="text/css" rel="stylesheet" href="resources/css/style.css"/>
</head>
<div>

    <%
        Cookie[] cookies = request.getCookies();
        String userName = "", password = "", rememberVal = "";
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("cookuser")) {
                    userName = cookie.getValue();
                }
                if (cookie.getName().equals("cookpass")) {
                    password = cookie.getValue();
                }
                if (cookie.getName().equals("cookrem")) {
                    rememberVal = cookie.getValue();
                }
            }
        }
    %>

    <fieldset style="width: 600px; margin: auto; margin-top: 25px; background-color: white !important;">
        <legend>Login</legend>
        <div>
            <%=request.getAttribute("msg") != null ? request.getAttribute("msg") : ""%>

            <form name="loginForm" method="post"
                  action="login">
                <div class="form-group">
                    <label for="username">User Name</label>
                    <input type="text" value="<%=userName%>" class="form-control" id="username" name="username"
                           aria-describedby="emailHelp" placeholder="Name">
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" value="<%=password%>" class="form-control" id="password" name="password"
                           aria-describedby="emailHelp" placeholder="Password">
                </div>
                <p>
                    <label>Remember</label> <input type="checkbox" name="remember"
                                                   value="1"
                        <%= "1".equals(rememberVal.trim()) ? "checked=checked" : "" %> />
                </p>
                <button type="submit" class="btn btn-primary">Login</button>
            </form>
        </div>
    </fieldset>
</div>
</body>
</html>
