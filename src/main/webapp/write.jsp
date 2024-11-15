<%--
  Created by IntelliJ IDEA.
  User: khm38
  Date: 2024-11-09
  Time: 오전 10:53
--%>
<%
    String name = request.getParameter("name");
    String phoneNum = request.getParameter("phonenum");
    String email = request.getParameter("email");
    String gender = request.getParameter("gender");
    String type = request.getParameter("type");
%>
<html>
<head>
    <title>Add</title>
    <style>
        .custom-table {
            width: 80%;
            margin: auto;
        }
    </style>
    <script>
        function validateForm() {

            var name = document.getElementById("name").value;
            var phoneNum = document.getElementById("phonenum").value;
            var email = document.getElementById("email").value;
            var gender = document.getElementById("gender").value;
            var type = document.getElementById("type").value;


            if (name === "") {
                alert("Name must be filled out");
                return false;
            }



            if (phoneNum.length !== 11) {
                alert("Please enter a valid phone number (e.g., 123-456-7890)");
                return false;
            }



            if (email ==="") {
                alert("Please enter a valid email address");
                return false;
            }

            if (gender === "") {
                alert("Please select a gender");
                return false;
            }

            if (type === "") {
                alert("Please select a member type");
                return false;
            }


            return true;
        }
    </script>
</head>
<body>
<jsp:include page="/header.jsp"/>

<form class="custom-table" action="write_ok.jsp" method="POST" onsubmit="return validateForm()">
    <h3>Add new member</h3>
    <label for="name">Name</label>
    <br/>
    <input type="text" name="name" id="name" class="custom-table" placeholder="Enter name">
    <br /><br />

    <label for="phonenum">Phone Number</label>
    <br/>
    <input type="text" name="phonenum" id="phonenum" class="custom-table" placeholder="Enter phone number">
    <br /><br />

    <label for="email">E-mail</label>
    <br />
    <input type="email" name="email" id="email" class="custom-table" placeholder="Enter email">
    <br><br />

    <label for="gender">Gender</label>
    <br />
    <select name="gender" id="gender">
        <option value="">Select Gender</option>
        <option value="m">Male</option>
        <option value="f">Female</option>
    </select>
    <br><br />

    <label for="type">Type</label>
    <br />
    <select name="type" id="type">
        <option value="">Select Type</option>
        <option value="child">Child</option>
        <option value="student">Student</option>
        <option value="adult">Adult</option>
        <option value="senior">Senior</option>
    </select>
    <br><br />

    <button type="submit" name="add" id="add" class="btn btn-info">Add</button>
</form>

<jsp:include page="/footer.jsp"/>
</body>
</html>
