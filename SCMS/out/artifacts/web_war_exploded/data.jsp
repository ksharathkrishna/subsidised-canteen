<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 12-11-2018
  Time: 12:32 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.mongodb.*" %>
<%@page import="java.util.*" %>
<%@ page import="static javax.swing.UIManager.get" %>
<%

    //Make sure you have included MongoDB jar files in order to use the MongoDB java driver classes

    MongoClient mongoClient = new MongoClient("localhost" , 27017 );

    //connecting to the database
    DB db = mongoClient.getDB( "canteen" );
    System.out.println("Connected to database successfully");

    //Hashmap is created to store the values from the database
//
    //fetching the collection from the database
    DBCollection collection = db.getCollection("reviews");

    //Selects the documents in a collection and returns a cursor to the selected        documents
   // DBCursor cursor = collection.find();

    // while(cursor.hasNext()) {
//    BasicDBObject query = new BasicDBObject();
//    BasicDBObject field = new BasicDBObject();
//    field.put("_id", 0);
    DBCursor cursor = collection.find();
     //   DBObject o = cursor.next();

       // String label = (String) o.get("url");
       // int value = 3;
        //labelValue.put(label, value);


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
        <td width="10%"><b>Ratings</b></td>
        <td width="45%"><b>Quality of Food   </b></td>
        <td width="45%" ><b>Services</b></td>
        <%--<td width="30%"><b> Phone Number     </b></td>--%>
        <%--&lt;%&ndash;<td width="10%"><b> Age</b></td>&ndash;%&gt;--%>
    </tr>
    <%
        try{    while(cursor.hasNext()) {

            DBObject o = cursor.next();
           // System.out.println(cursor.next());

    %>
    <tr bgcolor="white">

        <td><%= o.get("Rating")%></td>
        <td><%= o.get("Food Feedback") %></td>
        <td><%= o.get("Service Feedback") %></td>
        <%--<td><%=resultSet.getString("phoneno") %></td>--%>
        <%--&lt;%&ndash;<td><%=resultSet.getString("age") %></td>&ndash;%&gt;--%>

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
</div><!-- End Footer -->
<%--<div class="container" style="width: 40%">--%>
<%--<br/><br/>--%>
<%--<a href="index.jsp" class="btn btn-outline-dark" >Back</a>--%>
<%--</div>--%>