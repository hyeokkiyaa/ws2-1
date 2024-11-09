
<html>
<head>
  <title>write_ok.jsp check</title>
</head>
<body>
<h3>Input data</h3>

<%
  // Retrieving form parameters from the request
  String name = request.getParameter("name");
  String phonenum = request.getParameter("phonenum");
  String email = request.getParameter("email");
  String gender = request.getParameter("gender");
  String type = request.getParameter("type");


  if (name != null && phonenum != null && email != null && gender != null && type != null) {
%>

<p>name: <%= name %></p>
<p>Phone number: <%= phonenum %></p>
<p>Email: <%= email %></p>
<p>Gender: <%= "m".equals(gender) ? "Male" : "Female" %></p>
<p>Type: <%= type %></p>

<% } else { %>
<p>No input data</p>
<% } %>

<a href="index.jsp">Back to list</a>
</body>
</html>
