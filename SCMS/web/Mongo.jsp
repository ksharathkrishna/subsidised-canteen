
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

    </style>
</head>
<body>

<div class="container" style="width:40%;">
    <br><br>
    <h2 class="heading" >FeedBack Page</h2>
    <hr>
    <form align="center" action="/Reviews" method="post">
        <div class="form-group">
            <label for="exampleInputEmail1">Rate your Experience</label>
            <select name="name" class="form-control" id="exampleInputEmail1" >
            <%--<large id="emailHelp" class="form-text text-muted">enter # between 1 to 5</large>--%>
            <option>1</option>
            <option>2</option>
            <option>3</option>
            <option>4</option>
            <option>5</option>
            </select>
                <%--<input id="input-1" name="input-1" class="rating rating-loading" data-min="0" data-max="5" data-step="0.1" value="2">--%>


        </div>
        <div class="form-group" style="width: content-box "  >
            <label for="exampleFormControlTextarea3"> Food experience</label>
            <textarea type="text" minlength="3" name="country" class="form-control" id="exampleFormControlTextarea3" rows="3" placeholder="What do think about of quality of food">
            </textarea> </div>
        <div class="form-group" style="width: content-box "  >
            <label for="exampleFormControlTextarea1">Service experience</label>
            <textarea type="text" minlength="30" name="service" class="form-control" id="exampleFormControlTextarea1" rows="3" placeholder="How was the experience">
            </textarea>
        </div>
        <br>
        <button type="submit" value="Login" class="btn btn-warning btn-lg">Submit</button>

        <a href="feedBack.jsp" class="btn btn-outline-dark btn-lg" >Back</a>
    </form>
</div>

<p align="center" style="color: red">${error}</p>
<%--<p align="center" style="color: yellow">${ge}</p>--%>

</body>
</html>
