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
    DataSet ds;
    SqlDataAdapter da;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        if (!IsPostBack)
        {
            getdropdata();
        }
    }
    private void getdropdata()
    {
        //throw new Exception("The method or operation is not implemented.");
        da = new SqlDataAdapter("select * from renewal where status='REnuval is needed'", con);
        ds = new DataSet();
        da.Fill(ds);
        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataTextField = "applnID";
        DropDownList1.DataValueField = "applnID";
        DropDownList1.DataBind();
    }




   
    protected void Button3_Click1(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("update renewal set extendate_from='" + TextBox1.Text + "', extendate_to='" + TextBox2.Text + "', status='OK'", con);
        con.Open();
        cmd.CommandType = CommandType.Text;
        int result = Convert.ToInt32(cmd.ExecuteNonQuery());
        if (result > 0)
        {
            Label2.Visible = true;
            Label2.Text = "Renuval completed";
            DropDownList1.SelectedIndex = 0;

            foreach (Control ctrl in ((ContentPlaceHolder)Master.FindControl("ContentPlaceHolder1")).Controls)
            {
                if (ctrl.GetType() == typeof(TextBox))
                {
                    ((TextBox)ctrl).Text = string.Empty;
                }
            }
            getdropdata();
        }
        else
        {
            Label2.Visible = true;
            Label2.Text = "Renuval not completed ";
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

        da = new SqlDataAdapter("select *from renewal where applnID='" + DropDownList1.SelectedItem.ToString() + "'", con);
        ds = new DataSet();
        da.Fill(ds);
        Label1.Visible = true;

        Label3.Visible = true;
        Label4.Visible = true;
        Label1.Text = ds.Tables[0].Rows[0][1].ToString();
        Label3.Text = ds.Tables[0].Rows[0][2].ToString();
        Label4.Text = ds.Tables[0].Rows[0][3].ToString();
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        getgriddata();
    }
    private void getgriddata()
    {
        GridView1.Visible = true;
        SqlDataAdapter da = new SqlDataAdapter("select applnID,ename,details,validdate,extendate_from,extendate_to from renewal", con);
        ds = new DataSet();
        da.Fill(ds); 
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string s1 = GridView1.DataKeys[0].Value.ToString();
        string s2 = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        string s3 = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
        SqlDataAdapter da = new SqlDataAdapter("update renewal set extendate_from='" + s2 + "',extendate_to='" + s3 + "' where applnID='" + s1 + "'", con);
        ds = new DataSet();
        da.Fill(ds);
        GridView1.EditIndex = -1;
        getgriddata();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        getgriddata();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        getgriddata();
    }
}
