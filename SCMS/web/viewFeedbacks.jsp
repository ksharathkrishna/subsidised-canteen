
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.mongodb.*" %>
<%@page import="java.util.*" %>
<%@ page import="static javax.swing.UIManager.get" %>
<%@ page import="java.lang.reflect.Array" %>
<%
    MongoClient mongoClient = new MongoClient("localhost" , 27017 );

    //connecting to the database
    DB db = mongoClient.getDB( "canteen" );
    System.out.println("Connected to database successfully");
    //fetching the collection from the database
    DBCollection collection = db.getCollection("reviews");
    DBCursor cursor = collection.find();
    cursor=cursor.sort(new BasicDBObject("Rating", -1));
%>
<link rel="stylesheet" type="text/css" href="home.css">
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<style>

    body {background-image:url("im.jpg");}

</style>
<br>
<h2 align="center"><font><strong>Customer Reviews</strong></font></h2>
<div class="container" align="centre" style="width: 20%">
    <br/>
    <a href="writeFeedBack.jsp" align="centre" class="btn btn-success btn-lg" >Give Feedback</a>
    <a href="index.jsp"  align="centre" class="btn btn-warning btn-lg" >Return Home</a>
    <br/>
    <br/>
    <hr>
</div>
<table align="center" cellpadding="20" cellspacing="10" border="1" width="40%">
    <tr>

    </tr>
    <tr bgcolor="yellow">
        <td width="10%"><b>Rating</b></td>
        <td width="45%"><b>Quality of Food   </b></td>
        <td width="45%" ><b>Services</b></td>

    </tr>
    <%
        try{
            while(cursor.hasNext()) {

            DBObject o = cursor.next();

    %>
    <tr bgcolor="white">

        <td><%= o.get("Rating")%></td>
        <td><%= o.get("Food Feedback") %></td>
        <td><%= o.get("Service Feedback") %></td>

    </tr>
    <%
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    %>
</table>

<br>
<br>
<div class="footer text-center">
    <p>&copy; 2018 Canteen. All Rights Reserved.  </p>
</div>
