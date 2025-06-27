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

public partial class Excuter_Default2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);

    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        GridView2.Visible = false;
        GridView3.Visible = false;
        GridView4.Visible = false;
        SqlDataAdapter da = new SqlDataAdapter("select *from enquiry;select *from onsitedarrival;select *from onsiteddeparture;select applnID,ename,details,validdate,extendate_from,extendate_to from renewal", con);
        ds = new DataSet();
        da.Fill(ds);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        GridView2.Visible = false;
        GridView3.Visible = false;
        GridView4.Visible = false;
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        GridView2.Visible = true;
        GridView3.Visible = false;
        GridView4.Visible = false;
        GridView2.DataSource = ds.Tables[1];
        GridView2.DataBind();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        GridView2.Visible = false;
        GridView3.Visible = true;
        GridView4.Visible = false;
        GridView3.DataSource = ds.Tables[2];
        GridView3.DataBind();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        GridView2.Visible = false;
        GridView3.Visible = false;
        GridView4.Visible = true;
        GridView4.DataSource = ds.Tables[0];
        GridView4.DataBind();
    }
}
