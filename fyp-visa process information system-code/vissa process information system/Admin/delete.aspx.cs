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

public partial class Admin_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    DataSet ds;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetData();
        }
    }

    private void GetData()
    {
        //throw new Exception("The method or operation is not implemented.");
        SqlDataAdapter da = new SqlDataAdapter("select * from executive", con);
        ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();

    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        GetData();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string s = GridView1.Rows[e.RowIndex].Cells[1].Text;
        SqlDataAdapter da = new SqlDataAdapter("delete executive where exeid='" + s + "';", con);
        ds = new DataSet(); 
        da.Fill(ds);
        GetData();       
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        GetData();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string s1 = GridView1.DataKeys[0].Value.ToString();
        string s2 = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string s3 = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string s4 = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        string s5 = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        string s6 = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
        string s7 = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
        SqlDataAdapter da = new SqlDataAdapter("update executive set name='" + s2 + "',password='" + s3 + "',dob='" + s4 + "',mailID='" + s5 + "',phno='" + s6 + "',address='" + s7 + "' where exeid='" + s1 + "'", con);
        ds = new DataSet();
        da.Fill(ds);
        GridView1.EditIndex = -1;
        GetData();
    }
}
