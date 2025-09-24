using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using Microsoft.ApplicationBlocks.Data;
using System.Configuration;

namespace DatabaseLayer
{
	public class clsiqtblblogs
	{
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"].ToString());
	#region Constructor
	public clsiqtblblogs()
	{}
	#endregion

    #region Private Variables
    private int _blogsid;
    private string _blogstitle;
    private string _blogsshortdescription;
    private string _blogslongdescription;
    private System.DateTime _blogsdate;
    private string _blogskeywords;
    private string _blogscustomtitle;
    private string _blogsimage1;
    private string _blogsimage2;
    private string _blogsimage3;
    private string _blogsimage4;
    private string _blogsimage5;
    private string _blogsimage6;
    private string _blogsimage1tag;
    private string _blogsimage2tag;
    private string _blogsimage3tag;
    private string _blogsimage4tag;
    private string _blogsimage5tag;
    private string _blogsimage6tag;
    private string _pagetitletag;
    private string _pagedescriptiontag;
    private string _pagekeywordtag;
    private System.DateTime _createddate;
    private string _createdby;
    private System.DateTime _modifydate;
    private string _modifyby;
    clsiqtblblogs objclsiqtblblogs;
    #endregion

    #region Public Properties
    public int blogsid
    {
        get { return _blogsid; }
        set { _blogsid = value; }
    }
    public string blogstitle
    {
        get { return _blogstitle; }
        set { _blogstitle = value; }
    }
    public string blogsshortdescription
    {
        get { return _blogsshortdescription; }
        set { _blogsshortdescription = value; }
    }
    public string blogslongdescription
    {
        get { return _blogslongdescription; }
        set { _blogslongdescription = value; }
    }
    public System.DateTime blogsdate
    {
        get { return _blogsdate; }
        set { _blogsdate = value; }
    }
    public string blogskeywords
    {
        get { return _blogskeywords; }
        set { _blogskeywords = value; }
    }
    public string blogscustomtitle
    {
        get { return _blogscustomtitle; }
        set { _blogscustomtitle = value; }
    }
    public string blogsimage1
    {
        get { return _blogsimage1; }
        set { _blogsimage1 = value; }
    }
    public string blogsimage2
    {
        get { return _blogsimage2; }
        set { _blogsimage2 = value; }
    }
    public string blogsimage3
    {
        get { return _blogsimage3; }
        set { _blogsimage3 = value; }
    }
    public string blogsimage4
    {
        get { return _blogsimage4; }
        set { _blogsimage4 = value; }
    }
    public string blogsimage5
    {
        get { return _blogsimage5; }
        set { _blogsimage5 = value; }
    }
    public string blogsimage6
    {
        get { return _blogsimage6; }
        set { _blogsimage6 = value; }
    }
    public string blogsimage1tag
    {
        get { return _blogsimage1tag; }
        set { _blogsimage1tag = value; }
    }
    public string blogsimage2tag
    {
        get { return _blogsimage2tag; }
        set { _blogsimage2tag = value; }
    }
    public string blogsimage3tag
    {
        get { return _blogsimage3tag; }
        set { _blogsimage3tag = value; }
    }
    public string blogsimage4tag
    {
        get { return _blogsimage4tag; }
        set { _blogsimage4tag = value; }
    }
    public string blogsimage5tag
    {
        get { return _blogsimage5tag; }
        set { _blogsimage5tag = value; }
    }
    public string blogsimage6tag
    {
        get { return _blogsimage6tag; }
        set { _blogsimage6tag = value; }
    }
    public string pagetitletag
    {
        get { return _pagetitletag; }
        set { _pagetitletag = value; }
    }
    public string pagedescriptiontag
    {
        get { return _pagedescriptiontag; }
        set { _pagedescriptiontag = value; }
    }
    public string pagekeywordtag
    {
        get { return _pagekeywordtag; }
        set { _pagekeywordtag = value; }
    }
    public System.DateTime createddate
    {
        get { return _createddate; }
        set { _createddate = value; }
    }
    public string createdby
    {
        get { return _createdby; }
        set { _createdby = value; }
    }
    public System.DateTime modifydate
    {
        get { return _modifydate; }
        set { _modifydate = value; }
    }
    public string modifyby
    {
        get { return _modifyby; }
        set { _modifyby = value; }
    }
    #endregion

	#region Public Methods
	public DataTable Select()
	{
		DataSet ds;
		try
		{
			SqlParameter[] Params = 
			{ 
				new SqlParameter("@blogsid",SqlDbType.Int),
                new SqlParameter("@blogscustomtitle",SqlDbType.VarChar)
			};
			

				if (blogsid != 0)
				{
					Params[0].Value = blogsid;
				}
				else
				{
					Params[0].Value = DBNull.Value;
				}
                if (blogscustomtitle != null)
                {
                    Params[1].Value = blogscustomtitle;
                }
                else
                {
                    Params[1].Value = DBNull.Value;
                }
			
			ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure,"SP_iqtblblogs_Select",Params);
			return ds.Tables[0];
		}
		catch(Exception ex)
		{
			throw new Exception(ex.Message);
		}
	}
    public bool Insert()
    {
        try
        {
            SqlParameter[] Params = 
			{ 
				new SqlParameter("@blogstitle",blogstitle),
				new SqlParameter("@blogsshortdescription",blogsshortdescription),
				new SqlParameter("@blogslongdescription",blogslongdescription),
				new SqlParameter("@blogsdate",blogsdate),
				new SqlParameter("@blogskeywords",blogskeywords),
                new SqlParameter("@blogscustomtitle",blogscustomtitle),
				new SqlParameter("@blogsimage1",blogsimage1),
				new SqlParameter("@blogsimage2",blogsimage2),
				new SqlParameter("@blogsimage3",blogsimage3),
				new SqlParameter("@blogsimage4",blogsimage4),
				new SqlParameter("@blogsimage5",blogsimage5),
				new SqlParameter("@blogsimage6",blogsimage6),
				new SqlParameter("@blogsimage1tag",blogsimage1tag),
				new SqlParameter("@blogsimage2tag",blogsimage2tag),
				new SqlParameter("@blogsimage3tag",blogsimage3tag),
				new SqlParameter("@blogsimage4tag",blogsimage4tag),
				new SqlParameter("@blogsimage5tag",blogsimage5tag),
				new SqlParameter("@blogsimage6tag",blogsimage6tag),
				new SqlParameter("@pagetitletag",pagetitletag),
				new SqlParameter("@pagedescriptiontag",pagedescriptiontag),
				new SqlParameter("@pagekeywordtag",pagekeywordtag),
				new SqlParameter("@createddate",createddate),
				new SqlParameter("@createdby",createdby)
			};
            int result = SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SP_iqtblblogs_Insert", Params);
            if (result > 0)
            {
                return true;
            }
            return false;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
    public bool Update()
    {
        try
        {
            SqlParameter[] Params = 
			{ 
				new SqlParameter("@blogsid",blogsid),
				new SqlParameter("@blogstitle",blogstitle),
				new SqlParameter("@blogsshortdescription",blogsshortdescription),
				new SqlParameter("@blogslongdescription",blogslongdescription),
				new SqlParameter("@blogsdate",blogsdate),
				new SqlParameter("@blogskeywords",blogskeywords),
                new SqlParameter("@blogscustomtitle",blogscustomtitle),
				new SqlParameter("@blogsimage1",blogsimage1),
				new SqlParameter("@blogsimage2",blogsimage2),
				new SqlParameter("@blogsimage3",blogsimage3),
				new SqlParameter("@blogsimage4",blogsimage4),
				new SqlParameter("@blogsimage5",blogsimage5),
				new SqlParameter("@blogsimage6",blogsimage6),
				new SqlParameter("@blogsimage1tag",blogsimage1tag),
				new SqlParameter("@blogsimage2tag",blogsimage2tag),
				new SqlParameter("@blogsimage3tag",blogsimage3tag),
				new SqlParameter("@blogsimage4tag",blogsimage4tag),
				new SqlParameter("@blogsimage5tag",blogsimage5tag),
				new SqlParameter("@blogsimage6tag",blogsimage6tag),
				new SqlParameter("@pagetitletag",pagetitletag),
				new SqlParameter("@pagedescriptiontag",pagedescriptiontag),
				new SqlParameter("@pagekeywordtag",pagekeywordtag),
				new SqlParameter("@modifydate",modifydate),
				new SqlParameter("@modifyby",modifyby) 
			};
            int result = SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure, "SP_iqtblblogs_Update", Params);
            if (result > 0)
            {
                return true;
            }
            return false;
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
	public bool Delete()
	{
		try
		{
			SqlParameter[] Params = { new SqlParameter("@blogsid",blogsid) };
			int result = SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure,"SP_iqtblblogs_Delete",Params);
			if (result > 0)
			{
				return true;
			}
			return false;
		}
		catch(Exception ex)
		{
			throw new Exception(ex.Message);
		}
	}
   
    public DataTable TotalBlogs()
    {
        DataSet ds;
        try
        {
            ds = SqlHelper.ExecuteDataset(con, CommandType.Text, "select count(blogsid) as total from tblblogs");
            return ds.Tables[0];
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }

	#endregion

	}
}
