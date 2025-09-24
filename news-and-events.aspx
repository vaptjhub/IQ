<%@ Page Language="C#" AutoEventWireup="true" CodeFile="news-and-events.aspx.cs" Inherits="news_and_events" %>

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
<h1>Events</h1>
<ul>
<li><a href="<%=ResolveUrl("home") %>">Home</a></li>
<li>News & Events</li>
</ul>
</div>
</div>
</div>

    <form id="form1" runat="server">
        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <div class="events-area pt-100 pb-70">
                    <div class="container">
                        <div class="row justify-content">
                            <asp:Repeater ID="Repeater1" runat="server">
                                <ItemTemplate>
                                    <div class="col-lg-4 col-md-6">
                                        <div class="single-events-card style-4">
                                            <div class="events-image">
                                                <a href="<%# Page.GetRouteUrl("NewsDetails", new {newsid = Eval("newsid")}) %>"><img src="images/news/title/<%# Eval("newsimage1")%>" alt="Image"/></a>
                                                <div class="date">
                                                    <span><%#Eval("newsdate", "{0:dd}")%></span>
                                                    <p><%#Eval("newsdate", "{0:MMM}")%></p>
                                                </div>
                                            </div>
                                            <div class="events-content">
                                                <div class="admin">
                                
                                                </div>
                                                <a href="<%# Page.GetRouteUrl("NewsDetails", new {newsid = Eval("newsid")}) %>"><h3> <%# Eval("newstitle")%></h3></a>
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <div class="more-health-care text-center">
                                <p>
                                <asp:Button ID="btnLoadMore" runat="server" CssClass="default-btn" Text="Load More Data" onclick="btnLoadMore_Click" />
                                </p>
                            </div>
                        
                        </div>
            
                    </div>
                </div>

            </ContentTemplate>
        </asp:UpdatePanel>
    </form>

    <!--footer-area start-->
    <uc1:UFooter runat="server" ID="UFooter" />
</body>
</html>
