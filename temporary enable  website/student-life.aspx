<%@ Page Language="C#" AutoEventWireup="true" CodeFile="student-life.aspx.cs" Inherits="student_life" %>

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
    <meta name="description" content="IQ Department taking the programs to the next level of excellence, the best university of Lahore makes a perfect environment." />
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
    <link rel="canonical" href="https://iq.uol.edu.pk/student-life"/>
    <title>IQ - Student Life</title>
</head>
<body>

<div class="navbar-area nav-bg-2">
    <uc1:UHeader runat="server" ID="UHeader" />
</div>

<div class="page-banner-area" style="background-image: url(assets/images/page-banner/student-life-2.jpg)">
<div class="container">
<div class="page-banner-content">
<h1>Student Life</h1>
<ul>
<li><a href="<%=ResolveUrl("home") %>">Home</a></li>
<li>Student Life</li>
</ul>
</div>
</div>
</div>


    <div class="campus-life-area pt-100 pb-70">
        <div class="container">
            <div class="section-title">
                <h2>Student Life</h2>
                <h5>A Vibrant and Inclusive Learning Community</h5>
                <p style="text-align:justify">
                    At the UOL (Department of International Qualifications), we believe that learning extends far beyond the classroom. Our vibrant and inclusive student life is designed to enrich your educational journey, foster personal growth, and provide you with a global perspective that goes beyond textbooks. Here, you'll discover a supportive community where lifelong friendships are formed, and memories are made.
                </p>
            </div>
            <br/>
            <div class="row justify-content-center">
                <div class="col-lg-4 col-md-6">
                    <div class="single-campus-card">
                        <div class="img">
                            <a href="#"><img src="assets/images/student-life/student-life-1.jpg" alt="Image"/></a>
                        </div>
                        <div class="campus-content">
                            <a href="#"><h3>Diverse Student Body</h3></a>
                           <p>
                               One of the hallmarks of our department is the diverse student body that calls it home. 
                           </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-campus-card">
                        <div class="img">
                            <a href="#"><img src="assets/images/student-life/student-life-2.jpg" alt="Image"/></a>
                        </div>
                        <div class="campus-content">
                            <a href="#">
                                <h3>
                                    Student Societies
                                </h3>
                                <p>
                                    Joining a student Societies is a fantastic way to explore your interests, develop leadership ...
                                </p>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-campus-card">
                        <div class="img">
                            <a href="#"><img src="assets/images/student-life/student-life-3.jpg" alt="Image"/></a>
                        </div>
                        <div class="campus-content">
                            <a href="#"><h3>Cultural Exchange</h3></a>
                            <p>
                                Immerse yourself in a world of cultural exchange. We celebrate diversity through cultural ...
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-campus-card">
                        <div class="img">
                            <a href="#"><img src="assets/images/student-life/student-life-4.jpg" alt="Image"/></a>
                        </div>
                        <div class="campus-content">
                            <a href="#"><h3>Support Services</h3></a>
                            <p>
                                Your well-being is our priority. We offer a range of support services, including academic ...
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-campus-card">
                        <div class="img">
                            <a href="#"><img src="assets/images/student-life/student-life-5.jpg" alt="Image"/></a>
                        </div>
                        <div class="campus-content">
                            <a href="#">
                                <h3>
                                    Campus Facilities
                                </h3>
                                <p>Our state-of-the-art campus facilities are designed to enhance your learning experience. </p>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-campus-card">
                        <div class="img">
                            <a href="#"><img src="assets/images/student-life/student-life-6.jpg" alt="Image"/></a>
                        </div>
                        <div class="campus-content">
                            <a href="#"><h3>Social and Recreational Activities</h3></a>
                            <p>
                                Balance is key to a fulfilling student life. Join in on social and recreational activities ...
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-campus-card">
                        <div class="img">
                            <a href="#"><img src="assets/images/student-life/student-life-7.jpg" alt="Image"/></a>
                        </div>
                        <div class="campus-content">
                            <a href="#"><h3>Career Development</h3></a>
                            <p>
                                We understand that your ultimate goal is to embark on a successful career. 
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-campus-card">
                        <div class="img">
                            <a href="#"><img src="assets/images/student-life/student-life-8.jpg" alt="Image"/></a>
                        </div>
                        <div class="campus-content">
                            <a href="#"><h3>Alumni Network</h3></a>
                            <p>
                                Become part of a global network of alumni who have gone on to achieve great success ...
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6">
                    <div class="single-campus-card">
                        
                    </div>
                </div>
            </div>
        </div>
    </div>

    
    <!--footer-area start-->
    <uc1:UFooter runat="server" ID="UFooter" />
</body>
</html>
