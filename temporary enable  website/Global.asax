<%@ Application Language="C#" %>
<%@ Import Namespace="System.Web.Routing" %>
<script runat="server">
    void Application_Start(object sender, EventArgs e) 
    {
        RegisterRoutes(RouteTable.Routes);
    }
    
    protected void Application_BeginRequest(object sender, EventArgs e)
        {
            HttpContext.Current.Response.AddHeader("Access-Control-Allow-Origin", "*");
            if (HttpContext.Current.Request.HttpMethod == "OPTIONS")
            {
                HttpContext.Current.Response.AddHeader("Access-Control-Allow-Methods", "POST, PUT, DELETE");
                HttpContext.Current.Response.AddHeader("Access-Control-Allow-Headers", "Content-Type, Accept");
                HttpContext.Current.Response.AddHeader("Access-Control-Max-Age", "1728000");
                HttpContext.Current.Response.End();
    }
} 

    static void RegisterRoutes(RouteCollection routes)
    {
        routes.MapPageRoute("Home", "Home", "~/default.aspx");
        routes.MapPageRoute("hnd-business", "hnd-business", "~/hnd-business.aspx");
        routes.MapPageRoute("hnd-computing", "hnd-computing", "~/hnd-computing.aspx");
        routes.MapPageRoute("hnd-art-and-design", "hnd-art-and-design", "~/hnd-art-and-design.aspx");
        routes.MapPageRoute("About", "About", "~/about.aspx");
        routes.MapPageRoute("vision-and-mission", "vision-and-mission", "~/vision-and-mission.aspx");
        routes.MapPageRoute("hod-message", "hod-message", "~/hod-message.aspx");
        routes.MapPageRoute("student-life", "student-life", "~/student-life.aspx");
        routes.MapPageRoute("contact", "contact", "~/contact.aspx");
        routes.MapPageRoute("why-iq", "why-iq", "~/why-iq.aspx");
        routes.MapPageRoute("what-is-hnd", "what-is-hnd", "~/what-is-hnd.aspx");
        routes.MapPageRoute("get-your-global-passport", "get-your-global-passport", "~/get-your-global-passport.aspx");
        routes.MapPageRoute("news-and-events", "news-and-events", "~/news-and-events.aspx");
        routes.MapPageRoute("NewsDetails", "News/{newsid}", "~/newsdetail.aspx");
        routes.MapPageRoute("blogs", "blogs", "~/blogs.aspx");
        routes.MapPageRoute("blogsDetails", "{blogscustomtitle}", "~/blogsdetails.aspx");
        routes.MapPageRoute("privacy-policy", "privacy-policy", "~/privacy-policy.aspx");
        
        
    }
</script>