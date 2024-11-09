<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Edit</title>
  <style>
    .custom-table {
      width: 80%;
      margin: auto;
    }
  </style>
</head>
<body>

<%

  String memberID = request.getParameter("id");
  String name = "Mark";
  String phoneNum = "123-456-7890";
  String email = "mark@example.com";
  String gender = "m";
  String type = "Student";
%>

<jsp:include page="/header.jsp"/>

<form class="custom-table" action="edit_ok.jsp" method="POST">
  <h3>Edit Member</h3>

  <input type="hidden" name="id" value="<%= memberID %>">

  <label for="name">Name</label>
  <br/>
  <input type="text" name="name" id="name" class="custom-table" value="<%= name %>" placeholder="Enter name">
  <br /><br />

  <label for="phonenum">Phone Number</label>
  <br/>
  <input type="text" name="phonenum" id="phonenum" class="custom-table" value="<%= phoneNum %>" placeholder="Enter phone number">
  <br /><br />

  <label for="email">E-mail</label>
  <br />
  <input type="email" name="email" id="email" class="custom-table" value="<%= email %>" placeholder="Enter email">
  <br><br />

  <label for="gender">Gender</label>
  <br />
  <select name="gender" id="gender">
    <option value="m" <%= gender.equals("m") ? "selected" : "" %>>Male</option>
    <option value="f" <%= gender.equals("f") ? "selected" : "" %>>Female</option>
  </select>
  <br><br />

  <label for="type">Type</label>
  <br />
  <select name="type" id="type">
    <option value="child" <%= type.equals("child") ? "selected" : "" %>>Child</option>
    <option value="student" <%= type.equals("student") ? "selected" : "" %>>Student</option>
    <option value="adult" <%= type.equals("adult") ? "selected" : "" %>>Adult</option>
    <option value="senior" <%= type.equals("senior") ? "selected" : "" %>>Senior</option>
  </select>
  <br><br />

  <button type="submit" name="edit" id="edit" class="btn btn-info">Save Changes</button>
</form>

<jsp:include page="/footer.jsp"/>
</body>
</html>
