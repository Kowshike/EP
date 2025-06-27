using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DNewExective
/// </summary>
public class DNewExective
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
	public DNewExective()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    internal object insertdata(BNewExective bNewExective)
    {
        //hrow new Exception("The method or operation is not implemented.");
        try
        {
            //SqlDataAdapter da = new SqlDataAdapter("insert into logindetails values('" + bNewExective.EXName + "','" + bNewExective.Pass + "','null')", con);
            //DataSet ds = new DataSet();
            //da.Fill(ds);
            SqlCommand cmd = new SqlCommand("sp_newexe", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@exeid", bNewExective.ExId);
            cmd.Parameters.AddWithValue("@name", bNewExective.ExName);
            cmd.Parameters.AddWithValue("@password", bNewExective.Pass);
            cmd.Parameters.AddWithValue("@dob", bNewExective.DOB);
            cmd.Parameters.AddWithValue("@mailID", bNewExective.Mail);
            cmd.Parameters.AddWithValue("@phno", bNewExective.PNO);
            cmd.Parameters.AddWithValue("@address", bNewExective.Address);
            cmd.Parameters.AddWithValue("@type", 'i');
            con.Open();
            return cmd.ExecuteNonQuery();
        }
        catch { throw; }
        finally { con.Close(); }

    }
}
