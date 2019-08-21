<%-- 
    Document   : Find
    Created on : May 30, 2018, 11:42:51 AM
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
                <a href="/J3.L.P0015/OverViewController?CurrentPage=1" class="subMenuBar noneLine">About my Cakes</a>
                <a href="/J3.L.P0015/Web-Content/Find.jsp" class="subMenuBar noneLine fontBold">Find Maria's Cafe</a>
            </div>
            <!-- display all content and advertising -->
            <div id="bigContener">
                <!-- display all blog (list blog) -->
                <div id="listBlogs" class="fontArial">
                    <!-- display sub content -->
                    <h1 class="fontTimeNewRoman">Find Maria's Cafe</h1>
                <div id="subContent">
                    <div id="divAdressContact">
                        <p class="fontFindPage magin">Address and Contact: </p>
                        <p class="fontSortDescription">${find.address}</p>
                        <p class="fontSortDescription">Tel: ${find.telephone}</p>
                        <p class="fontSortDescription">Email: ${find.email}</p>
                    </div>
                    <div id="divOpenClose">
                        <h3 class="fontFindPage magin">Opening Hours: </h3>
                        <p class="fontSortDescription magin">${find.closed}</p>
                        <p class="fontSortDescription magin">${find.opended1}</p>
                        <p class="fontSortDescription magin">${find.opended2}</p>
                    </div>
                </div>
                    <div id="divTitleContent">
                        <image class="imageMap" src="${find.map}"/>
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
