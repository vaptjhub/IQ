<%@ Page Language="C#" AutoEventWireup="true" CodeFile="vision-and-mission.aspx.cs" Inherits="vision_and_mission" %>

<%@ Register Src="~/UFooter.ascx" TagPrefix="uc1" TagName="UFooter" %>
<%@ Register Src="~/UHeader.ascx" TagPrefix="uc1" TagName="UHeader" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <base href="/"/>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="assets/css/meanmenu.css"/>
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css"/>
    <link rel="stylesheet" href="assets/css/owl.theme.default.min.css"/>
    <link rel="stylesheet" href="assets/css/magnific-popup.css"/>
    <link rel="stylesheet" href="assets/css/flaticon.css"/>
    <link rel="stylesheet" href="assets/css/remixicon.css"/>
    <link rel="stylesheet" href="assets/css/odometer.min.css"/>
    <link rel="stylesheet" href="assets/css/aos.css"/>
    <link rel="stylesheet" href="assets/css/style.css"/>
    <link rel="stylesheet" href="assets/css/dark.css"/>
    <link rel="stylesheet" href="assets/css/responsive.css"/>
    <link rel="icon" type="image/png" href="assets/images/favicon.png"/>
    <link rel="canonical" href="https://iq.uol.edu.pk/vision-and-mission"/>
    <title>IQ - Vision and Mission</title>
</head>
<body>

<div class="navbar-area nav-bg-2">
    <uc1:UHeader runat="server" ID="UHeader" />
</div>

<div class="page-banner-area" style="background-image: url(assets/images/page-banner/news-and-events.jpg)">
<div class="container">
<div class="page-banner-content">
<h1>Vision & Mission Statement</h1>
<ul>
<li><a href="<%=ResolveUrl("home") %>">Home</a></li>
<li>Vision & Mission</li>
</ul>
</div>
</div>
</div>


    <div class="health-care-area ptb-100 bg-f4f6f9">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-6 col-md-6">
                    <div class="single-health-care-card style1">
                        <div class="img">
                            <img src="assets/images/about/vision.jpg" alt="Image"/>
                        </div>
                        <div class="health-care-content">
                            <h3>Vision Statement</h3>
                            <p>The Department of International Qualifications envisions a challenging and inspiring learning environment that produces self-directed learners, encourages lifelong learning in students, and enabling them to realize their true potential in their academics and careers. </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="single-health-care-card style2">
                        <div class="img">
                            <img src="assets/images/about/mission.jpg" alt="Image"/>
                        </div>
                        <div class="health-care-content">
                            <h3>Mission Statement</h3>
                            <p>Department of International Qualifications aims at promoting academic excellence by supporting innovation through provision of high quality learning experience. Our International Qualification Programs boasts a rigorous performance tracking and evaluation system that help each student to learn and succeed in their own way. Effective and immediate feedback is a lynchpin of the UOL experience. </p>
                        </div>
                    </div>
                </div>
                <div id="vision"></div>
            </div>
        </div>
    </div>

    <!--footer-area start-->
    <uc1:UFooter runat="server" ID="UFooter" />
</body>
</html>
