<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>login</title>
    <link rel="stylesheet" type="text/css" href="home.css">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

    <style>

        body {background-image:url("im.jpg");}
    </style>
</head>
<body>
<br><br><br><br>
<h4 align="center" >ENTER PASSWORD</h4>
<hr>
<br><br><br><br>
<form align="center" action="/adminLogin" method="post">
    <div class="container" style="width:40%;">

    <div class="form-group">
        <label for="exampleInputPassword1">Password</label>
        <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
    </div>
    <button type="submit" value="Login" class="btn btn-warning btn-lg">Submit</button>

    <a href="index.jsp" class="btn btn-outline-dark btn-lg" >Back</a>


    </div>
</form>

<br><br><br><br>
<p align="center" style="font-size: xx-large">${errorMessage}</p>
</body>
<br>
<br>
<div class="footer text-center">
    <p>&copy; 2018 Canteen. All Rights Reserved.  </p>
</div><!-- End Footer -->
</html>

