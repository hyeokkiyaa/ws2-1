<%--
  Created by IntelliJ IDEA.
  User: khm38
  Date: 2024-11-09
  Time: 오전 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <style>
        .custom-table {
            width: 80%;
            margin: auto;
        }
    </style>
    <script>
        function delete_item(id) {
            if (confirm("Do you want to delete the member?")) {
                location.href = 'delete_ok.jsp?id=' + id;
            } else {
                alert("cancel deleting");
            }
        }
        function update_item(id) {
            if (confirm("Do you want to update the member?")) {
                location.href = 'edit.jsp?id=' + id;
            } else {
                alert("cancel editing");
            }
        }

    </script>
</head>
<body>
<nav class="navbar navbar-expand-lg custom-table">
    <div class="container-fluid">
        <h3>List of members</h3>
        <form class="d-flex" role="search">
            <a class="btn btn-outline-success" href="write.jsp"><img src="img/plus-lg.svg" alt="plus sign" /></a>
            <input class="form-control me-2 ms-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
        </form>
    </div>
</nav>
<table class="table custom-table table-bordered">
    <thead class="table-info">
    <tr>
        <th scope="col">#</th>
        <th scope="col">Name</th>
        <th scope="col">Phone No.</th>
        <th scope="col">E-Mail</th>
        <th scope="col">Gender</th>
        <th scope="col">Type</th>
        <th scope="col">Edit/Delete</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th scope="row">1</th>
        <td><a href="view.jsp">Mark</a></td>
        <td>123-456-7890</td>
        <td>mark@example.com</td>
        <td>Male</td>
        <td>Student</td>

        <td class="d-flex mt-1">
            <a onclick="update_item(1)"> <img src="img/pencil.svg" alt="edit image"></a>
            <a onclick="delete_item(1)"> <img src="img/trash3.svg" alt="delete" class="ms-2"></a>
        </td>
    </tr>
    <tr>
        <th scope="row">2</th>
        <td><a href="view.jsp">Jacob</a></td>
        <td>098-765-4321</td>
        <td>jacob@example.com</td>
        <td>Male</td>
        <td>Adult</td>
        <td class="d-flex mt-1">
            <a onclick="update_item(2)"><img src="img/pencil.svg" alt="edit image"></a>
            <a onclick="delete_item(2)"> <img src="img/trash3.svg" alt="delete" class="ms-2"></a>
        </td>
    </tr>
    <tr>
        <th scope="row">3</th>
        <td><a href="view.jsp">Larry the Bird</a></td>
        <td>555-555-5555</td>
        <td>larry@twitter.com</td>
        <td>Male</td>
        <td>Senior</td>
        <td class="d-flex mt-1">
            <a onclick="update_item(3)"><img src="img/pencil.svg" alt="edit image"></a>
            <a onclick="delete_item(3)"> <img src="img/trash3.svg" alt="delete" class="ms-2"></a>
        </td>
    </tr>
    </tbody>
</table>

</body>

</html>
