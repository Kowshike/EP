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
/// Summary description for DuserAPPL
/// </summary>
public class DuserAPPL
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
	public DuserAPPL()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    internal object insertdata(BuserAPPL buserAPPL)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("insert into applicationenttry values('" + buserAPPL.AppID + "','" + buserAPPL.exeID + "','" + buserAPPL.Empname + "','" + buserAPPL.Nooftimes + "','" + buserAPPL.Contry + "','" + buserAPPL.Type + "','"+buserAPPL.PassportNo+"')", con);
            cmd.CommandType = CommandType.Text;
            con.Open();
            return cmd.ExecuteNonQuery();
        }
        catch { throw; }
        finally { con.Close(); }

    }
}
