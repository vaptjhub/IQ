using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DatabaseLayer;

public partial class newsdetail : System.Web.UI.Page
{
    protected string displaymessage, newstitle, image1,image2,image3,image4,image5,image6;
    int _newsid;
    Utilities utl = new Utilities();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!(IsPostBack))
            {
                _newsid = Convert.ToInt32(this.Page.RouteData.Values["newsid"].ToString());
                GetAllRecord(_newsid);
            }
        }
        catch (Exception ex)
        {
            displaymessage = utl.errormessage(ex.Message);
        }
    }

    private void GetAllRecord(int id)
    {
        try
        {
            // Title 
            DataTable dt = new DataTable();
            clsiqtblnews objnews = new clsiqtblnews();
            objnews.newsid = id;
            dt = objnews.Select();
            foreach (DataRow dr in dt.Rows)
            {
                newstitle = dr["newstitle"].ToString();

                image1 = dr["newsimage1"].ToString();
                image2 = dr["newsimage2"].ToString();
                image3 = dr["newsimage3"].ToString();
                image4 = dr["newsimage4"].ToString();
                image5 = dr["newsimage5"].ToString();
                image6 = dr["newsimage6"].ToString();
            }
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
        }
        catch (Exception ex)
        {
            displaymessage = utl.errormessage(ex.Message);
        }
    }
}