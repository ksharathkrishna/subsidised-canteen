
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>add User</title>
    <link rel="stylesheet" type="text/css" href="home.css">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

    <style>

        body {background-image:url("im.jpg");}

    </style>


</head>
<%
    if(session.getAttribute("password")==null){
        session.invalidate();
        response.sendRedirect("index.jsp");
    }
%>
<body>
<!--<h1> Enter the below details</h1>-->

    <div class="container" style="width: 40%">
        <br/><br/>
        <h2 class="heading" >Customer Registration</h2>
        <hr>
        <form align = "center" action="${pageContext.request.contextPath}/addCustomer" method="post">
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="username">Username</label>
                <input type="email" minlength="5" pattern="[a-z0-9._%+-]+@scms" class="form-control form-control-lg" name="username" id="username" area-describedby="emailHelp" placeholder="username">
                <large id="emailHelp" class="form-text text-muted">Username Should be of the form @scms</large>
            </div>
            <div class="form-group col-md-6">
                <label for="password">Password</label>
                <input type="password" class="form-control form-control-lg" name="password" id="password" placeholder="Password">
            </div>
        </div>
        <div class="form-group">
            <label for="cardno">Card Number</label>
            <input type="text" pattern=\d* minlength="12" maxlength="12" class="form-control form-control-lg" name="cardno" id="cardno" placeholder="Enter 12 digit card number">
        </div>




            <button type="submit" value="Add" class="btn btn-warning btn-lg">Register</button>
<a href="adminSection.jsp" class="btn btn-outline-dark btn-lg" >Back</a>
        </form>


    </div>
<br>
<br>
<div class="footer text-center">
    <p>&copy; 2018 Canteen. All Rights Reserved.  </p>
</div><!-- End Footer -->


<br><br><br>
<p align="center"  style="font-size: xx-large; color:red ">${errorMessage}</p>
</body>
</html>
