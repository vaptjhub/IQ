using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using DatabaseLayer;

public partial class blogsdetails : System.Web.UI.Page
{
    protected string displaymessage;
    protected string pagetitletag, pagedescriptiontag, pagekeywordstag,pagecustomurl;
    protected string image1tag, image2tag, image3tag, image4tag, image5tag, image6tag;
    protected string image1, image2, image3, image4, image5, image6;

    string _blogsid;
    Utilities utl = new Utilities();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!(IsPostBack))
            {
                _blogsid = this.Page.RouteData.Values["blogscustomtitle"].ToString();
                pagecustomurl = "href='https://iq.uol.edu.pk/" + _blogsid + "'";
                GetAllRecord(_blogsid);
            }
        }
        catch (Exception ex)
        {
            displaymessage = utl.errormessage(ex.Message);
        }
    }

    private void GetAllRecord(string id)
    {
        try
        {
            // Title 
            DataTable dt = new DataTable();
            clsiqtblblogs objblogs = new clsiqtblblogs();
            //objblogs.blogsid = id;
            objblogs.blogscustomtitle = id;
            dt = objblogs.Select();
            if (dt.Rows.Count > 0)
            {
                foreach (DataRow row in dt.Rows)
                {
                    pagetitletag = row["pagetitletag"].ToString();
                    if (pagetitletag == "")
                    {
                        pagetitletag = "IQ - Blog";
                    }
                    pagedescriptiontag = "<meta name='description' content='" + row["pagedescriptiontag"].ToString() + "' />";
                    pagekeywordstag = "<meta name='keywords' content='" + row["pagekeywordtag"].ToString() + "' />";

                    image1 = row["blogsimage1"].ToString();
                    image2 = row["blogsimage2"].ToString();
                    image3 = row["blogsimage3"].ToString();
                    image4 = row["blogsimage4"].ToString();
                    image5 = row["blogsimage5"].ToString();
                    image6 = row["blogsimage6"].ToString();

                    image1tag = row["blogsimage1tag"].ToString();
                    image2tag = row["blogsimage2tag"].ToString();
                    image3tag = row["blogsimage3tag"].ToString();
                    image4tag = row["blogsimage4tag"].ToString();
                    image5tag = row["blogsimage5tag"].ToString();
                    image6tag = row["blogsimage6tag"].ToString();
                }
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
            else
            {
                pagetitletag = "IQ - Blog";
                pagedescriptiontag = "";
                pagekeywordstag = "";
                image1 = "";
                image2 = "";
                image3 = "";
                image4 = "";
                image5 = "";
                image6 = "";

                image1tag = "";
                image2tag = "";
                image3tag = "";
                image4tag = "";
                image5tag = "";
                image6tag = "";
            }
            
        }
        catch (Exception ex)
        {
            displaymessage = utl.errormessage(ex.Message);
        }
    }
}