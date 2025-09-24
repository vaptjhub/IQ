using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DatabaseLayer;

public partial class news : System.Web.UI.Page
{
    protected string displaymessage;
    Utilities utl = new Utilities();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            if (!(IsPostBack))
            {
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
            clsitstblnews objnews = new clsitstblnews();


            dt = objnews.Select();
            //Repeater1.DataSource = dt;
            //Repeater1.DataBind();
        }
        catch (Exception ex)
        {
            displaymessage = utl.errormessage(ex.Message);
        }
    }
}