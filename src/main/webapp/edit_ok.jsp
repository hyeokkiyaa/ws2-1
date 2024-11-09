<%--
  Created by IntelliJ IDEA.
  User: khm38
  Date: 2024-11-09
  Time: 오후 12:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit_ok</title>
</head>
<body>
<h3>Update data</h3>

<%
  String memberID= request.getParameter("id");
  String name = request.getParameter("name");
  String phonenum = request.getParameter("phonenum");
  String email = request.getParameter("email");
  String gender = request.getParameter("gender");
  String type = request.getParameter("type");
%>
<p>id: <%= memberID %></p>
<p>name: <%= name %></p>
<p>Phone number: <%= phonenum %></p>
<p>Email: <%= email %></p>
<p>Gender: <%= "m".equals(gender) ? "Male" : "Female" %></p>
<p>Type: <%= type %></p>



<a href="index.jsp">Back to list</a>
</body>
</html>
