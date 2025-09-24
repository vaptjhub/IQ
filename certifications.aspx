<%@ Page Language="C#" AutoEventWireup="true" CodeFile="certifications.aspx.cs" Inherits="certifications" %>

<%@ Register Src="~/UFooter.ascx" TagPrefix="uc1" TagName="UFooter" %>
<%@ Register Src="~/UHeader.ascx" TagPrefix="uc1" TagName="UHeader" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <base href="/"/>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="keywords" content="" />
    <meta name="description" content="Get the Latest News and Updates from the Department of International Qualifications at the University of Lahore." />
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
    <link rel="canonical" href="https://iq.uol.edu.pk/news-and-events"/>
    <title>IQ - News and Events</title>
</head>
<body>
<div class="navbar-area nav-bg-2">
    <uc1:UHeader runat="server" ID="UHeader" />
</div>

<div class="page-banner-area" style="background-image: url(assets/images/page-banner/news-and-events.jpg)">
<div class="container">
<div class="page-banner-content">
<h1>Certifications</h1>
<ul>
<li><a href="<%=ResolveUrl("home") %>">Home</a></li>
<li>certifications</li>
</ul>
</div>
</div>
</div>

    <div class="events-area pt-100 pb-70">
        <div class="container">
            <div class="row justify-content">
                <div class="col-lg-4 col-md-6">
                    <div class="single-events-card style-4">
                        <div class="events-image">
                            <a href="international-certificate-in-information-technology"><img src="images/certification/international-certificate-in-information-technology.jpg" alt="Image"/></a>
                        </div>
                        <div class="events-content">
                            <div class="admin">
                                
                            </div>
                            <a href="international-certificate-in-information-technology"><h3> International Certificate in Information Technology</h3></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-events-card style-4">
                        <div class="events-image">
                            <a href="international-certificate-in-hospitality"><img src="images/certification/international-certificate-in-hospitality.jpg" alt="Image"/></a>
                        </div>
                        <div class="events-content">
                            <div class="admin">
                                
                            </div>
                            <a href="international-certificate-in-hospitality"><h3> International Certificate in Hospitality</h3></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-events-card style-4">
                        <div class="events-image">
                            <a href="international-certificate-in-health-and-social-care"><img src="images/certification/international-certificate-in-health-and-social-care.jpg" alt="Image"/></a>
                        </div>
                        <div class="events-content">
                            <div class="admin">
                                
                            </div>
                            <a href="international-certificate-in-health-and-social-care"><h3>International Certificate in Health & Social Care</h3></a>
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
