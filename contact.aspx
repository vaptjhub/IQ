<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

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
    <meta name="description" content=" If you require further assistance or guidance, please do not hesitate to contact us at the Department of International Qualifications." />
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
    <link rel="canonical" href="https://iq.uol.edu.pk/contact"/>
    <title>IQ - Contact Us</title>
</head>
<body>

    <div class="navbar-area nav-bg-2">
        <uc1:UHeader runat="server" ID="UHeader" />
    </div>


    <div class="page-banner-area" style="background-image: url(assets/images/page-banner/contact-us.jpg)">
        <div class="container">
            <div class="page-banner-content">
                <h1>Contact Us</h1>
                <ul>
                    <li><a href="<%=ResolveUrl("home") %>">Home</a></li>
                    <li>Contact</li>
                </ul>
            </div>
        </div>
    </div>


<div class="contact-us-area pt-100 pb-70">
<div class="container">
<div class="row">
<div class="col-lg-6">
    <iframe style="border: 0;" tabindex="0" src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d108987.47193894227!2d74.242077!3d31.390465!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x2c929ac91bf3c7dc!2sThe%20University%20Of%20Lahore!5e0!3m2!1sen!2sus!4v1590751386001!5m2!1sen!2sus" width="600" height="450" frameborder="0" allowfullscreen="allowfullscreen" aria-hidden="false"></iframe>
</div>
<div class="col-lg-6">
<div class="contact-and-address">
<h2>Let's Contact Us</h2>
<p>Ready to embark on your educational journey with us?</p>
    <p>Have questions or need assistance?</p>
    <p>Our friendly team at the University (Department of International Qualifications) is here to help.</p>
<div class="contact-and-address-content">
<div class="row">
<div class="col-lg-6 col-md-6">
<div class="contact-card" style="min-height:300px;">
<div style="padding-bottom:15px;">
    <img src="assets/images/whatsapp.png" />
</div>
<h4>Contact</h4>
<p>Mobile: <a href="https://wa.me/03204704847" target="_blank">0320 470 4847</a></p>
<p>Phone: (042) 111 865 865 <br />Ext: 5262</p>
<p>E-Mail: info@iq.uol.edu.pk</p>
</div>
</div>
<div class="col-lg-6 col-md-6">
<div class="contact-card" style="min-height:300px;">
<div class="icon">
<i class="ri-map-pin-line"></i>
</div>
<h4>Address</h4>
<p>1 – KM Defence Road</p>
<p>The University fo Lahore <br /> Lahore</p>
</div>
</div>
</div>
</div>
<div class="social-media">
<h3>Social Media</h3>
<p></p>
<ul>
    <li><a href="https://www.facebook.com/UOLInternationalQualifications" target="_blank"><i class="flaticon-facebook"></i></a></li>
    <li><a href="https://www.youtube.com/@UOLInternationalQualifications" target="_blank"><i class="flaticon-web-development"></i></a></li>
    <li><a href="https://twitter.com/Uol_iQ" target="_blank"><i class="flaticon-twitter"></i></a></li>
    <li><a href="https://instagram.com/uolinternationalqualifications?igshid=YTQwZjQ0NmI0OA==" target="_blank"><i class="flaticon-instagram"></i></a></li>
    <li><a href="https://www.linkedin.com/company/uoliqofficial/" target="_blank"><i class="flaticon-linkedin"></i></a></li>
</ul>
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
