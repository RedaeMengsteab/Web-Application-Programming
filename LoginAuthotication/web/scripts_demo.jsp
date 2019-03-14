<%@ page language="java" contentType="text/html; UTF-8"%>
<html>
<head>
    <title>Demo JSP</title>
</head>
<body>
<%!int count1 = 0;%>

<%
    int count2 = 0;
%>
The count1 is now:
<%=count1%><br/>
The count2 is now:
<%=count2%><br/>

<%-- This is a jsp scriptlet that increments the counts --%>
<%
    count1++;
    count2++;
%>

The count1 is now:
<%=count1%><br/>
The count2 is now:
<%=count2%>

<%-- <%! int count3 = count1+count2; %> --%>
<!-- This is an html will be copied -->
<%-- But not this JSP comment --%>
</body>
</html>