<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>admin</title>
    <link rel="stylesheet" type="text/css" href="home.css">
    <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">


</head>
<%--<h2 class="heading" style="color: black" style="background: #009900">WELCOME ADMIN</h2>--%>
<header style="background: darkorange">
    <br/>
    <br>
    <br>
    <div class="container" style="width: 40%">
        <%--<h1 class="heading" ><input type="image" style="width: 30%" src="https://image.flaticon.com/sprites/new_packs/133293-restaurant-icons.png" alt=""></h1>--%>
    </div>
    <h2 class="heading"  style="color: white" >WORKER</h2>
    <br>
</header>
<br><br>

<body><div class="container">
    <div class="row">
        <div class="card col-sm-4" >
            <a href="addWorker.jsp" class="btn btn-success" >

                <div class="card-body">
                    <img src="https://image.flaticon.com/icons/svg/60/60807.svg" class="card-img-top">
                    <p class="card-text">Add Worker </p>
                </div></a>
        </div>
        <div class="card col-sm-4" >
            <a href="deleteWorker.jsp" class="btn btn-danger" >
                <div class="card-body">

                    <img src="https://image.flaticon.com/icons/svg/121/121694.svg" class="card-img-top">
                    <p class="card-text">Delete Worker </p>

                </div></a>
        </div><div class="card col-sm-4" ><a href="vWorker.jsp" class="btn btn-warning" >
        <div class="card-body">
            <img src="https://image.flaticon.com/icons/svg/33/33308.svg" class="card-img-top">
            <p class="card-text">Worker Details </p>

        </div></a>
    </div>

        <div class="container" style="width: 40%">
            <br/><br/><br/>
            <p align="center">
                <a href="invSection.jsp"><input type="submit" class="btn btn-dark" value="Back"></a>
            </p>
        </div>
    </div></div>
</body>

</html>
