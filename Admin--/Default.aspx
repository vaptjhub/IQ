<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="admin_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" data-layout="horizontal" data-topbar="dark" data-sidebar="dark" data-sidebar-size="lg" data-sidebar-image="none" data-preloader="enable">
<head>
	<title>IQ | Admin</title>
	<meta charset="UTF-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="shortcut icon" href="assets/images/favicon.ico"/>
    <script src="assets/js/layout.js"></script>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/app.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/custom.min.css" rel="stylesheet" type="text/css" />
</head>
    <body>
    <div class="auth-page-wrapper pt-5">
        <!-- auth page bg -->
        <div class="auth-one-bg-position auth-one-bg" id="auth-particles">
            <div class="bg-overlay"></div>
            <div class="shape">
                <svg xmlns="http://www.w3.org/2000/svg" version="1.1" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 1440 120">
                    <path d="M 0,36 C 144,53.6 432,123.2 720,124 C 1008,124.8 1296,56.8 1440,40L1440 140L0 140z"></path>
                </svg>
            </div>
        </div>
        <!-- auth page content -->
        <div class="auth-page-content">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="text-center mt-sm-5 mb-4 text-white-50">
                            <div>
                                <a href="<%=ResolveUrl("home") %>" class="d-inline-block auth-logo">
                                    <img src="assets/images/logo-light.png" alt=""/>
                                </a>
                            </div>
                            <%--<p class="mt-3 fs-15 fw-medium">Content Management System</p>--%>
                        </div>
                    </div>
                </div>
                <!-- end row -->
                <div class="row justify-content-center">
                    <div class="col-md-8 col-lg-6 col-xl-5">
                        <div class="card mt-4">
                            <div class="card-body p-4">
                                <div class="text-center mt-2">
                                    <h5 class="text-primary">Welcome</h5>
                                    <p class="text-muted">Sign in to continue</p>
                                </div>
                                <%=displaymessage  %>
                                <div class="p-2 mt-4">
                                    <form id="form1" runat="server">
                                        <div class="mb-3">
                                            <label for="username" class="form-label">E-Mail</label>
                                            <asp:TextBox ID="txtemail" CssClass="form-control" runat="server" required></asp:TextBox>
                                        </div>
                                        <div class="mb-3">
                                            <div class="float-end">
                                                
                                            </div>
                                            <label class="form-label" for="password-input">Password</label>
                                            <div class="position-relative auth-pass-inputgroup mb-3">
                                                <asp:TextBox ID="txtpassword" TextMode="Password" runat="server" CssClass="form-control" required></asp:TextBox>
                                                <button class="btn btn-link position-absolute end-0 top-0 text-decoration-none text-muted password-addon" type="button" id="password-addon"></button>
                                            </div>
                                        </div>
                                        <div class="form-check">
                                            <asp:Image ID="imgCaptcha" runat="server" ImageUrl="captchaimage.aspx" />
                                            <asp:TextBox ID="txtCaptcha" runat="server" />
                                        </div>
                                        <div class="mt-4">
                                            <asp:Button ID="cmdsubmit" CssClass="btn btn-success w-100" OnClick="cmdlogin_Click" runat="server" Text="Sign in" />
                                        </div>
                                    </form>
                                </div>
                            </div>
                            <!-- end card body -->
                        </div>
                        <!-- end card -->
                        <div class="mt-4 text-center">
                            <p class="mb-0">Don't have an account ? <span class="fw-semibold text-primary text-decoration-underline"> Please Contact Administrator </span> </p>
                        </div>
                    </div>
                </div>
                <!-- end row -->
            </div>
            <!-- end container -->
        </div>
        <!-- end auth page content -->
        <!-- footer -->
        <footer class="footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="text-center">
                            <p class="mb-0 text-muted">
                                &copy;
                                <script>document.write(new Date().getFullYear())</script> The University of Lahore
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- end Footer -->
    </div>
    <!-- end auth-page-wrapper -->
    <!-- JAVASCRIPT -->
    <script src="assets/libs/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/libs/simplebar/simplebar.min.js"></script>
    <script src="assets/libs/node-waves/waves.min.js"></script>
    <script src="assets/libs/feather-icons/feather.min.js"></script>
    <script src="assets/js/pages/plugins/lord-icon-2.1.0.js"></script>
    <script src="assets/js/plugins.js"></script>
    <!-- particles js -->
    <script src="assets/libs/particles.js/particles.js"></script>
    <!-- particles app js -->
    <script src="assets/js/pages/particles.app.js"></script>
    <!-- password-addon init -->
    <script src="assets/js/pages/password-addon.init.js"></script>
</body>

</html>