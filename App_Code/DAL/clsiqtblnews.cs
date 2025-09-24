using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using Microsoft.ApplicationBlocks.Data;
using System.Configuration;

namespace DatabaseLayer
{
	public class clsiqtblnews
	{
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"].ToString());
	#region Constructor
	public clsiqtblnews()
	{}
	#endregion

	#region Private Variables
	private int _newsid;
	private string _newstitle;
	private string _newsshortdescription;
	private string _newslongdescription;
	private System.DateTime _newsdate;
	private string _newsimage1;
	private string _newsimage2;
	private string _newsimage3;
	private string _newsimage4;
	private string _newsimage5;
	private string _newsimage6;
	private System.DateTime _createddate;
	private string _createdby;
	private System.DateTime _modifydate;
	private string _modifyby;
	 clsiqtblnews  objclsiqtblnews;
	#endregion

	#region Public Properties
	public int newsid
	{ 
		get { return _newsid; }
		set { _newsid = value; }
	}
	public string newstitle
	{ 
		get { return _newstitle; }
		set { _newstitle = value; }
	}
	public string newsshortdescription
	{ 
		get { return _newsshortdescription; }
		set { _newsshortdescription = value; }
	}
	public string newslongdescription
	{ 
		get { return _newslongdescription; }
		set { _newslongdescription = value; }
	}
	public System.DateTime newsdate
	{ 
		get { return _newsdate; }
		set { _newsdate = value; }
	}
	public string newsimage1
	{ 
		get { return _newsimage1; }
		set { _newsimage1 = value; }
	}
	public string newsimage2
	{ 
		get { return _newsimage2; }
		set { _newsimage2 = value; }
	}
	public string newsimage3
	{ 
		get { return _newsimage3; }
		set { _newsimage3 = value; }
	}
	public string newsimage4
	{ 
		get { return _newsimage4; }
		set { _newsimage4 = value; }
	}
	public string newsimage5
	{ 
		get { return _newsimage5; }
		set { _newsimage5 = value; }
	}
	public string newsimage6
	{ 
		get { return _newsimage6; }
		set { _newsimage6 = value; }
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
				new SqlParameter("@newsid",SqlDbType.Int),
				new SqlParameter("@newstitle",SqlDbType.VarChar),
				new SqlParameter("@newsdate",SqlDbType.DateTime)
			};
			

				if (newsid != 0)
				{
					Params[0].Value = newsid;
				}
				else
				{
					Params[0].Value = DBNull.Value;
				}

				if (newstitle != null)
				{
					Params[1].Value = newstitle;
				}
				else
				{
					Params[1].Value = DBNull.Value;
				}


                if (newsdate != Convert.ToDateTime("1/1/0001 12:00:00 AM"))
				{
					Params[2].Value = newsdate;
				}
				else
				{
					Params[2].Value = DBNull.Value;
				}
			
			ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure,"SP_iqtblnews_Select",Params);
			return ds.Tables[0];
		}
		catch(Exception ex)
		{
			throw new Exception(ex.Message);
		}
	}
    public DataTable SelectTop()
    {
        DataSet ds;
        try
        {
            ds = SqlHelper.ExecuteDataset(con, CommandType.Text, "select top 3 * from iqtblnews order by newsdate desc");
            return ds.Tables[0];
        }
        catch (Exception ex)
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
				new SqlParameter("@newstitle",newstitle),
				new SqlParameter("@newsshortdescription",newsshortdescription),
				new SqlParameter("@newslongdescription",newslongdescription),
				new SqlParameter("@newsdate",newsdate),
				new SqlParameter("@newsimage1",newsimage1),
				new SqlParameter("@newsimage2",newsimage2),
				new SqlParameter("@newsimage3",newsimage3),
				new SqlParameter("@newsimage4",newsimage4),
				new SqlParameter("@newsimage5",newsimage5),
				new SqlParameter("@newsimage6",newsimage6),
				new SqlParameter("@createddate",createddate),
				new SqlParameter("@createdby",createdby)
			};
			int result = SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure,"SP_iqtblnews_Insert",Params);
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
	public bool Update()
	{
		try
		{
			SqlParameter[] Params = 
			{ 
				new SqlParameter("@newsid",newsid),
				new SqlParameter("@newstitle",newstitle),
				new SqlParameter("@newsshortdescription",newsshortdescription),
				new SqlParameter("@newslongdescription",newslongdescription),
				new SqlParameter("@newsdate",newsdate),
				new SqlParameter("@newsimage1",newsimage1),
				new SqlParameter("@newsimage2",newsimage2),
				new SqlParameter("@newsimage3",newsimage3),
				new SqlParameter("@newsimage4",newsimage4),
				new SqlParameter("@newsimage5",newsimage5),
				new SqlParameter("@newsimage6",newsimage6),
				new SqlParameter("@modifydate",modifydate),
				new SqlParameter("@modifyby",modifyby) 
			};
			int result = SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure,"SP_iqtblnews_Update",Params);
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
	public bool Delete()
	{
		try
		{
			SqlParameter[] Params = { new SqlParameter("@newsid",newsid) };
			int result = SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure,"SP_iqtblnews_Delete",Params);
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

    public DataTable TotalNews()
    {
        DataSet ds;
        try
        {
            ds = SqlHelper.ExecuteDataset(con, CommandType.Text, "select count(newsid) as total from tblnews");
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
