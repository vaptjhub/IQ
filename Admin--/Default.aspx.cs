using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DatabaseLayer;
using System.Data;

public partial class admin_Default : System.Web.UI.Page
{
    protected string displaymessage;
    Utilities m = new Utilities();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void cmdlogin_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtCaptcha.Text == Session["Captcha"].ToString())
            {
                //get personid
                DataTable dt = new DataTable();
                clsiqtblusers objusers = new clsiqtblusers();
                objusers.email = txtemail.Text;
                objusers.password = txtpassword.Text;
                dt = objusers.Select();
                string blocked = "0";
                if (dt.Rows.Count > 0)
                {
                    foreach (DataRow dr in dt.Rows)
                    {
                        blocked = dr["userblock"].ToString();
                        Session["userid10062023"] = m.EncryptConnectionString(dr["userid"].ToString());
                        Session["username10062023"] = dr["username"].ToString();
                        Session["type10062023"] = dr["type"].ToString();
                    }

                    if (blocked == "True")
                    {
                        displaymessage = m.errormessage("Your Account has been blocked, Please contact Administrator");
                    }
                    else
                    {
                        Response.Redirect("~/admin/dashboard.aspx");
                    }

                }
                else
                {
                    txtemail.Text = "";
                    displaymessage = m.errormessage("Yours email and password does not match, try again");
                }

            }
            else
            {
                displaymessage = m.errormessage("Invalid CAPTCHA!");
            }
            
            
        }
        catch (Exception ex)
        {
            displaymessage = m.errormessage(ex.Message);
        }
    }

}