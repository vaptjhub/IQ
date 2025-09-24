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
    <%--<li class="nav-item"><a href="home" class="nav-link">Home</a></li>--%>
    <%--<li class="nav-item"><a href="academics" class="nav-link">Academics</a></li>--%>
    <%--<li class="nav-item">
        <a href="#" class="nav-link dropdown-toggle">Academics</a>
        <ul class="dropdown-menu">
            <li class="nav-item">
                <a href="#" class="nav-link dropdown-toggle">School of Management</a>
                <ul class="dropdown-menu">
                    <li class="nav-item"><a href="bsc-(hons)-business-management" class="nav-link">BSc (Hons) Business Management</a></li>
                    <li class="nav-item"><a href="bsc-(hons)-business-management-level6" class="nav-link">BSc (Hons) Business Management (Level 6)</a></li>
                </ul>
            </li>
             <li class="nav-item">
                <a href="#" class="nav-link dropdown-toggle">School of CS & IT</a>
                <ul class="dropdown-menu">
                    <li class="nav-item"><a href="bsc-(hons)-computer-science" class="nav-link">BSc (Hons) Computer Science</a></li>
                    <li class="nav-item"><a href="bsc-(hons)-computer-science-level6" class="nav-link">BSc (Hons) Computer Science (Level 6)</a></li>
                </ul>
             </li>
                <li class="nav-item"><a href="#" class="nav-link dropdown-toggle">School of Allied Health Sciences</a>
                    <ul class="dropdown-menu">
                        <li class="nav-item"><a href="bsc-(hons)-nursing" class="nav-link">BSc (Hons) Nursing</a></li>
                        <li class="nav-item"><a href="bsc-(hons)-health-and-social-care" class="nav-link">BSc (Hons) Health & Social Care</a></li>
                        <li class="nav-item"><a href="bsc-(hons)-health-and-social-care-level6" class="nav-link">BSc (Hons) Health & Social Care (Level 6)</a></li>
                    </ul>
                </li>
                    <li class="nav-item"><a href="#" class="nav-link dropdown-toggle">School of Law</a>
                    <ul class="dropdown-menu">
                        <li class="nav-item"><a href="llb-(hons)" class="nav-link">LLB (Hons)</a></li>
                        <li class="nav-item"><a href="llb-(hons)-level6" class="nav-link">LLB (Hons) Level 6</a></li>
                    </ul>
                </li>
                <li class="nav-item"><a href="#" class="nav-link dropdown-toggle">School of Social Sciences</a>
                <ul class="dropdown-menu">
                    <li class="nav-item"><a href="bsc-(hons)-psychology" class="nav-link">BSc (Hons) Psychology</a></li>
                </ul>
            </li>
        </ul>
    </li>--%>
    <li class="nav-item"><a href="admissions" class="nav-link">Admissions</a></li>
    <li class="nav-item"><a href="student-support" class="nav-link">Student Support</a></li>
    <li class="nav-item"><a href="about" class="nav-link">About</a></li>
</ul>
<div class="others-options">
<div class="icon">
    <%--<a href="downloads/IQ Prospectus 25-26.pdf" class="default-btn btn" style="background-color:#225f2a" target="_blank">Prospectus <i class="flaticon-next"></i></a>--%>
    <a href="https://admissions.uol.edu.pk" class="default-btn btn" target="_blank">Apply Now <i class="flaticon-next"></i></a>
</div>
</div>
</div>
</nav>
</div>
</div>