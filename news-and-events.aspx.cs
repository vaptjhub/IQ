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

public partial class news_and_events : System.Web.UI.Page
{
    protected string displaymessage;
    int num = 0;
    SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"].ToString());
    Utilities utl = new Utilities();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            if (!(IsPostBack))
            {
                num = 9;
                ViewState["num"] = num;
                ViewState["rowcount"] = 0;
                ViewState["letter"] = "";
                ViewState["search"] = "";
                ViewState["count"] = 0;
                rowCount();
                BindRepeater(num);
            }
        }
        catch (Exception ex)
        {

        }
    }

    private void BindRepeater(int numOfRows)
    {
        DataTable dt = new DataTable();
        SqlCommand cmd = null;
        SqlDataAdapter adp = null;
        try
        {
            //get number rows in table by calling the rowCount function i created.
            int rCount = Convert.ToInt32(ViewState["count"]);

            cmd = new SqlCommand("GetIQNews_SP", con);
            //Passs numOfRows variable value to stored procedure to get desired number of rows
            cmd.Parameters.AddWithValue("@topVal", numOfRows);
            
            
            cmd.CommandType = CommandType.StoredProcedure;
            adp = new SqlDataAdapter(cmd);
            adp.Fill(dt);
            //ViewState["rowcount"] = dt.Rows.Count;
            if (dt.Rows.Count > 0)
            {
                Repeater1.DataSource = null;
                Repeater1.DataBind();
                Repeater1.DataSource = dt;
                Repeater1.DataBind();
            }
            else
            {
                Repeater1.DataSource = null;
                Repeater1.DataBind();
            }

            if (numOfRows > rCount)
            {
                btnLoadMore.Visible = false;
            }

        }
        catch (Exception ex)
        {
            // ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Oops!! Error occured: " + ex.Message.ToString() + "');", true);
            displaymessage = ex.Message;
        }
        finally
        {
            con.Close();
            cmd.Dispose();
            adp = null;
            dt.Clear();
            dt.Dispose();
        }
    }

    protected void rowCount()
    {
        //int NoOfRows = 0;
        SqlCommand cmd = new SqlCommand("GetIQNewsCount_SP", con);
        cmd.CommandType = CommandType.StoredProcedure;
        try
        {
            con.Open();
            ViewState["count"] = Convert.ToInt32(cmd.ExecuteScalar());
        }
        catch (Exception ex)
        {
            //ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Oops!! Error occured: " + ex.Message.ToString() + "');", true);
        }
        finally
        {
            con.Close();
            cmd.Dispose();
        }
        //return NoOfRows;
    }

    protected void btnLoadMore_Click(object sender, EventArgs e)
    {
        //On every click of this button it will add 2 to the ViewState["num"] whose value was set to 2 initially on page load. So numval is 4 now.
        int numVal = Convert.ToInt32(ViewState["num"]) + 9;
        //Now pass numVal whose value is 4 to the BindRepeater function to get 4 rows.
        BindRepeater(numVal);
        //Set ViewState["num"] is equal to the numVal i.e. 4 so that when we again click this button it will be 4 + 2= 6 and so on.
        ViewState["num"] = numVal;
    }
}