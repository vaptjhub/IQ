using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DatabaseLayer;
using System.Data;

public partial class admin_dashboard : System.Web.UI.Page
{
    protected string displaymessage;
    protected int tnews,tblogs;
    Utilities m = new Utilities();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            if (Session["username10062023"] == null && Session["type10062023"] == null)
            {
                Response.Redirect("default.aspx");
            }
            if (!(IsPostBack))
            {
                GetTotalNews();
                GetTotalBlogs();
            }

        }
        catch (Exception ex)
        {
            displaymessage = m.errormessage(ex.Message);
        }
    }

    private void GetTotalNews()
    {
        try
        {
            DataTable dt = new DataTable();
            clsiqtblnews objnews = new clsiqtblnews();
            dt = objnews.TotalNews();
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    tnews = Convert.ToInt32(row["total"]);
                }
            }
            else
            {
                tnews = 0;
            }
        }
        catch (Exception ex)
        {

        }
    }

    private void GetTotalBlogs()
    {
        try
        {
            DataTable dt = new DataTable();
            clsiqtblblogs objblogs = new clsiqtblblogs();
            dt = objblogs.TotalBlogs();
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    tblogs = Convert.ToInt32(row["total"]);
                }
            }
            else
            {
                tblogs = 0;
            }
        }
        catch (Exception ex)
        {

        }
    }
}