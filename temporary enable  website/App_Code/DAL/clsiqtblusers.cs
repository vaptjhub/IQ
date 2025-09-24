using System;
using System.Collections.Generic;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using Microsoft.ApplicationBlocks.Data;
using System.Configuration;

namespace DatabaseLayer
{
	public class clsiqtblusers
	{
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["ConnectionString"].ToString());
	#region Constructor
	public clsiqtblusers()
	{}
	#endregion

	#region Private Variables
	private int _userid;
	private string _username;
	private string _email;
	private string _password;
	private string _type;
	private string _userblock;
	 clsiqtblusers  objclsiqtblusers;
	#endregion

	#region Public Properties
	public int userid
	{ 
		get { return _userid; }
		set { _userid = value; }
	}
	public string username
	{ 
		get { return _username; }
		set { _username = value; }
	}
	public string email
	{ 
		get { return _email; }
		set { _email = value; }
	}
	public string password
	{ 
		get { return _password; }
		set { _password = value; }
	}
	public string type
	{ 
		get { return _type; }
		set { _type = value; }
	}
	public string userblock
	{ 
		get { return _userblock; }
		set { _userblock = value; }
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
				new SqlParameter("@userid",SqlDbType.Int),
				new SqlParameter("@username",SqlDbType.VarChar),
				new SqlParameter("@email",SqlDbType.VarChar),
				new SqlParameter("@password",SqlDbType.VarChar),
				new SqlParameter("@type",SqlDbType.VarChar),
				new SqlParameter("@userblock",SqlDbType.VarChar) 
			};
			

				if (userid != 0)
				{
					Params[0].Value = userid;
				}
				else
				{
					Params[0].Value = DBNull.Value;
				}

				if (username != null)
				{
					Params[1].Value = username;
				}
				else
				{
					Params[1].Value = DBNull.Value;
				}

				if (email != null)
				{
					Params[2].Value = email;
				}
				else
				{
					Params[2].Value = DBNull.Value;
				}

				if (password != null)
				{
					Params[3].Value = password;
				}
				else
				{
					Params[3].Value = DBNull.Value;
				}

				if (type != null)
				{
					Params[4].Value = type;
				}
				else
				{
					Params[4].Value = DBNull.Value;
				}

				if (userblock != null)
				{
					Params[5].Value = userblock;
				}
				else
				{
					Params[5].Value = DBNull.Value;
				}

			
			ds = SqlHelper.ExecuteDataset(con, CommandType.StoredProcedure,"SP_iqtblusers_Select",Params);
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
				new SqlParameter("@username",username),
				new SqlParameter("@email",email),
				new SqlParameter("@password",password),
				new SqlParameter("@type",type),
				new SqlParameter("@userblock",userblock) 
			};
			int result = SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure,"SP_iqtblusers_Insert",Params);
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
				new SqlParameter("@userid",userid),
				new SqlParameter("@username",username),
				new SqlParameter("@email",email),
				new SqlParameter("@password",password),
				new SqlParameter("@type",type),
				new SqlParameter("@userblock",userblock) 
			};
			int result = SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure,"SP_iqtblusers_Update",Params);
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
			SqlParameter[] Params = { new SqlParameter("@userid",userid) };
			int result = SqlHelper.ExecuteNonQuery(con, CommandType.StoredProcedure,"SP_iqtblusers_Delete",Params);
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
	#endregion

	}
}
