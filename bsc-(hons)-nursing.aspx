<%@ Page Language="C#" AutoEventWireup="true" CodeFile="bsc-(hons)-nursing.aspx.cs" Inherits="bsc__hons__nursing" %>

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
    <title>BSc (Hons) Nursing</title>
</head>
<body>


<div class="navbar-area nav-bg-2">
    <uc1:UHeader runat="server" ID="UHeader" />
</div>


<div class="page-banner-area" style="background-image: url(assets/images/page-banner/news-and-events.jpg)">
<div class="container">
<div class="page-banner-content">
<h1>BSc (Hons) Nursing</h1>
<ul>
<li><a href="home">home</a></li>
<li>academics</li>
</ul>
</div>
</div>
</div>


<div class="courses-details-area pt-100 pb-70">
<div class="container">
<div class="row">
<div class="col-lg-8">
<div class="courses-details">
<div class="courses-card">
<h2>BSc (Hons) Nursing</h2>
<div class="img">
<img src="assets/images/academics/bsc-(hons)-nursing.jpg" alt="Image"/>
</div>
    <h2>Introduction & Description</h2>
    <p>A dynamic UOL–Plymouth partnership combining evidence‑based UK curriculum with Lahore’s facilities, including 3000 hrs of clinical placements and simulation suites</p>
</div>

    <div class="overview">
        <div class="learn">
            <h3>Experience</h3>
            <p>
                Project‑based learning from Day 1, agile methodology, expert‑led workshops, and mentorship; immersive placements at ULTH, SMC and beyond
            </p>
        </div>
        <div class="learn">
            <h3>Career Paths</h3>
            <p>
                NMC/PNMC‑eligible Registered Nurse roles in hospitals, community, research, education, advanced practice in Pakistan, Middle East, Europe and beyond
            </p>
        </div>
    </div>


</div>
</div>
<div class="col-lg-4">
    <div class="enroll-courses">
    <div class="list">
    <ul>
    <li><span>Duration :</span>4 years</li>
    <li><span>Semesters :</span>8</li>
    <li><span>Credits :</span>480</li>
    </ul>
    </div>
    <a href="downloads/Admission Guidee School of AHS.pdf" target="_blank" class="default-btn btn">Admission Guide</a>
    </div>
    <%--<div class="enroll-courses">
    <div class="list">
        <h2>Recognised by PNMC</h2>
        <p>
            Entry: ≥ 50% in FSc (Pre‑Medical) with Biology
        </p>
    
    </div>
    </div>--%>
</div>
</div>
</div>
</div>

<uc1:UFooter runat="server" ID="UFooter" />

</body>
</html>
