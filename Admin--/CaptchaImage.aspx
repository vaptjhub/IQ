<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CaptchaImage.aspx.cs" Inherits="CaptchaImage" %>
<%@ Import Namespace="System.Drawing" %>
<%@ Import Namespace="System.Drawing.Imaging" %>
<%@ Import Namespace="System.Drawing.Drawing2D" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script runat="server">
        protected void Page_Load(object sender, EventArgs e)
        {
            string captcha = GenerateRandomCode(5);
            Session["Captcha"] = captcha;

            Bitmap bmp = new Bitmap(150, 50);
            Graphics g = Graphics.FromImage(bmp);
            g.Clear(Color.White);
            g.DrawString(captcha, new Font("Arial", 24), Brushes.Black, 10, 10);

            Response.ContentType = "image/jpeg";
            bmp.Save(Response.OutputStream, ImageFormat.Jpeg);
            bmp.Dispose();
        }

        private string GenerateRandomCode(int length)
        {
            string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            Random rand = new Random();
            return new string(Enumerable.Repeat(chars, length)
                .Select(s => s[rand.Next(s.Length)]).ToArray());
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
