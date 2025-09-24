<%@ Page Language="C#" AutoEventWireup="true" CodeFile="news.aspx.cs" Inherits="news" %>

<%@ Register Src="~/UFooter.ascx" TagPrefix="uc1" TagName="UFooter" %>
<%@ Register Src="~/UHeader.ascx" TagPrefix="uc1" TagName="UHeader" %>



<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
	<meta http-equiv="x-ua-compatible" content="ie=edge" />
	<meta name="keywords" content=""/>
	<meta name="description" content=""/>
	<title>ITS - News & Events</title>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<link rel="shortcut icon" type="image/x-icon" href="img/favicon.png" />
	<!-- Place favicon.ico in the root directory -->

	<!-- CSS here -->
    <link rel="stylesheet" href="css/bootstrap.min.css" />
    <link rel="stylesheet" href="css/owl.carousel.min.css" />
    <link rel="stylesheet" href="css/animate.css" />
    <link rel="stylesheet" href="css/magnific-popup.css" />
    <link rel="stylesheet" href="css/all.min.css" />
    <link rel="stylesheet" href="css/metisMenu.css" />
    <link rel="stylesheet" href="css/nice-select.css" />
    <link rel="stylesheet" href="css/spacing.css" />
    <link rel="stylesheet" href="css/main.css" />
</head>
<body>
    <form id="form1" runat="server">
    <!--[if lte IE 9]>
      <p class="browserupgrade">
        You are using an <strong>outdated</strong> browser. Please
        <a href="https://browsehappy.com/">upgrade your browser</a> to improve
        your experience and security.
      </p>
    <![endif]-->

	<!-- Add your site or application content here -->
	<!-- preloader -->
	<div id="preloader">
		<div class="preloader">
			<span></span>
			<span></span>
		</div>
	</div>
	<!-- preloader end  -->
	<!-- header-area start -->
        <uc1:UHeader runat="server" ID="UHeader" />
	<!-- header-area end -->

    
	<div class="body-overlay"></div>
	<!-- slide-bar end -->

	<main>
		<!--page-title-area start-->
        
        
		<section class="page-title-area title-area3" style="background-image: url(img/page-title/page-title-bg3.jpg);">
			<div class="container">
				<div class="row align-items-center pt-140 pt-xs-60">
					<div class="col-lg-8 col-md-7">
						<div class="page-title-wrapper text-start">
							<p class="fs-18 mb-1 text-heding1">News</p>
							<h2 class="page-title text-heding1">News & Events</h2>
						</div>
					</div>
					<div class="col-lg-4 col-md-5 text-md-end">
						<ul class="breadcrumb list-none breadcrumb-bg">
							<li><a href="index.html">Home</a></li>
							<li class="active text-heding fw-bold" aria-current="page">News & Events</li>
						</ul>
					</div>
				</div>
			</div>
		</section>
		<!--page-title-area end-->

        <!--services-area start-->
        <section class="news-feed-area pt-120 pb-75 pt-md-60 pb-md-15 pt-xs-50 pb-xs-10">
            <div class="container">
                <div class="row mb-15">
                    <div class="col-lg-12 pe-xl-0">
                        <div class="news-left">
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <div class="blogs blog-4 mb-40">
                                        <div class="blog__thumb mb-55">
                                            <a href="<%# Page.GetRouteUrl("NewsDetails", new {newsid = Eval("newsid")}) %>">
                                                <img class="img-fluid" src="images/news/title/<%# Eval("newsimage1")%>" alt="">
                                            </a>
                                            <div class="tag"><%# Eval("newscategory")%></div>
                                        </div>
                                        <div class="blog-content">
                                            <h3>
                                                <a class="blog-title4" href="<%# Page.GetRouteUrl("NewsDetails", new {newsid = Eval("newsid")}) %>">
                                                    <%# Eval("newstitle")%>
                                                </a>
                                            </h3>
                                            <p>
                                                <%# Eval("newsshortdescription")%>
                                            </p>
                                            <div class="blogs__meta">
                                                <span><i class="fal fa-calendar-alt"></i> <%#Eval("newsdate", "{0:dd/M/yyyy}")%></span>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--services-area end-->


	</main>
	<!--footer-area start-->
        <uc1:UFooter runat="server" ID="UFooter" />
	<!--footer-area end-->

	
    </form>
</body>
</html>
