<%@ Page Language="C#" AutoEventWireup="true" CodeFile="blogs.aspx.cs" Inherits="blogs" %>

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
    <title>IQ - Blogs</title>
</head>
<body>
<div class="navbar-area nav-bg-2">
    <uc1:UHeader runat="server" ID="UHeader" />
</div>

<div class="page-banner-area" style="background-image: url(assets/images/page-banner/news-and-events.jpg)">
<div class="container">
<div class="page-banner-content">
<h1>Blogs</h1>
<ul>
<li><a href="<%=ResolveUrl("home") %>">Home</a></li>
<li>blogs</li>
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
                                        <div class="single-health-care-card">
                                        <div class="img">
                                        <img src="images/blogs/title/<%# Eval("blogsimage1")%>" alt="Image">
                                        </div>
                                        <div class="health-care-content">
                                        <a href="<%# Page.GetRouteUrl("BlogsDetails", new {blogscustomtitle = Eval("blogscustomtitle").ToString()}) %>"><h3><%# Eval("blogstitle")%></h3></a>
                                        <p><%# Eval("blogsshortdescription")%></p>
                                        <a href="<%# Page.GetRouteUrl("BlogsDetails", new {blogscustomtitle = Eval("blogscustomtitle").ToString()}) %>" class="read-more-btn">Read More on blog<i class="flaticon-next"></i></a>
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