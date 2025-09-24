using System.Data;
using System.IO;
using System.Drawing;
using System.Drawing.Imaging;
using System.Drawing.Drawing2D;
using DatabaseLayer;
using System;

public partial class Admin_projectadd : System.Web.UI.Page
{
    int _projectid = 0;
    public int NewWidth, NewHeight;
    protected int srno;
    protected string displaymessage;
    Utilities m = new Utilities();

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["username10042023"] == null && Session["type10042023"] == null)
        {
            Response.Redirect("default.aspx");
        }

        Session["page"] = "ProjectAdd";

        string queryvalue = Request.QueryString["projectid"];
        if (queryvalue != "" && queryvalue != null)
        {
            _projectid = Convert.ToInt32(m.DecryptConnectionString(Request.QueryString["projectid"]));
        }

        txtprojectname.Focus();
        if (!(IsPostBack))
        {
            if (_projectid != 0)
            {
                Search(_projectid);
            }
        }
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {

        if (btnSave.Text == "Update")
        {
            Update(_projectid);
            Response.Redirect("projectview.aspx");
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
            clsitstblprojects objprojects = new clsitstblprojects();
            objprojects = getValues();
            inserted = objprojects.Insert();
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
            clsitstblprojects objprojects = new clsitstblprojects();
            objprojects = getValues();
            objprojects.projectid = id;
            objprojects.Update();
        }
        catch (Exception ex)
        {
            displaymessage = ex.Message;
        }

    }

    protected clsitstblprojects getValues()
    {
        clsitstblprojects objprojects = new clsitstblprojects();
        objprojects.projectname = txtprojectname.Text;
        objprojects.projectshortdescription = txtshortdescription.Text;
        objprojects.projectlongdescription = txtlognDescription.Value;
        objprojects.projectdate = Convert.ToDateTime(txtprojectdate.Text);
        objprojects.projectkeyword = cbokeywords.Text;

        if (lblimagetitle1.Text == "")
        {
            objprojects.projectimage1 = "noimage.jpg";
        }
        else
        {
            objprojects.projectimage1 = lblimagetitle1.Text;
        }
        objprojects.projectimage2 = lblimagetitle2.Text;
        objprojects.projectimage3 = lblimagetitle3.Text;
        objprojects.projectimage4 = lblimagetitle4.Text;
        objprojects.projectimage5 = lblimagetitle5.Text;
        objprojects.projectimage6 = lblimagetitle6.Text;
        return objprojects;
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("ProjectView.aspx");
    }

    private void Search(int id)
    {
        clsitstblprojects objprojects = new clsitstblprojects();
        DataTable dt = new DataTable();
        objprojects.projectid = id;
        dt = objprojects.Select();
        foreach (DataRow dr in dt.Rows)
        {
            objprojects.projectname = dr["projectname"].ToString();
            objprojects.projectshortdescription = dr["projectshortdescription"].ToString();
            objprojects.projectlongdescription = dr["projectlongdescription"].ToString();
            objprojects.projectdate = Convert.ToDateTime(dr["projectdate"]);
            objprojects.projectkeyword = dr["projectkeyword"].ToString();
            objprojects.projectimage1 = dr["projectimage1"].ToString();
            objprojects.projectimage2 = dr["projectimage2"].ToString();
            objprojects.projectimage3 = dr["projectimage3"].ToString();
            objprojects.projectimage4 = dr["projectimage4"].ToString();
            objprojects.projectimage5 = dr["projectimage5"].ToString();
            objprojects.projectimage6 = dr["projectimage6"].ToString();
        }
        AssignDataToControls(objprojects);
        btnSave.Text = "Update";
    }

    private void AssignDataToControls(clsitstblprojects objprojects)
    {
        txtprojectname.Text = objprojects.projectname;
        txtshortdescription.Text = objprojects.projectshortdescription;
        txtlognDescription.Value = objprojects.projectlongdescription;
        cbokeywords.Text = objprojects.projectkeyword;
        txtprojectdate.Text = objprojects.projectdate.ToString();

        ImagePreview1.ImageUrl = "../images/projects/thumbnail/" + objprojects.projectimage1;
        lblimagetitle1.Text = objprojects.projectimage1;

        ImagePreview2.ImageUrl = "../images/projects/thumbnail/" + objprojects.projectimage2;
        lblimagetitle2.Text = objprojects.projectimage2;

        ImagePreview3.ImageUrl = "../images/projects/thumbnail/" + objprojects.projectimage3;
        lblimagetitle3.Text = objprojects.projectimage3;

        ImagePreview4.ImageUrl = "../images/projects/thumbnail/" + objprojects.projectimage4;
        lblimagetitle4.Text = objprojects.projectimage4;

        ImagePreview5.ImageUrl = "../images/projects/thumbnail/" + objprojects.projectimage5;
        lblimagetitle5.Text = objprojects.projectimage5;

        ImagePreview6.ImageUrl = "../images/projects/thumbnail/" + objprojects.projectimage6;
        lblimagetitle6.Text = objprojects.projectimage6;
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
            NewWidth = 410;
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
            NewWidth = 410;
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
            NewWidth = 410;
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
            NewWidth = 410;
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
            NewWidth = 410;
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
            NewWidth = 410;
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


                string dir = Server.MapPath(".") + "\\images\\projects\\";
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
                    ImagePreview1.ImageUrl = "../images/projects/title/" + newFilename + ".jpg";
                }
                if (BtnNumber == 2)
                {
                    ImagePreview2.ImageUrl = "../images/projects/title/" + newFilename + ".jpg";
                }
                if (BtnNumber == 3)
                {
                    ImagePreview3.ImageUrl = "../images/projects/title/" + newFilename + ".jpg";
                }
                if (BtnNumber == 4)
                {
                    ImagePreview4.ImageUrl = "../images/projects/title/" + newFilename + ".jpg";
                }
                if (BtnNumber == 5)
                {
                    ImagePreview5.ImageUrl = "../images/projects/title/" + newFilename + ".jpg";
                }
                if (BtnNumber == 6)
                {
                    ImagePreview6.ImageUrl = "../images/projects/title/" + newFilename + ".jpg";
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