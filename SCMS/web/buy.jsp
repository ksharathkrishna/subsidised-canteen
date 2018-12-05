
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

<div class="container" style="width:25%;">
    <br><br>
    <h2 class="heading" >Order</h2>
    <form align="center" action="/order" method="post">
        <div class="form-group" >
            <%--<large class="heading" style="font-size:large"> |Green-North |Yellow-Chinese</large>--%>
            <div class="container" style="background: gainsboro">
                <hr>

                <span class="badge badge-info ">South Indian</span>
                <span class="badge badge-secondary">North Indian</span>
                <span class="badge badge-light">Chinese</span>
                <hr>

            </div>

            <label for="exampleInputEmail1">Dishes- Select One</label>
            <select name="foodid" size="11" style="background:gainsboro" multiple class="form-control form-control-lg " id="exampleInputEmail1">
                <option class="btn btn-info  btn-block" >1-Idly vada</option>
                <option class="btn btn-secondary  btn-block" >2-Roti Curry</option>
                <option class="btn btn-light  btn-block" >3-Fried Rice</option>
                <option class="btn btn-info  btn-block" >4-Rice Bath</option>
                <option class="btn btn-secondary  btn-block" >5-Paratha</option>
                <option class="btn btn-light  btn-block" >6-Noodles</option>
                <option class="btn btn-info  btn-block" >7-South Meals</option>
                <option class="btn btn-secondary  btn-block" >8-North Thali</option>
                <option class="btn btn-light  btn-block" >9-Chinese Combo</option>
            </select>

        <%--<input type="text" name="foodid" class="form-control form-control-lg" id="exampleInputEmail1" placeholder="Enter Food ID">--%>

        </div>

        <div class="form-group">
            <label for="exampleInputPassword1">Quantity</label>
            <input type="text" pattern =\d* min="1" maxlength="2" minlength="1" name="quantity" class="form-control form-control-lg" id="exampleInputPassword1" placeholder="Enter Quantity">
        </div>
        <br>
        <button type="submit" value="Login" class="btn btn-warning btn-lg">Confirm</button>

        <a href="orderFood.jsp" class="btn btn-outline-dark btn-lg" >Cancel</a>
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
