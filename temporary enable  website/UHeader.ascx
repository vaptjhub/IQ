<%@ Control Language="C#" AutoEventWireup="true" CodeFile="UHeader.ascx.cs" Inherits="UHeader" %>
<div class="mobile-responsive-nav">
<div class="container">
<div class="mobile-responsive-menu">
<div class="logo">
<a href="<%=ResolveUrl("home") %>">
<img src="assets/images/logo.png" class="main-logo" alt="logo"/>
</a>
</div>
</div>
</div>
</div>
<div class="desktop-nav">
<div class="container-fluid">
<nav class="navbar navbar-expand-md navbar-light">
<a class="navbar-brand" href="<%=ResolveUrl("home") %>">
<img src="assets/images/logo.png" alt="logo">
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
    <li class="nav-item"><a href="certifications" class="nav-link">Certifications</a></li>
    <li class="nav-item"><a href="#" class="nav-link dropdown-toggle">Fee Structure</a>
        <ul class="dropdown-menu">
            <li class="nav-item"><a href="downloads/Fee-HND-Business.pdf" class="nav-link" target="_blank">HND Business</a></li>
            <li class="nav-item"><a href="downloads/Fee-HND-Computing.pdf" class="nav-link" target="_blank">HND Computing</a></li>
            <li class="nav-item"><a href="downloads/Fee-HND-Art-and-Design.pdf" class="nav-link" target="_blank">HND Art and Design</a></li>
            <li class="nav-item"><a href="downloads/Fee-HND-Health-and-Social-Care.pdf" class="nav-link" target="_blank">HND Health & Social Care</a></li>
            <li class="nav-item"><a href="downloads/Fee-HND-Hospitality-Management.pdf" class="nav-link" target="_blank">HND Hospitality Management</a></li>
            <li class="nav-item"><a href="downloads/Fee-HND-Social-and-Community-Work.pdf" class="nav-link" target="_blank">HND Social & Community Work</a></li>
        </ul>
    </li>
    <%--<li class="nav-item"><a href="<%=ResolveUrl("student-life") %>" class="nav-link">Student Life</a></li>--%>
    <li class="nav-item"><a href="<%=ResolveUrl("news-and-events") %>" class="nav-link">News & Events</a></li>
    <%--<li class="nav-item"><a href="<%=ResolveUrl("blogs") %>" class="nav-link">Blogs</a></li>--%>
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