<%@ Page Language="C#" AutoEventWireup="true" CodeFile="blogsdetails.aspx.cs" Inherits="blogsdetails" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <base href="/"/>
    <meta charset="UTF-8"/>
    
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="robots" content="index, follow"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <%=pagedescriptiontag %>
    <%=pagekeywordstag %>
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
    <link rel="canonical" <%=pagecustomurl %>/>
    <title><%=pagetitletag %></title>
    
</head>
<body>

<div class="navbar-area nav-bg-2">
<div class="mobile-responsive-nav">
<div class="container">
<div class="mobile-responsive-menu">
<div class="logo">
<a href="<%=ResolveUrl("home") %>">
<img src="../../assets/images/logo.png" class="main-logo" alt="logo"/>
</a>
</div>
</div>
</div>
</div>
<div class="desktop-nav">
<div class="container-fluid">
<nav class="navbar navbar-expand-md navbar-light">
<a class="navbar-brand" href="<%=ResolveUrl("home") %>">
<img src="../../assets/images/logo.png" alt="logo"/>
</a>
<div class="collapse navbar-collapse mean-menu" id="navbarSupportedContent">
<ul class="navbar-nav ms-auto">
    <li class="nav-item"><a href="#" class="nav-link dropdown-toggle">About</a>
        <ul class="dropdown-menu">
            <li class="nav-item">
                <a href="<%=ResolveUrl("about") %>" class="nav-link">Introduction</a>
            </li>
            <li class="nav-item">
                <a href="<%=ResolveUrl("vision-and-mission") %>" class="nav-link">Vision & Mission Statement</a>
            </li>
            <li class="nav-item">
                <a href="<%=ResolveUrl("hod-message") %>" class="nav-link">HOD Message</a>
            </li>
        </ul>
    </li>
    <li class="nav-item"><a href="#" class="nav-link dropdown-toggle">Programmes</a>
        <ul class="dropdown-menu">
            <li class="nav-item">
                <a href="<%=ResolveUrl("hnd-business") %>" class="nav-link">HND Business</a>
            </li>
            <li class="nav-item">
                <a href="<%=ResolveUrl("hnd-computing") %>" class="nav-link">HND Computing</a>
            </li>
            <li class="nav-item">
                <a href="<%=ResolveUrl("hnd-art-and-design") %>" class="nav-link">HND Art and Design</a>
            </li>
            <li class="nav-item">
                <a href="https://pbh.uol.edu.pk/course/health-social-care/" target="_blank" class="nav-link">Health & Social Care</a>
            </li>
            <li class="nav-item">
                <a href="https://lbs.uol.edu.pk/hospitality-management/" target="_blank" class="nav-link">Hospitality Management</a>
            </li>
            <li class="nav-item">
                <a href="https://pbh.uol.edu.pk/course/social-community-work/" target="_blank" class="nav-link">Social & Community Work</a>
            </li>
        </ul>
    </li>
    <li class="nav-item"><a href="<%=ResolveUrl("student-life") %>" class="nav-link">Student Life</a></li>
    <li class="nav-item"><a href="<%=ResolveUrl("news-and-events") %>" class="nav-link">News & Events</a></li>
    <li class="nav-item"><a href="<%=ResolveUrl("blogs") %>" class="nav-link">Blogs</a></li>
    <li class="nav-item"><a href="<%=ResolveUrl("contact") %>" class="nav-link">Contact Us</a></li>
</ul>
<div class="others-options">
<div class="icon">
    <a href="https://uol.edu.pk/admissions/" class="default-btn btn" target="_blank">Apply Now <i class="flaticon-next"></i></a>
</div>
</div>
</div>
</nav>
</div>
</div>
</div>





<div class="page-banner-area" style="background-image: url(../../assets/images/page-banner/news-and-events.jpg)">
<div class="container">
<div class="page-banner-content">
<h1><%=pagetitletag %></h1>
<ul>
<li><a href="<%=ResolveUrl("home") %>">Home</a></li>
<li>Blog Details</li>
</ul>
</div>
</div>
</div>


<div class="news-details-area pt-100 pb-70">
<div class="container">
<div class="row">
<div class="col-lg-12">
<div class="news-details">

    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate>
            <div class="news-simple-card">
                <img  src="../../images/blogs/large/<%# Eval("blogsimage1")%>" alt="<%=image1tag %>" style="width:80%"/>
                <div class="list">
                    <ul>
                        <li><i class="flaticon-clock"></i><%#Eval("blogsdate", "{0:dd/M/yyyy}")%></li>
                    </ul>
                </div>
                <h3><%# Eval("blogstitle")%></h3>
                <%# Eval("blogslongdescription")%>
            </div>

            

            
        </ItemTemplate>

    </asp:Repeater>
    <div class="blog-img-and-content">
                <div class="row">

                    <%--<%if (image1.ToString() != "")
                      { %>
                    <div class="col-lg-4 col-md-6">
                        <a href="../../images/blogs/large/<%=image1%>" target="_blank"><img src="../../images/blogs/title/<%=image1%>" alt="<%=image1tag %>"/></a>
                    </div>
                    <% } %>--%>
                    <%if (image2.ToString() != "")
                      { %>
                    <div class="col-lg-4 col-md-6">
                        <a href="../../images/blogs/large/<%=image2%>" target="_blank"><img src="../../images/blogs/large/<%=image2%>" alt="<%=image2tag %>"/></a>
                    </div>
                     <% } %>
                    <%if (image3.ToString() != "")
                      { %>
                    <div class="col-lg-4 col-md-6">
                        <a href="../../images/blogs/large/<%=image3%>" target="_blank"><img src="../../images/blogs/large/<%=image3%>" alt="<%=image3tag %>"/></a>
                    </div>
                    <% } %>
                    <%if (image4.ToString() != "")
                      { %>
                    <div class="col-lg-4 col-md-6">
                        <a href="../../images/blogs/large/<%=image4%>" target="_blank"><img src="../../images/blogs/large/<%=image4%>" alt="<%=image4tag %>"/></a>
                    </div>
                    <% } %>
                    <%if (image5.ToString() != "")
                      { %>
                    <div class="col-lg-4 col-md-6">
                        <a href="../../images/blogs/large/<%=image5%>" target="_blank"><img src="../../images/blogs/large/<%=image5%>" alt="<%=image5tag %>"/></a>
                    </div>
                    <% } %>
                    <%if (image6.ToString() != "")
                      { %>
                    <div class="col-lg-4 col-md-6">
                        <a href="../../images/blogs/large/<%=image6%>" target="_blank"><img src="../../images/blogs/large/<%=image6%>" alt="<%=image6tag %>"/></a>
                    </div>
                    <% } %>
                </div>
            
            </div>

</div>
</div>
</div>
</div>
</div>


<div class="footer-area pt-100 pb-70">
<div class="container">
<div class="row">
<div class="col-lg-4 col-sm-6">
<div class="footer-logo-area">
<a href="<%=ResolveUrl("home") %>"><img src="../../assets/images/logo.png" alt="Image"/></a>
<p>Welcome to Department of International Qualifications, your gateway to a future brimming with career possibilities.</p>
<div class="contact-list">
<ul>
<li><a href="#">+92 (0)42 111 865 865 Ext. 5262
</a></li>
<li><a href="#">info@iq.uol.edu.pk</a></li>
</ul>
</div>
</div>
</div>
    <div class="col-lg-2 col-sm-4">
        <div class="footer-widjet">
            
        </div>
    </div>
<div class="col-lg-3 col-sm-6">
<div class="footer-widjet">
<div class="list">
<ul>
<li><a href="https://uol.edu.pk/wp-content/uploads/2021/03/Student-handbook-for-web-compressed.pdf" target="_blank">Student Handbook</a></li>
<li><a href="https://uol.edu.pk/wp-content/uploads/2022/07/Student-Code-of-Conduct-and-Disciplinary.pdf" target="_blank">Student Code of Conduct</a></li>
<li><a href="https://uol.edu.pk/services/" target="_blank">Services</a></li>
</ul>
</div>
</div>
</div>
<div class="col-lg-3 col-sm-6">
<div class="footer-widjet">
<div class="list">
<ul>
<li><a href="<%=ResolveUrl("about#who") %>">Who We Are</a></li>
<li><a href="<%=ResolveUrl("about#what") %>">What We Offer</a></li>
<li><a href="<%=ResolveUrl("about#why") %>">Why Choose Us</a></li>
</ul>
</div>
</div>
</div>

</div>
<div class="shape">
<img src="../../assets/images/shape-1.png" alt="Image"/>
</div>
</div>
</div>


<div class="copyright-area">
<div class="container">
<div class="copyright">
<div class="row">
<div class="col-lg-6 col-md-4">
<div class="social-content">
<ul>
<li><span>Follow Us On</span></li>
<li><a href="#" target="_blank"><i class="ri-facebook-fill"></i></a></li>
<li><a href="https://twitter.com/Uol_iQ" target="_blank"><i class="ri-twitter-fill"></i></a></li>
<li><a href="https://instagram.com/uolinternationalqualifications?igshid=YTQwZjQ0NmI0OA==" target="_blank"><i class="ri-instagram-line"></i></a></li>
<li><a href="https://www.linkedin.com/company/uoliqofficial/" target="_blank"><i class="ri-linkedin-fill"></i></a></li>
</ul>
</div>
</div>
<div class="col-lg-6 col-md-8">
<div class="copy">
<p>© 2024 All rights reserved | <a href="https://uol.edu.pk" target="_blank" style="color:green"> The University of Lahore </a></p>
</div>
</div>
</div>
</div>
</div>
</div>


<div class="go-top">
<i class="ri-arrow-up-s-line"></i>
<i class="ri-arrow-up-s-line"></i>
</div>


<script data-cfasync="false" src="../../cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
<script src="../../assets/js/jquery.min.js"></script>
<script src="../../assets/js/bootstrap.bundle.min.js"></script>
<script src="../../assets/js/jquery.meanmenu.js"></script>
<script src="../../assets/js/owl.carousel.min.js"></script>
<script src="../../assets/js/carousel-thumbs.min.js"></script>
<script src="../../assets/js/jquery.magnific-popup.js"></script>
<script src="../../assets/js/aos.js"></script>
<script src="../../assets/js/odometer.min.js"></script>
<script src="../../assets/js/appear.min.js"></script>
<script src="../../assets/js/form-validator.min.js"></script>
<script src="../../assets/js/contact-form-script.js"></script>
<script src="../../assets/js/ajaxchimp.min.js"></script>
<script src="../../assets/js/custom.js"></script>


</body>
</html>

