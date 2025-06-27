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
/// Summary description for DEnquiry
/// </summary>
public class DEnquiry
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

    public DEnquiry()
    {
        //
        // TODO: Add constructor logic here
        //
    }

    
    internal object insertdata(BEnquriy bEnquriy)
    {
        try
        {
            SqlCommand cmd = new SqlCommand("insert into enquiry values('" + bEnquriy.ApplID + "','" + bEnquriy.Ename + "','" + bEnquriy.Query + "','"+bEnquriy.Ans+"','" + bEnquriy.Status + "','" + bEnquriy.VVdate + "')", con);
            cmd.CommandType = CommandType.Text;
            con.Open();
            return cmd.ExecuteNonQuery();
        }
        catch{throw;}
        finally
        {
            con.Close();
        }

    }

}


