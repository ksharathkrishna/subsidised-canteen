<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>admin</title>
    <link rel="stylesheet" type="text/css" href="home.css">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">


</head>
<header style="background: darkorange">
    <br/>
    <div class="container" style="width: 40%">
        <h1 class="heading" ><input type="image" style="width: 30%" src="https://image.flaticon.com/sprites/new_packs/133293-restaurant-icons.png" alt=""></h1>
    </div>
    <h2 class="heading"  style="color: white" >FEEDBACKS</h2>
    <br>
</header>
<br><br>

<body><div class="container" style="width: 40%" >
    <div class="row">

        <div class="card col-sm-6" >
            <a href="writeFeedBack.jsp" class="btn btn-warning" >

                <div class="card-body">
                    <img src="https://image.flaticon.com/icons/svg/485/485414.svg" class="card-img-top">
                    <p class="card-text">Give Feedback </p>
                </div></a>
        </div>
        <div class="card col-sm-6" >
            <a href="viewFeedbacks.jsp" class="btn btn-info" >
                <div class="card-body">

                    <img src="https://image.flaticon.com/icons/svg/860/860615.svg" class="card-img-top">
                    <p class="card-text">View FeedBacks </p>

                </div></a>
        </div>




        <div class="container" style="width: 40%">
            <br/><br/>
            <p align="center">
                <a href="orderFood.jsp"><input type="submit" class="btn btn-dark btn-lg" value="Back"></a>
            </p>
        </div>
    </div></div>
<p align="center" style="color: red">${error}</p>

</body>

<br>
<div class="footer text-center">
    <p>&copy; 2018 Canteen. All Rights Reserved.  </p>
</div><!-- End Footer -->

</html>
