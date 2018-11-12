
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
<body>
<!--<h1> Enter the below details</h1>-->

<div class="container" style="width: 40%">
    <br/><br/>
    <h2 class="heading" >Vendor Registration</h2>
    <hr>
    <form align = "center" action="${pageContext.request.contextPath}/addVendor" method="post">
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="username">username</label>
                <input type="email" pattern="[a-zA-Z0-9._%+-]+@inv" class="form-control" name="username" id="username" placeholder="username">
            </div>
            <div class="form-group col-md-6">
                <label for="password">Password</label>
                <input type="password" class="form-control" name="password" id="password" placeholder="Password">
            </div>
        </div>
        <div class="form-group">
            <label for="name">Name</label>
            <input type="text" class="form-control" name="name" id="name" placeholder="Type your name">
        </div>
        <div class="form-group">
            <label for="cardno">phone</label>
            <input type="text" pattern =\d* maxlength="10" minlength="10" class="form-control" name="phone" id="cardno" placeholder="Enter phone number">
        </div>
        <div class="container" style="width:40%">
            <div class="form-group ">
                <label for="age">Age</label>
                <input type="number" min="18" class="form-control" name="itemid" id="age" placeholder="Enter ID">
            </div>
        </div>



        <button type="submit" value="Add" class="btn btn-warning btn-lg">Register</button>
        <a href="vendor.jsp" class="btn btn-outline-dark btn-lg" >Back</a>
    </form>


</div>



<br><br><br>
<p align="center"  style="color: red">${errorMessage}</p>
</body>
</html>
