
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
<body>

<div class="container" style="width:40%;">
    <br><br>
    <h2 class="heading" >Vendor Login</h2>
    <hr>
    <form align="center" action="/vendorLogin" method="post">
        <div class="form-group">
            <label for="exampleInputEmail1">Username</label>
            <input type="email" name="username" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter username">
            <large id="emailHelp" class="form-text text-muted">Username Should be of the form @scms</large>
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
        </div>
        <div class="form-group">
            <label for="quan">Username</label>
            <input type="number" name="quantity" class="form-control" id="quan" placeholder="Enter Quantity in kg">
        </div>
        <br>
        <button type="submit" value="Login" class="btn btn-warning">Submit</button>

        <a href="vendor.jsp" class="btn btn-outline-dark" >Back</a>
    </form>
</div>

<p align="center" style="color: red">${errorMessage}</p>
<p align="center" style="color: yellow">${message}</p>

</body>
</html>
