<%--
  Created by IntelliJ IDEA.
  User: khm38
  Date: 2024-11-09
  Time: 오후 12:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>delete_ok</title>
</head>
<body>
<%
  String memberID = request.getParameter("id");
  out.println("ID to delete is " + memberID);
%>
<br>
<a href="index.jsp">Back to list</a>


</body>
</html>
