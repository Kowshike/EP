using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;


public partial class Excuter_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

        SqlDataAdapter da = new SqlDataAdapter("select * from applicationenttry", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView2.DataSource = ds.Tables[0];
        GridView2.DataBind();
    }
    
   
}
