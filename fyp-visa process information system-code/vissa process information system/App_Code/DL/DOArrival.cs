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
/// Summary description for DOArrival
/// </summary>
public class DOArrival
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    public DOArrival()
    {
        //
        // TODO: Add constructor logic here
        //
    }
    internal object insertdata(BOArrival bOArrival)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("insert into onsitedarrival values('" + bOArrival.ApplID + "','" + bOArrival.Ename + "','" + bOArrival.Ticket + "','" + bOArrival.Flightno + "','" + bOArrival.FFlight + "','" + bOArrival.Via + "','" + bOArrival.TFlight + "','" + bOArrival.FDate + "')", con);
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