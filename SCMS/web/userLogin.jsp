
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
    String id = request.getParameter("userId");
    String driverName = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String dbName = "canteen";
    String userId = "root";
    String password = "";

    try {
        Class.forName(driverName);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }

    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
    int b=0,l=0,d=0;
%>
<%
    try{
        connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
        statement=connection.createStatement();
        String sql ="SELECT * FROM customer";
        System.out.println("sql"+sql);

        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
            if(resultSet.getInt("bf")==1){
                b++;
            }
            if(resultSet.getInt("lu")==1){
                l++;
            }
            if(resultSet.getInt("di")==1){
                d++;
            }

        }
    } catch (Exception e) {
        e.printStackTrace();
    }
%>
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

<div class="container" style="width:30%;">
    <br><br>
    <h2 class="heading" >Customer Login</h2>
    <hr>
    <br>

    <form align="center" action="/userLogin" method="post">
        <div class="form-group">
            <label for="exampleInputEmail1">Username</label>
            <input type="email" name="username" class="form-control form-control-lg form-control form-control-lg-lg" id="exampleInputEmail1"  placeholder="Username Should end with @scms">
            <%--<large id="emailHelp" class="form-text text-muted">Username Should end with @scms</large>--%>
        </div>
        <br>
        <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" name="password" class="form-control form-control-lg form-control form-control-lg-lg" id="exampleInputPassword1" placeholder="Password">
        </div>
            <br>
        <br>
        <hr>
        <button type="submit" value="Login" class="btn btn-warning btn-lg btn-block">Generate Token</button>
        <br>


        <a href="index.jsp" class="btn btn-outline-dark btn-lg" >Back</a>
    </form>
</div>

<p align="center" class="" style="font-size: xx-large; color: red">${errorMessage}</p>
<p align="center" class="heading" style="font-size: xx-large;color: orange">${message}</p>

<br>
<br>
<style>html, body, #container {
    width: 100%;
    height: 100%;
    margin: 0;
    padding: 0;
}</style>
<script src="https://cdn.anychart.com/releases/v8/js/anychart-base.min.js"></script>

<script type="text/javascript">
    anychart.onDocumentLoad(function () {
        // create an instance of a pie chart
        var chart = anychart.pie();
        chart.animation(true);
        var five=Number("<%=b%>") ;
        var fo=Number("<%=l%>") ;
        var t=Number("<%=d%>") ;
        var tot=five+fo+t;

        // set the data
        chart.data([
            ["BreakFast", five],
            ["Lunch", fo],
            ["Dinner", t],
            ]);
        // set chart title
        chart.title("# Tokens Issued="+tot)
        //     .radius('43%')
        //
            .innerRadius('30%');
        // // set the container element
        //     var labels = chart.labels();
        //     labels.position("outside");
        //     labels.fontColor("#000000");
        //     chart.overlapMode(true);
        //     chart.insideLabelsOffset("-75%");

        chart.container("container");
        // initiate chart display
        chart.draw();

    });</script>
<%
   int tos=d+l+b;
   out.print(tos);
%>
<div class="container" style="width: 30%">
    <div class="container" style="height: 50%">
        <div id="container"></div>
    </div>
</div>

<div class="footer text-center">
    <p>&copy; 2018 Canteen. All Rights Reserved.  </p>
</div><!-- End Footer -->

</body>
</html>
