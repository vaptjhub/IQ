<%@ Page Language="C#" AutoEventWireup="true" CodeFile="why-iq.aspx.cs" Inherits="why_iq" %>

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
    <title>IQ - Why IQ</title>
</head>
<body>

<div class="navbar-area nav-bg-2">
    <uc1:UHeader runat="server" ID="UHeader" />
</div>

<div class="page-banner-area" style="background-image: url(assets/images/page-banner/news-and-events.jpg)">
<div class="container">
<div class="page-banner-content">
<h1>Why IQ</h1>
<ul>
<li><a href="<%=ResolveUrl("home") %>">Home</a></li>
<li>Why IQ</li>
</ul>
</div>
</div>
</div>


    <div class="campus-information-area pb-70">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <div class="campus-image">
                        <img src="assets/images/about/about1.jpg" alt="Image">
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="campus-content style-2">
                        <div class="campus-title">
                            <h2>Why IQ</h2>
                            <p>
                                International Qualifications are frequently recognized and appreciated around the world.  International education exposes you to a variety of cultures, languages, and thought processes. This can help you extend your horizons and build a more global perspective, both of which are becoming increasingly vital in our interconnected world. Many businesses value foreign qualifications because they reflect a desire to venture outside of your comfort zone, adapt to new surroundings, and interact with individuals from varied backgrounds. 
                            </p>
                            <p>
                                You can establish a global network of contacts by studying International Qualifications. These networks can be extremely beneficial in your personal and professional life. Studying for International Qualifications can be a life-changing experience that will aid in the development of your cultural sensitivity, flexibility, and global perspective. Being more independent and adaptive is frequently a requirement of studying International Qualifications. You'll gain the ability to handle challenging circumstances, successfully manage your time, and make independent judgments. Completing an overseas program successfully might increase your self-confidence. 
                            </p>
                            <p>
                                You'll recognize that you can adjust to new situations and conquer obstacles. International credentials might help your CV stand out. It indicates a level of initiative, adaptability, and cultural understanding that employers may find appealing. Studying international Qualifications builds an understanding of yourself and the world around you.
                            </p>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!--footer-area start-->
    <uc1:UFooter runat="server" ID="UFooter" />

</body>
</html>
