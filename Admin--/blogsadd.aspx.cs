using System.Data;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;
using System.Drawing.Drawing2D;
using DatabaseLayer;
using System;

public partial class Admin_blogsadd : System.Web.UI.Page
{
    int _blogsid = 0;
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

        string queryvalue = Request.QueryString["blogsid"];
        if (queryvalue != "" && queryvalue != null)
        {
            _blogsid = Convert.ToInt32(m.DecryptConnectionString(Request.QueryString["blogsid"]));
        }

        txttitle.Focus();
        if (!(IsPostBack))
        {
            if (_blogsid != 0)
            {
                Search(_blogsid);
            }
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {

        if (btnSave.Text == "Update")
        {
            Update(_blogsid);
            Response.Redirect("blogsview.aspx");
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
            clsiqtblblogs objblogs = new clsiqtblblogs();
            objblogs = getValues();
            objblogs.createddate = DateTime.Now;
            objblogs.createdby = Session["username10062023"].ToString();

            inserted = objblogs.Insert();
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
            clsiqtblblogs objblogs = new clsiqtblblogs();
            objblogs = getValues();
            objblogs.blogsid = id;
            objblogs.modifydate = DateTime.Now;
            objblogs.modifyby = Session["username10062023"].ToString();
            objblogs.Update();
        }
        catch (Exception ex)
        {
            displaymessage = ex.Message;
        }

    }

    protected clsiqtblblogs getValues()
    {
        clsiqtblblogs objblogs = new clsiqtblblogs();
        objblogs.blogstitle = txttitle.Text;
        objblogs.blogsshortdescription = txtshortdescription.Text;
        objblogs.blogslongdescription = txtlognDescription.Value;
        objblogs.blogsdate = Convert.ToDateTime(txtnewsdate.Text);
        objblogs.blogskeywords = txtkeywords.Text;
        objblogs.blogscustomtitle = txtblogscustomtitle.Text;

        objblogs.pagetitletag = txtpagetitletag.Text;
        objblogs.pagedescriptiontag = txtpagedescriptiontag.Text;
        objblogs.pagekeywordtag = txtpagekeywordtag.Text;

        if (lblimagetitle1.Text == "")
        {
            objblogs.blogsimage1 = "noimage.jpg";
        }
        else
        {
            objblogs.blogsimage1 = lblimagetitle1.Text;
        }
        objblogs.blogsimage2 = lblimagetitle2.Text;
        objblogs.blogsimage3 = lblimagetitle3.Text;
        objblogs.blogsimage4 = lblimagetitle4.Text;
        objblogs.blogsimage5 = lblimagetitle5.Text;
        objblogs.blogsimage6 = lblimagetitle6.Text;

        objblogs.blogsimage1tag = txtblogsimage1tag.Text;
        objblogs.blogsimage2tag = txtblogsimage2tag.Text;
        objblogs.blogsimage3tag = txtblogsimage3tag.Text;
        objblogs.blogsimage4tag = txtblogsimage4tag.Text;
        objblogs.blogsimage5tag = txtblogsimage5tag.Text;
        objblogs.blogsimage6tag = txtblogsimage6tag.Text;

        return objblogs;
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("NewsView.aspx");
    }

    private void Search(int id)
    {
        clsiqtblblogs objblogs = new clsiqtblblogs();
        DataTable dt = new DataTable();
        objblogs.blogsid = id;
        dt = objblogs.Select();
        foreach (DataRow dr in dt.Rows)
        {
            objblogs.blogstitle = dr["blogstitle"].ToString();
            objblogs.blogsshortdescription = dr["blogsshortdescription"].ToString();
            objblogs.blogslongdescription = dr["blogslongdescription"].ToString();
            objblogs.blogsdate = Convert.ToDateTime(dr["blogsdate"]);
            objblogs.blogskeywords = dr["blogskeywords"].ToString();
            objblogs.blogscustomtitle = dr["blogscustomtitle"].ToString();
            objblogs.blogsimage1 = dr["blogsimage1"].ToString();
            objblogs.blogsimage2 = dr["blogsimage2"].ToString();
            objblogs.blogsimage3 = dr["blogsimage3"].ToString();
            objblogs.blogsimage4 = dr["blogsimage4"].ToString();
            objblogs.blogsimage5 = dr["blogsimage5"].ToString();
            objblogs.blogsimage6 = dr["blogsimage6"].ToString();
            objblogs.blogsimage1tag = dr["blogsimage1tag"].ToString();
            objblogs.blogsimage2tag = dr["blogsimage2tag"].ToString();
            objblogs.blogsimage3tag = dr["blogsimage3tag"].ToString();
            objblogs.blogsimage4tag = dr["blogsimage4tag"].ToString();
            objblogs.blogsimage5tag = dr["blogsimage5tag"].ToString();
            objblogs.blogsimage6tag = dr["blogsimage6tag"].ToString();
            objblogs.pagetitletag = dr["pagetitletag"].ToString();
            objblogs.pagedescriptiontag = dr["pagedescriptiontag"].ToString();
            objblogs.pagekeywordtag = dr["pagekeywordtag"].ToString();
        }
        AssignDataToControls(objblogs);
        btnSave.Text = "Update";
    }

    private void AssignDataToControls(clsiqtblblogs objblogs)
    {
        txttitle.Text = objblogs.blogstitle;
        txtshortdescription.Text = objblogs.blogsshortdescription;
        txtlognDescription.Value = objblogs.blogslongdescription;
        txtnewsdate.Text = objblogs.blogsdate.ToString();
        txtkeywords.Text = objblogs.blogskeywords;
        txtblogscustomtitle.Text = objblogs.blogscustomtitle;

        txtpagetitletag.Text = objblogs.pagetitletag;
        txtpagedescriptiontag.Text = objblogs.pagedescriptiontag;
        txtpagekeywordtag.Text = objblogs.pagekeywordtag;

        ImagePreview1.ImageUrl = "../images/blogs/thumbnail/" + objblogs.blogsimage1;
        lblimagetitle1.Text = objblogs.blogsimage1;
        txtblogsimage1tag.Text = objblogs.blogsimage1tag;

        ImagePreview2.ImageUrl = "../images/blogs/thumbnail/" + objblogs.blogsimage2;
        lblimagetitle2.Text = objblogs.blogsimage2;
        txtblogsimage2tag.Text = objblogs.blogsimage2tag;

        ImagePreview3.ImageUrl = "../images/blogs/thumbnail/" + objblogs.blogsimage3;
        lblimagetitle3.Text = objblogs.blogsimage3;
        txtblogsimage3tag.Text = objblogs.blogsimage3tag;

        ImagePreview4.ImageUrl = "../images/blogs/thumbnail/" + objblogs.blogsimage4;
        lblimagetitle4.Text = objblogs.blogsimage4;
        txtblogsimage4tag.Text = objblogs.blogsimage4tag;

        ImagePreview5.ImageUrl = "../images/blogs/thumbnail/" + objblogs.blogsimage5;
        lblimagetitle5.Text = objblogs.blogsimage5;
        txtblogsimage5tag.Text = objblogs.blogsimage5tag;

        ImagePreview6.ImageUrl = "../images/blogs/thumbnail/" + objblogs.blogsimage6;
        lblimagetitle6.Text = objblogs.blogsimage6;
        txtblogsimage6tag.Text = objblogs.blogsimage6tag;
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


                string dir = Server.MapPath(".") + "\\images\\blogs\\";
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
                    ImagePreview1.ImageUrl = "../images/blogs/title/" + newFilename + ".jpg";
                }
                if (BtnNumber == 2)
                {
                    ImagePreview2.ImageUrl = "../images/blogs/title/" + newFilename + ".jpg";
                }
                if (BtnNumber == 3)
                {
                    ImagePreview3.ImageUrl = "../images/blogs/title/" + newFilename + ".jpg";
                }
                if (BtnNumber == 4)
                {
                    ImagePreview4.ImageUrl = "../images/blogs/title/" + newFilename + ".jpg";
                }
                if (BtnNumber == 5)
                {
                    ImagePreview5.ImageUrl = "../images/blogs/title/" + newFilename + ".jpg";
                }
                if (BtnNumber == 6)
                {
                    ImagePreview6.ImageUrl = "../images/blogs/title/" + newFilename + ".jpg";
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