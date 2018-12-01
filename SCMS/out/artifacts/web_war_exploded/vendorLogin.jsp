
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>user</title>
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

<div class="container" style="width:40%;">
    <br><br>
    <h2 class="heading" >Vendor Login</h2>
    <hr>
    <form align="center" action="/vendorLogin" method="post">
        <div class="form-group">
            <label for="exampleInputEmail1">Username</label>
            <input type="email" name="username" class="form-control form-control-lg" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter username">
            <large id="emailHelp" class="form-text text-muted">Username Should be of the form @inv</large>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" name="password" class="form-control form-control-lg" id="exampleInputPassword1" placeholder="Password">
        </div>
        <div class="form-group">
            <label for="quan">Quantity</label>
            <input type="number" min="1" name="quantity" class="form-control form-control-lg" id="quan" placeholder="Enter Quantity in kg">
        </div>
        <br>
        <button type="submit" value="Login" class="btn btn-warning btn-lg">Submit</button>

        <a href="vendor.jsp" class="btn btn-outline-dark btn-lg" >Back</a>
    </form>
</div>

<p align="center" style="font-size: xx-large">${errorMessage}</p>
<p align="center" style="font-size: xx-large">${message}</p>

</body>

<br>
<br>
<div class="footer text-center">
    <p>&copy; 2018 Canteen. All Rights Reserved.  </p>
</div><!-- End Footer -->
</html>
