<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HOD-Message.aspx.cs" Inherits="HOD_Message" %>

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
    <link rel="canonical" href="https://iq.uol.edu.pk/hod-messages"/>
    <title>IQ - HOD Message</title>
</head>
<body>

<div class="navbar-area nav-bg-2">
<uc1:UHeader runat="server" ID="UHeader" />
</div>

<div class="page-banner-area" style="background-image: url(assets/images/page-banner/news-and-events.jpg)">
<div class="container">
<div class="page-banner-content">
<h1>HOD Message</h1>
<ul>
<li><a href="<%=ResolveUrl("home") %>">Home</a></li>
<li>Message</li>
</ul>
</div>
</div>
</div>
    <br/><br/>
    <div class="campus-information-area pb-70">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-4">
                    <div class="campus-image">
                        <img src="assets/images/about/Samina-Shah.jpg" alt="Image">
                    </div>
                </div>
                <div class="col-lg-8">
                    <div class="campus-content style-1">
                        <div class="campus-title">
                            <h2>Samina Shah</h2>
                            <p>Executive Director CSDL & IQ Department</p>
                            <p>
                                Welcome to the Department of International Qualifications, where we are committed to ensuring “every student is a success story!” We cherish a vision of intellectual excellence to build refined and well-groomed individuals whose destiny is to arrive at the goal, i.e., "a successful life ahead.” We have an ingenious and innovative academic team that shapes our students with knowledge that is diverse, unique, and blended with social values. We strive to transform awareness in all scholastic pursuits and academic standards. Our students are moulded to be ambidextrous in thinking and in action so that they can make a choice about their life preference. “We do not simply teach; we inculcate an insight into life and for life.” The parent’s community is kept informed of all developments in college life, with a continuous feedback system during the course of the student's stay at college. We take pride in creating our students as “future leaders” who may benefit society in diverse areas of science and the humanities.
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
