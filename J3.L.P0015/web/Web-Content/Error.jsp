<%-- 
    Document   : Error
    Created on : May 21, 2018, 11:47:55 AM
    Author     : duydnse04661
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="/J3.L.P0015/CSS_Style/Home.css" rel="stylesheet" type="text/css"/>
        <title>Home Page</title>
    </head>
    <body>
        <div id="mainBoxShadow">
            <!-- the big header content logo and sub blog -->
            <%@include file="header.jsp" %>
            <!-- the menu bar background color red -->
            <div id="menuBar">
                <a href="/J3.L.P0015/HomeController" class="subMenuBar noneLine">Home</a>
                <a href="/J3.L.P0015/OverViewController?currentPage=1" class="subMenuBar noneLine">About my Cakes</a>
                <a href="/J3.L.P0015/FindController" class="subMenuBar noneLine">Find Maria's Cafe</a>
            </div>
            <!-- display all content and advertising -->
            <div id="bigContener">
                <!-- display all blog (list blog) -->
                <div id="listBlogs" class="fontArial">
                    <!-- display sub content -->
                <div id="subContent">
                    Error Pages!
                </div>
            </div>
                <!-- the advertising -->
                <%@include file= "advertisingPage.jsp" %>
            </div>
            <!--Display the footer of pages-->
            <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
