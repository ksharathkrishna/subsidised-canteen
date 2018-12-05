
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
    int s;
    int f=0,fo=2,t=0,tw=0,v=0;
%>
<link rel="stylesheet" type="text/css" href="home.css">
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<style>

    body {background-image:url("im.jpg");}

</style>

<br>
<br>
<h2 align="center"><font><strong>Customer Reviews</strong></font></h2>

<br>
<br>
<hr>
<%
    try{
        while(cursor.hasNext()) {

            DBObject o = cursor.next();
            s = Integer.parseInt((o.get("Rating")).toString());
            if (s == 5) {
                f++;
            }
            if (s == 4) {
                fo++;
            }
            if (s == 3) {
                t++;
            }
            if (s == 2) {
                tw++;
            }
            if (s == 1) {
                v++;
            }
        }

    } catch (Exception e) {
        e.printStackTrace();
    }



%>
<%--<div class="container"  style="padding-left: 70px">--%>
    <%--<div class="container" style="width: 40%">--%>
        <%--<script type="text/javascript">--%>
            <%--window.onload = function () {--%>
                <%--var five=Number("<%=f%>") ;--%>
                <%--var fo=Number("<%=fo%>") ;--%>
                <%--var t=Number("<%=t%>") ;--%>
                <%--var tw=Number("<%=tw%>") ;--%>
                <%--var vo=Number("<%=v%>") ;--%>

                <%--var chart = new CanvasJS.Chart("chartContainer", {--%>
                    <%--theme: "light2", // "light2", "dark1", "dark2"--%>
                    <%--animationEnabled: true, // change to true--%>
                    <%--title:{--%>
                        <%--text: "RATINGS"--%>
                    <%--},--%>
                    <%--data: [--%>
                        <%--{--%>
                            <%--// Change type to "bar", "area", "spline", "pie",etc.--%>
                            <%--type: "doughnut",--%>
                            <%--startAngle: 0,--%>
                            <%--//innerRadius: 60,--%>
                            <%--indexLabelFontSize: 17,--%>
                            <%--indexLabel: "{label} - #percent%",--%>
                            <%--toolTipContent: "<b>{label}:</b> {y} (#percent%)",--%>

                            <%--dataPoints: [--%>
                                <%--{ label: "5 stars",  y: five},--%>
                                <%--{ label: "4 stars", y: fo  },--%>
                                <%--{ label: "3 stars", y: t  },--%>
                                <%--{ label: "2 stars",  y: tw  },--%>
                                <%--{ label: "1 stars",  y: vo  }--%>
                            <%--]--%>
                        <%--}--%>
                    <%--]--%>
                <%--});--%>
                <%--chart.render();--%>

            <%--}--%>
        <%--</script>--%>

        <%--<div id="chartContainer" style="height: 370px; width: 100%;"></div>--%>
        <%--<script src="https://canvasjs.com/assets/script/canvasjs.min.js"> </script>--%>

    <%--</div>--%>
<%--</div>--%>
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
        var five=Number("<%=f%>") ;
        var fo=Number("<%=fo%>") ;
        var t=Number("<%=t%>") ;
        var tw=Number("<%=tw%>") ;
        var vo=Number("<%=v%>") ;


        // set the data
    chart.data([
        ["5 *", five],
        ["4 *", fo],
        ["3 *", t],
        ["2 *", tw],
        ["1 *", vo]
    ]);
    // set chart title
    chart.title("RATINGS");
    //     .radius('43%')
    //
    //         .innerRadius('70%');
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
<div class="container" style="width: 30%">
    <div class="container" style="height: 50%">
<div id="container"></div>
</div>
</div>

<div class="container" style="width: 60%">
<div class="container" align="centre" style="width: 20%">
    <br/>
    <a href="feedBack.jsp" align="centre" class="btn btn-success btn-lg" >Back</a>
    <a href="index.jsp"  align="centre" class="btn btn-warning btn-lg" >Home</a>
    <br/>
    <br/>
    <hr>
</div>
<table align="centre" cellpadding="20" cellspacing="10" border="1" width="100%">
    <tr>

    </tr>
    <tr bgcolor="yellow">
        <td width="10%"><b>Rating</b></td>
        <td width="45%"><b>Quality of Food   </b></td>
        <td width="45%" ><b>Services</b></td>

    </tr>
    <%
        try{
            cursor = collection.find();
            cursor=cursor.sort(new BasicDBObject("Rating", -1));

            while(cursor.hasNext()) {

            DBObject o = cursor.next();
            s= Integer.parseInt((o.get("Rating")).toString());
                if(s==5){f++;}
                if(s==4){fo++;}
                if(s==3){t++;}
                if(s==2){tw++;}
                if(s==1){v++;}



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

</div>

<div class="footer text-center">
    <p>&copy; 2018 Canteen. All Rights Reserved.  </p>
</div>
