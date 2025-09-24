using System.Data;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;
using System.Drawing.Drawing2D;
using DatabaseLayer;
using System;

public partial class Admin_newsadd : System.Web.UI.Page
{
    int _newsid = 0;
    public int NewWidth, NewHeight;
    protected int srno;
    protected string displaymessage;
    Utilities m = new Utilities();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["username10062023"] == null && Session["type10062023"] == null)
        {
            Response.Redirect("default.aspx");
        }

        Session["page"] = "NewsAdd";

        string queryvalue = Request.QueryString["newsid"];
        if (queryvalue != "" && queryvalue != null)
        {
            _newsid = Convert.ToInt32(m.DecryptConnectionString(Request.QueryString["newsid"]));
        }

        txttitle.Focus();
        if (!(IsPostBack))
        {
            if (_newsid != 0)
            {
                Search(_newsid);
            }
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
       
        if (btnSave.Text == "Update")
        {
            Update(_newsid);
            Response.Redirect("newsview.aspx");
        }
        else
        {
            Save();
        }
    }

    private void Save()
    {
        try
        {
            bool inserted;
            clsiqtblnews objnews = new clsiqtblnews();
            objnews = getValues();
            objnews.createddate = DateTime.Now;
            objnews.createdby = Session["username10062023"].ToString();

            inserted = objnews.Insert();
            if (inserted == true)
            {
                displaymessage = m.successmessage("Record has been Saved Successfully");
            }

        }
        catch (Exception ex)
        {
            displaymessage = ex.Message;
        }
    }

    private void Update(int id)
    {
        try
        {
            clsiqtblnews objnews = new clsiqtblnews();
            objnews = getValues();
            objnews.newsid = id;
            objnews.modifydate = DateTime.Now;
            objnews.modifyby = Session["username10062023"].ToString();
            objnews.Update();
        }
        catch (Exception ex)
        {
            displaymessage = ex.Message;
        }

    }

    protected clsiqtblnews getValues()
    {
        clsiqtblnews objnews = new clsiqtblnews();
        objnews.newstitle = txttitle.Text;
        objnews.newsshortdescription = txtshortdescription.Text;
        objnews.newslongdescription = txtlognDescription.Value;
        objnews.newsdate = Convert.ToDateTime(txtnewsdate.Text);

        if (lblimagetitle1.Text == "")
        {
            objnews.newsimage1 = "noimage.jpg";
        }
        else
        {
            objnews.newsimage1 = lblimagetitle1.Text;
        }
        objnews.newsimage2 = lblimagetitle2.Text;
        objnews.newsimage3 = lblimagetitle3.Text;
        objnews.newsimage4 = lblimagetitle4.Text;
        objnews.newsimage5 = lblimagetitle5.Text;
        objnews.newsimage6 = lblimagetitle6.Text;
        return objnews;
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("NewsView.aspx");
    }

    private void Search(int id)
    {
        clsiqtblnews objnews = new clsiqtblnews();
        DataTable dt = new DataTable();
        objnews.newsid = id;
        dt = objnews.Select();
        foreach (DataRow dr in dt.Rows)
        {
            objnews.newstitle = dr["newstitle"].ToString();
            objnews.newsshortdescription = dr["newsshortdescription"].ToString();
            objnews.newslongdescription = dr["newslongdescription"].ToString();
            objnews.newsdate = Convert.ToDateTime(dr["newsdate"]);
            objnews.newsimage1 = dr["newsimage1"].ToString();
            objnews.newsimage2 = dr["newsimage2"].ToString();
            objnews.newsimage3 = dr["newsimage3"].ToString();
            objnews.newsimage4 = dr["newsimage4"].ToString();
            objnews.newsimage5 = dr["newsimage5"].ToString();
            objnews.newsimage6 = dr["newsimage6"].ToString();
        }
        AssignDataToControls(objnews);
        btnSave.Text = "Update";
    }

    private void AssignDataToControls(clsiqtblnews objnews)
    {
        txttitle.Text = objnews.newstitle;
        txtshortdescription.Text = objnews.newsshortdescription;
        txtlognDescription.Value = objnews.newslongdescription;
        txtnewsdate.Text = objnews.newsdate.ToString();

        ImagePreview1.ImageUrl = "../images/news/thumbnail/" + objnews.newsimage1;
        lblimagetitle1.Text = objnews.newsimage1;

        ImagePreview2.ImageUrl = "../images/news/thumbnail/" + objnews.newsimage2;
        lblimagetitle2.Text = objnews.newsimage2;

        ImagePreview3.ImageUrl = "../images/news/thumbnail/" + objnews.newsimage3;
        lblimagetitle3.Text = objnews.newsimage3;

        ImagePreview4.ImageUrl = "../images/news/thumbnail/" + objnews.newsimage4;
        lblimagetitle4.Text = objnews.newsimage4;

        ImagePreview5.ImageUrl = "../images/news/thumbnail/" + objnews.newsimage5;
        lblimagetitle5.Text = objnews.newsimage5;

        ImagePreview6.ImageUrl = "../images/news/thumbnail/" + objnews.newsimage6;
        lblimagetitle6.Text = objnews.newsimage6;
    }

    protected void btnPreview1_Click(object sender, EventArgs e)
    {
        try
        {
            string tempdir = Server.MapPath(".") + "\\Images\\Temp\\";
            string currtime = string.Format("{0:ddMMyyyy-HHmmss}", DateTime.Now);
            fupImage1.SaveAs(tempdir + "\\" + currtime + ".jpg");

            string OrginalFileName = tempdir + "\\" + currtime + ".jpg";

            //currtime = currtime.Replace(':', '-');
            lblimagetitle1.Text = currtime + ".jpg";

            // Thumbnail
            NewWidth = 200;
            if (resizeImage(currtime, "thumbnail", OrginalFileName, 1))
            {
            }

            // Title
            NewWidth = 750;
            if (resizeImage(currtime, "title", OrginalFileName, 1))
            {
            }

            // large
            NewWidth = 1200;
            if (resizeImage(currtime, "large", OrginalFileName, 1))
            {
            }
        }
        catch (Exception ex)
        {
            displaymessage = m.errormessage(ex.Message);
        }

    }

    protected void btnPhotoPreview2_Click(object sender, EventArgs e)
    {
        try
        {
            string tempdir = Server.MapPath(".") + "\\Images\\Temp\\";
            string currtime = string.Format("{0:ddMMyyyy-HHmmss}", DateTime.Now);
            fupImage2.SaveAs(tempdir + "\\" + currtime + ".jpg");

            string OrginalFileName = tempdir + "\\" + currtime + ".jpg";

            lblimagetitle2.Text = currtime + ".jpg";

            // Thumbnail
            NewWidth = 200;
            if (resizeImage(currtime, "thumbnail", OrginalFileName, 2))
            {
            }

            // Title
            NewWidth = 750;
            if (resizeImage(currtime, "title", OrginalFileName, 2))
            {
            }

            // large
            NewWidth = 1200;
            if (resizeImage(currtime, "large", OrginalFileName, 2))
            {
            }
        }
        catch (Exception ex)
        {
            displaymessage = m.errormessage(ex.Message);
        }
    }
    protected void btnPhotoPreview3_Click(object sender, EventArgs e)
    {
        try
        {
            string tempdir = Server.MapPath(".") + "\\Images\\Temp\\";

            /// temporary save file in qecnewa temp folder
            string currtime = string.Format("{0:ddMMyyyy-HHmmss}", DateTime.Now);
            fupImage3.SaveAs(tempdir + "\\" + currtime + ".jpg");

            string OrginalFileName = tempdir + "\\" + currtime + ".jpg";

            lblimagetitle3.Text = currtime + ".jpg";

            // Thumbnail
            NewWidth = 200;
            if (resizeImage(currtime, "thumbnail", OrginalFileName, 3))
            {
            }

            // Title
            NewWidth = 750;
            if (resizeImage(currtime, "title", OrginalFileName, 3))
            {
            }

            // large
            NewWidth = 1200;
            if (resizeImage(currtime, "large", OrginalFileName, 3))
            {
            }
        }
        catch (Exception ex)
        {
            displaymessage = m.errormessage(ex.Message);
        }

    }
    protected void btnPhotoPreview4_Click(object sender, EventArgs e)
    {
        try
        {
            string tempdir = Server.MapPath(".") + "\\Images\\Temp\\";

            // temporary save file in qecnewa temp folder
            string currtime = string.Format("{0:ddMMyyyy-HHmmss}", DateTime.Now);
            fupImage4.SaveAs(tempdir + "\\" + currtime + ".jpg");

            string OrginalFileName = tempdir + "\\" + currtime + ".jpg";

            lblimagetitle4.Text = currtime + ".jpg";

            // Thumbnail
            NewWidth = 200;
            if (resizeImage(currtime, "thumbnail", OrginalFileName, 4))
            {
            }

            // Title
            NewWidth = 750;
            if (resizeImage(currtime, "title", OrginalFileName, 4))
            {
            }

            // large
            NewWidth = 1200;
            if (resizeImage(currtime, "large", OrginalFileName, 4))
            {
            }
        }
        catch (Exception ex)
        {
            displaymessage = m.errormessage(ex.Message);
        }

    }
    protected void btnPhotoPreview5_Click(object sender, EventArgs e)
    {
        try
        {
            string tempdir = Server.MapPath(".") + "\\Images\\Temp\\";

            // temporary save file in qecnewa temp folder
            string currtime = string.Format("{0:ddMMyyyy-HHmmss}", DateTime.Now);
            fupImage5.SaveAs(tempdir + "\\" + currtime + ".jpg");

            string OrginalFileName = tempdir + "\\" + currtime + ".jpg";

            lblimagetitle5.Text = currtime + ".jpg";

            // Thumbnail
            NewWidth = 200;
            if (resizeImage(currtime, "thumbnail", OrginalFileName, 5))
            {
            }

            // Title
            NewWidth = 750;
            if (resizeImage(currtime, "title", OrginalFileName, 5))
            {
            }

            // large
            NewWidth = 1200;
            if (resizeImage(currtime, "large", OrginalFileName, 5))
            {
            }
        }
        catch (Exception ex)
        {
            displaymessage = m.errormessage(ex.Message);
        }

    }

    protected void btnPhotoPreview6_Click(object sender, EventArgs e)
    {
        try
        {
            string tempdir = Server.MapPath(".") + "\\Images\\Temp\\";

            // temporary save file in qecnewa temp folder
            string currtime = string.Format("{0:ddMMyyyy-HHmmss}", DateTime.Now);
            fupImage6.SaveAs(tempdir + "\\" + currtime + ".jpg");

            string OrginalFileName = tempdir + "\\" + currtime + ".jpg";

            lblimagetitle6.Text = currtime + ".jpg";

            // Thumbnail
            NewWidth = 200;
            if (resizeImage(currtime, "thumbnail", OrginalFileName, 6))
            {
            }

            // Title
            NewWidth = 750;
            if (resizeImage(currtime, "title", OrginalFileName, 6))
            {
            }

            // large
            NewWidth = 1200;
            if (resizeImage(currtime, "large", OrginalFileName, 6))
            {
            }
        }
        catch (Exception ex)
        {
            displaymessage = m.errormessage(ex.Message);
        }

    }

    protected bool resizeImage(string newFilename, string imagetype, string originalFileName, int BtnNumber)
    {

        Bitmap tmpImage = default(Bitmap);
        Bitmap newImage = default(Bitmap);
        Graphics g = default(Graphics);
        int newHeight = 0;
        FileStream fs = default(FileStream);
        if (File.Exists(originalFileName))
        {
            try
            {
                fs = new FileStream(originalFileName, FileMode.Open);
                tmpImage = (Bitmap)Bitmap.FromStream(fs);
                fs.Close();

                if (NewHeight == 0)
                {
                    newHeight = (NewWidth * tmpImage.Height) / tmpImage.Width;
                    newImage = new Bitmap(NewWidth, newHeight);
                }
                else
                {
                    newImage = new Bitmap(NewWidth, NewHeight);
                }

                g = Graphics.FromImage(newImage);
                g.InterpolationMode = System.Drawing.Drawing2D.InterpolationMode.HighQualityBicubic;
                g.SmoothingMode = System.Drawing.Drawing2D.SmoothingMode.HighQuality;
                g.PixelOffsetMode = System.Drawing.Drawing2D.PixelOffsetMode.HighQuality;
                g.CompositingQuality = System.Drawing.Drawing2D.CompositingQuality.HighQuality;
                g.CompositingMode = System.Drawing.Drawing2D.CompositingMode.SourceOver;

                if (NewHeight == 0)
                {
                    newHeight = (NewWidth * tmpImage.Height) / tmpImage.Width;
                    g.DrawImage(tmpImage, 0, 0, NewWidth, newHeight);
                }
                else
                {
                    g.DrawImage(tmpImage, 0, 0, NewWidth, NewHeight);
                }

                g.Dispose();


                string dir = Server.MapPath(".") + "\\images\\news\\";
                dir = dir.ToLower();
                string location = dir.Replace("admin\\", "");

                if (imagetype == "title")
                {
                    newImage.Save(location + "\\title\\" + newFilename + ".jpg", System.Drawing.Imaging.ImageFormat.Jpeg);
                }
                if (imagetype == "large")
                {
                    newImage.Save(location + "\\large\\" + newFilename + ".jpg", System.Drawing.Imaging.ImageFormat.Jpeg);
                }
                if (imagetype == "thumbnail")
                {
                    newImage.Save(location + "\\thumbnail\\" + newFilename + ".jpg", System.Drawing.Imaging.ImageFormat.Jpeg);
                }


                if (BtnNumber == 1)
                {
                    ImagePreview1.ImageUrl = "../images/news/title/" + newFilename + ".jpg";
                }
                if (BtnNumber == 2)
                {
                    ImagePreview2.ImageUrl = "../images/news/title/" + newFilename + ".jpg";
                }
                if (BtnNumber == 3)
                {
                    ImagePreview3.ImageUrl = "../images/news/title/" + newFilename + ".jpg";
                }
                if (BtnNumber == 4)
                {
                    ImagePreview4.ImageUrl = "../images/news/title/" + newFilename + ".jpg";
                }
                if (BtnNumber == 5)
                {
                    ImagePreview5.ImageUrl = "../images/news/title/" + newFilename + ".jpg";
                }
                if (BtnNumber == 6)
                {
                    ImagePreview6.ImageUrl = "../images/news/title/" + newFilename + ".jpg";
                }
                newImage.Dispose();
                tmpImage.Dispose();

                tmpImage = null;
                newImage = null;
                g = null;
                return true;
            }
            catch (Exception ex)
            {

                tmpImage = null;
                newImage = null;
                g = null;
                return false;
            }
        }
        else
        {

            tmpImage = null;
            newImage = null;
            g = null;
            return false;
        }
    }
}