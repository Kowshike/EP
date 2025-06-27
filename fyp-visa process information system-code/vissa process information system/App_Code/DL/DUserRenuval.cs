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
/// Summary description for DUserRenuval
/// </summary>
public class DUserRenuval
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

	public DUserRenuval()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    internal object insertdt(BUserRenuval buserRenuval)
    {
        try
        {
            con.Open();
            //throw new Exception("The method or operation is not implemented.");
            SqlCommand cmd = new SqlCommand("insert into  renewal values('" + buserRenuval.AppID + "','" + buserRenuval.Ename + "','" + buserRenuval.Details + "','" + buserRenuval.Vdate + "','null','null','" + buserRenuval.Status + "')", con);
            cmd.CommandType = CommandType.Text;
            return cmd.ExecuteNonQuery();
        }
        catch { throw; }
        finally { con.Close(); }
    }
}
