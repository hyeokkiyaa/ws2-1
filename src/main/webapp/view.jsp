<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View</title>
    <style>
        .custom-table {
            width: 80%;
            margin: auto;
        }
        .info-box {
            background-color: #e0ffff;
            padding: 30px;
            margin-bottom: 0;
        }
    </style>
</head>
<body>
<jsp:include page="header.jsp"/>
<div class="custom-table">
    <h3>Member Information</h3>

    <h4>Name</h4>
    <br/>
    <div class="custom-table info-box">James</div>
    <br/><br/>

    <h4>Phone number</h4>
    <br/>
    <div class="custom-table info-box">010-1111-2222</div>
    <br/><br/>

    <h4>E-mail</h4>
    <br/>
    <div class="custom-table info-box">aa@gmail.com</div>
    <br><br/>

    <h4>Gender</h4>
    <br/>
    <div class="custom-table info-box">Male</div>
    <br><br/>

    <h4>Type</h4>
    <br/>
    <div class="custom-table info-box">Student</div>
    <br><br/>


    <a href="index.jsp" class="btn btn-info">Back to List</a>
</div>
<jsp:include page="footer.jsp"/>
</body>
</html>
