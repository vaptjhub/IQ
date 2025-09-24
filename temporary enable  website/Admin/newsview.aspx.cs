using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

using DatabaseLayer;

public partial class Admin_newsview : System.Web.UI.Page
{
    int _id;
    Utilities utl = new Utilities();
    protected string displaymessage;
    protected int srno;

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["username10062023"] == null && Session["type10062023"] == null)
            {
                Response.Redirect("default.aspx");
            }
            string queryvalue = Request.QueryString["newsid"];
            if (queryvalue != "" && queryvalue != null)
            {
                _id = Convert.ToInt32(utl.DecryptConnectionString(Request.QueryString["newsid"]));
            }

            if (!(IsPostBack))
            {
                if (_id != 0)
                {
                    Delete(_id);
                }

                GetAllRecord();

            }

        }
        catch (Exception ex)
        {

        }
    }

    
    private void GetAllRecord()
    {
        try
        {
            // Title 
            DataTable dt = new DataTable();
            clsiqtblnews objnews = new clsiqtblnews();


            dt = objnews.Select();
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
        catch (Exception ex)
        {
            displaymessage = utl.errormessage(ex.Message);
        }
    }

    public void Delete(int id)
    {
        clsiqtblnews objnews = new clsiqtblnews();
        objnews.newsid = id;
        objnews.Delete();
        displaymessage = utl.errormessage("Record has been Deleted.");
    }
    protected string encriptid(string str)
    {
        string en = utl.EncryptConnectionString(str);
        return en;
    }
   
   
}