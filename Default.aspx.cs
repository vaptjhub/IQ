using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DatabaseLayer;
using System.Data.SqlClient;
using System.Configuration;
using System.Net;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!(IsPostBack))
            {
               // GetNews();
            }
        }
        catch (Exception ex)
        {

        }
    }

    private void GetNews()
    {
        try
        {
            DataTable dt = new DataTable();

            clsiqtblnews objnews = new clsiqtblnews();
            dt = objnews.SelectTop();

            //Repeater1.DataSource = dt;
            //Repeater1.DataBind();
        }
        catch (Exception ex)
        {

        }
    }

}
