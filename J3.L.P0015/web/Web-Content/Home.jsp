<%-- 
    Document   : Home
    Created on : May 23, 2018, 11:11:46 AM
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
            <%@include file="header.jsp"%>
            <!-- the menu bar background color red -->
            <div id="menuBar">
                <a class="subMenuBar fontBold">Home</a>
                <a href="/J3.L.P0015/OverViewController?CurrentPage=1" class="subMenuBar noneLine">About my Cakes</a>
                <a href="/J3.L.P0015/FindController" class="subMenuBar noneLine">Find Maria's Cafe</a>
            </div>
            <!-- display all content and advertising -->
            <div id="bigContener">
                <!-- display all blog (list blog) -->
                <div id="listBlogs" class="fontArial">
                <div id="subContent">
                    <div id="divAvatar">
                        <img class="avatar" src="${home.picture}">
                    </div>
                    <div id="divTitleContent">
                        <h2 class="fontTimeNewRoman magin">${home.title}</h2>
                        <p class="fontArial fontSortDescription">${home.content}</p>
                    </div>
                </div>

                <div id="subContent">
                    <div class="divCake1">
                        <img class="imageCakeHome" src="${cake1.picture}"/>
                        <a class="fontBlack noneLine" href="/J3.L.P0015/DetailController?ID=${cake1.id}"><h2 class="fontTimeNewRoman magin">${cake1.title}</h2></a>
                        <p class="fontArial fontSortDescription">${cake1.sortContent}</p>
                    </div>
                    <div class="centerdiv"></div>
                    <div class="divCake2">
                        <img class="imageCakeHome" src="${cake2.picture}"/>
                        <a class="fontBlack noneLine" href="/J3.L.P0015/DetailController?ID=${cake2.id}"><h2 class="fontTimeNewRoman magin">${cake2.title}</h2></a>
                        <p class="fontArial fontSortDescription">${cake2.sortContent}</p>
                    </div>
                </div>
                <div id="subContent">
                    <div id="divVisit">
                        <h2 class="fontTimeNewRoman magin">Visit my cafe</h2>
                        <p class="fontSortDescription">Lorem ipsum dolor sit amet, consectetuer adipiscing elit.</p>
                        <p class="fontSortDescription">Gammel Torv, Copenhagen</p>
                        <p class="fontSortDescription">Phone: 12 1234 1234</p>
                    </div>
                </div>
                <div id="divSign">
                    <p class="fontArial">${home.sign1}</p>
                    <p class="fontSign fontBold magin">${home.sign2}</p>
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
