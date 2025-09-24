<%@ Page Language="C#" AutoEventWireup="true" CodeFile="what-is-hnd.aspx.cs" Inherits="what_is_hnd" %>

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
    <title>IQ - What is HND</title>
</head>
<body>

<div class="navbar-area nav-bg-2">
    <uc1:UHeader runat="server" ID="UHeader" />
</div>

<div class="page-banner-area" style="background-image: url(assets/images/page-banner/news-and-events.jpg)">
<div class="container">
<div class="page-banner-content">
<h1>What is HDN</h1>
<ul>
<li><a href="<%=ResolveUrl("home") %>">Home</a></li>
<li>What is HDN</li>
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
                            <h2>What is HND</h2>
                            <p>
                                Higher National Diploma (HND) HND Course is a vocational, work-related course provided by colleges and universities in the United Kingdom, and accredited by Pearson Edexcel. They are level 5 qualifications in a wide range of sectors, such as business, hospitality, healthcare etc.
                            </p>
                            <p>
                                If you decide to study full-time, the course will last 2 years, with 21 hours a week. You can also opt for a part-time HND course, which will take 4 years to complete.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
    <div id="who"></div>
        <div class="academics-details-area pt-100 pb-70">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="academics-details">
                            <div class="prepare-exam">
                                <div class="row">
                                    <div class="col-lg-12 col-md-12">
                                        <div class="exam-card">
                                            <h3>Exciting Features of HND Courses</h3>
                                            <p>
                                                HND qualifications come with an embedded Higher National Certificate (HNC), which is a level 4 qualification itself.<br/>
                                                As all the HND courses are Pearson BTEC accredited, you will gain professional recognition and a progression route onto a degree.<br/>
                                                HND courses are equivalent to the first two years of a 3-year degree with honors programme. After completing the HND, you can go on and just enroll for one additional year of study (commonly known as top-up) full degree programme. You can choose that with us, or you can transfer your credits to another university if you wish so.<br/>
                                                If you do not want study any further, you can directly enter the job market with all the expertise you have gained throughout your HND course.<br/>
                                                Viewed by employers as a vocational, focused on practical learning-by-doing approach, an HND course prepares you for a wide range of careers.<br/>
                                                Accredited by Pearson BTEC HNDs nationally and internationally recognised qualifications.<br/>
                                                Financial help and student funding are available to help with your fees for the educational programme.<br/>
                                                HNC is valued for 120+ credit points on the completion of 8 units. HND is valued for 240 credit points with the completion of at least 15 units. In terms of the number of credit hours.<br/>
                                                An HND programme teaches you specific skills and knowledge, and you’ll learn how to apply them through practical assignments and projects completed throughout the course. Foundation courses, in comparison, are much more academic. Achieving a foundation degree will demonstrate that you have acquired knowledge at a high academic level. In contrast, HNDs will also show that you can put the knowledge to effective use in the workplace. That is why the HND is of such exceptional value to employees and professional bodies worldwide.
                                            </p>
                                            
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12">
                                        <div class="exam-card">
                                            <h3>Perks of Choosing an HND Course</h3>
                                            <p>
                                                It will give you a recognised qualification helpful you in terms of job opportunities.<br/>
                                                It is efficient and offers opportunities for valuable work experience.<br/>
                                                By the time you finish this course, you will have the knowledge, practice and enthusiasm to get into the real professional world.<br/>
                                                You will become a critical thinker.<br/>
                                                You will be surrounded by people who love what they are doing, encouraging you to improve your potential and reach for more.<br/>
                                                You will enjoy learning because vocational skills will include both practical skills and academic skills.<br/>
                                                The opportunities in it are endless because HND gives you real skills, real experience and real qualifications.
                                            </p>
                                        </div>
                                    </div>
                                    <div class="col-lg-12 col-md-12">
                                        <div class="exam-card">
                                            <h3>Why Choose Mont Rose College for Your HND Studies</h3>
                                            <p>
                                                We are dedicated to providing the best education to the students, with our syllabus career-focused.<br/>
                                                We have the best of academic staff, who are well experienced in their respective fields.<br/>
                                                We have strong links with employers, and once you complete the course we will help you with your future employability.
                                            </p>
                                        </div>
                                    </div>

                                </div>
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
