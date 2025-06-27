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
/// Summary description for DOnsiteDeparture
/// </summary>
public class DOnsiteDeparture
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
	public DOnsiteDeparture()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    internal object insertdata(BOnsiteDeparture bOnsiteDeparture)
    {
        // throw new Exception("The method or operation is not implemented.");
        try
        {
            SqlCommand cmd = new SqlCommand("insert into onsiteddeparture values('" + bOnsiteDeparture.ApplID + "','" + bOnsiteDeparture.Ename + "','" + bOnsiteDeparture.Ticket + "','" + bOnsiteDeparture.Flightno + "','" + bOnsiteDeparture.FFlight + "','" + bOnsiteDeparture.Via + "','" + bOnsiteDeparture.TFlight + "','" + bOnsiteDeparture.FDate + "')", con);
            cmd.CommandType = CommandType.Text;
            con.Open();
            return cmd.ExecuteNonQuery();
        }
        catch { throw; }
        finally
        {
            con.Close();
        }
    }
}
