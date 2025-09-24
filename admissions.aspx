<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admissions.aspx.cs" Inherits="admissions" %>

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
    <link rel="canonical" href="https://iq.uol.edu.pk/blogs"/>
    <title>Admissions</title>
</head>
<body>
<div class="navbar-area nav-bg-2">
    <uc1:UHeader runat="server" ID="UHeader" />
</div>

<div class="page-banner-area" style="background-image: url(assets/images/page-banner/admissions.jpg)">
<div class="container">
<div class="page-banner-content">
<h1>Admissions</h1>
<ul>
<li><a href="home">home</a></li>
<li>admissions</li>
</ul>
</div>
</div>
</div>

    
<div class="graduate-admission pt-100 pb-70">
<div class="container">
<div class="row">
<div class="col-lg-8">
<div class="how-to-apply">
<h2>Why UOL + Plymouth?</h2>
<p> Benefit from dual accreditation, global exposure, and strong employability outcomes </p>
<div class="apply-list">
<%--<div class="row">
<div class="col-lg-6 col-md-6">
<ul>
<li><i class="ri-checkbox-circle-line"></i>Start Online Submission</li>
<li><i class="ri-checkbox-circle-line"></i>Submit The Form</li>
<li><i class="ri-checkbox-circle-line"></i>Review The Submission</li>
</ul>
</div>
<div class="col-lg-6 col-md-6">
<ul>
<li><i class="ri-checkbox-circle-line"></i>Gather Necessary Documents</li>
<li><i class="ri-checkbox-circle-line"></i>Interviewing Process</li>
<li><i class="ri-checkbox-circle-line"></i>Last Decision</li>
</ul>
</div>
</div>--%>
</div>
<div class="submit">
<h3>Entry Requirements</h3>
<div class="overview">
    <div class="overview-box">
        <h4>Undergraduate</h4>
        <p>12 years of schooling with 45–60% marks (varies by program)</p>
    </div>
    <div class="overview-box">
        <h4>Top‑Up</h4>
        <p>HNC & HND completion for Level 6 courses</p>
    </div>
    <div class="overview-box">
        <h4>English</h4>
        <p>IBCC equivalence or A‑Level/IELTS where applicable.</p>
    </div>

</div>
</div>
<div class="financial">
<h3>How to Apply</h3>
    <div class="overview">
    <div class="overview-box">
        <h4><a href="https://admissions.uol.edu.pk" target="_blank">Online Form</a></h4>
    </div>
    <div class="overview-box">
        <h4>Document Upload (Transcripts, Equivalence, Test Scores)</h4>
    </div>
    <div class="overview-box">
        <h4>Interview/Assessment</h4>
    </div>

</div>
</div>
    <hr />
    <br />
<h3>Scholarships & Financial Aid</h3>
    <p>
        Merit‑based and need‑based awards; apply concurrently with admission.
    </p>
    <h3>International Students</h3>
    <p>
         Visa guidance, pre‑departure briefing, and on‑campus support.
    </p>
</div>
</div>
<div class="col-lg-4">
<div class="additional-information">
<h3>Important Dates & Fees</h3>
<div class="list">
<ul>
<li><a href="#">Application opens</a></li>
<li><a href="#">Deadline</a></li>
<li><a href="#">Test/Interview</a></li>
<li><a href="#">Download fee schedule </a></li>
</ul>
</div>
</div>
<div class="additional-information">
<h3>Contact Admissions</h3>
    <p>
         call (+92) 42 111 865 865.
    </p>

</div>
</div>
</div>
</div>
</div>


    <!--footer-area start-->
    <uc1:UFooter runat="server" ID="UFooter" />
</body>
</html>
