
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>user</title>
    <link rel="stylesheet" type="text/css" href="home.css">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link type="text/css" href="rate.css" rel="stylesheet" >
    <!------ Include the above in your HEAD tag ---------->


    <style>
        body {background-image:url("im.jpg");}
        select:active, select:hover {
            outline: red;
        }


    </style>
</head>
<body>

<div class="container" style="width:40%;">
    <br><br>
    <h2 class="heading" >FeedBack Page</h2>
    <hr>
    <form align="center" action="/Reviews" method="post">

        <div class="form-group" style="width: content-box "  >
            <label for="exampleFormControlTextarea3"> Food experience</label>
            <input placeholder="What do think about of quality of food" rows="3"  name="country" class="form-control form-control-lg" id="exampleFormControlTextarea3" rows="3" >
            </input> </div>
        <div class="form-group" style="width: content-box "  >
            <label for="exampleFormControlTextarea1">Service experience</label>
            <input type="text" minlength="3" name="service" class="form-control form-control-lg" id="exampleFormControlTextarea1" rows="3" placeholder="How was the experience">
            </input>
        </div>
        <br>
        <div class="container" style="width:43%">
            <div class="form-group ">
        <label for="exampleInputEmail1">Rate your Experience</label>
<div class="select">
        <select name="name" size="1" multiple class="form-control form-control-lg " id="exampleInputEmail1" >
            <option class="btn btn-outline-success btn-lg " >5</option>
            <option class="btn btn-outline-info btn-lg " >4</option>
            <option class="btn btn-outline-secondary btn-lg " >3</option>
            <option class="btn btn-outline-warning btn-lg " >2</option>
            <option class="btn btn-outline-danger btn-lg " >1</option>
        </select></div></div>
        </div>
        <br>
        <br>

        <button type="submit" value="Login" class="btn btn-warning btn-lg">Submit</button>

        <a href="feedBack.jsp" class="btn btn-outline-dark btn-lg" >Back</a>
    </form>
</div>

<p align="center" style="color: red">${error}</p>

</body>

<br>
<br>
<div class="footer text-center">
    <p>&copy; 2018 Canteen. All Rights Reserved.  </p>
</div><!-- End Footer -->
</html>
