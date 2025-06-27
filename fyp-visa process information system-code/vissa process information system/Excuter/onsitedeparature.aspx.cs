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
    BOnsiteDeparture bobj = new BOnsiteDeparture();
    protected void Page_Load(object sender, EventArgs e)
    {

        Label2.Visible = false;
        Label3.Visible = false;

        Label5.Visible = false;
        Label6.Visible = false;
        if (!IsPostBack)
        {
            GetData();
        }
    }

    private void GetData()
    {
        //hrow new Exception("The method or operation is not implemented.");
        SqlDataAdapter da = new SqlDataAdapter("select * from applicationenttry ", con);
        ds = new DataSet();
        da.Fill(ds);
        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataTextField = "applID";
        DropDownList1.DataValueField = "applID";
        DropDownList1.DataBind();
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("select * from applicationenttry where applID='" + DropDownList1.SelectedItem.ToString() + "'", con);
        ds = new DataSet();
        da.Fill(ds);
        Label3.Visible = true;

        Label5.Visible = true;
        Label6.Visible = true;
        Label3.Text = ds.Tables[0].Rows[0][2].ToString();

        Label5.Text = ds.Tables[0].Rows[0][4].ToString();
        Label6.Text = ds.Tables[0].Rows[0][5].ToString();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        int count = 0;
        SqlDataAdapter da = new SqlDataAdapter("select applnID from onsitedarrival", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            if (ds.Tables[0].Rows[i][0].ToString() == DropDownList1.SelectedItem.ToString())
            {
                count++;
            }
        }
        if (count == 0)
        {
            bobj.ApplID = DropDownList1.SelectedItem.ToString();
            bobj.Ename = Label3.Text;
            bobj.Ticket = TextBox1.Text;
            bobj.Flightno = TextBox2.Text;
            bobj.FFlight = TextBox3.Text;
            bobj.Via = TextBox4.Text;
            bobj.TFlight = TextBox5.Text;
            bobj.FDate = TextBox6.Text;
            int result;
            result = Convert.ToInt32(bobj.insertdata());
            if (result > 0)
            {
                Label2.Visible = true;
                Label2.Text = "Row inserted ";
                DropDownList1.SelectedIndex = 0;

                foreach (Control ctrl in ((ContentPlaceHolder)Master.FindControl("ContentPlaceHolder1")).Controls)
                {
                    if (ctrl.GetType() == typeof(TextBox))
                    {
                        ((TextBox)ctrl).Text = string.Empty;
                    }
                }

            }
        }
        else
        {
            Label2.Visible = true;
            Label2.Text = "Alreadu Departure time is fixed ";
            foreach (Control ctrl in ((ContentPlaceHolder)Master.FindControl("ContentPlaceHolder1")).Controls)
            {
                if (ctrl.GetType() == typeof(TextBox))
                {
                    ((TextBox)ctrl).Text = string.Empty;
                }
            }
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        getgriddata();
    }
    private void getgriddata()
    {
        GridView1.Visible = true;
        SqlDataAdapter da = new SqlDataAdapter("select * from onsiteddeparture", con);
        ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
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
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        string s1 = GridView1.DataKeys[0].Value.ToString();
        string s2 = ((TextBox)GridView1.Rows[e.RowIndex].Cells[2].Controls[0]).Text;
        string s3 = ((TextBox)GridView1.Rows[e.RowIndex].Cells[3].Controls[0]).Text;
        string s4 = ((TextBox)GridView1.Rows[e.RowIndex].Cells[4].Controls[0]).Text;
        string s5 = ((TextBox)GridView1.Rows[e.RowIndex].Cells[5].Controls[0]).Text;
        string s6 = ((TextBox)GridView1.Rows[e.RowIndex].Cells[6].Controls[0]).Text;
        string s7 = ((TextBox)GridView1.Rows[e.RowIndex].Cells[7].Controls[0]).Text;
        string s8 = ((TextBox)GridView1.Rows[e.RowIndex].Cells[8].Controls[0]).Text;
        SqlDataAdapter da = new SqlDataAdapter("update onsiteddeparture set empname='" + s2 + "',ticketno='" + s3 + "',flightno='" + s4 + "',f_from='" + s5 + "',via='" + s6 + "',f_to='" + s7 + "',f_date='" + s8 + "' where applnID='" + s1 + "'", con);
        ds = new DataSet();
        da.Fill(ds);
        GridView1.EditIndex = -1;
        getgriddata();
    }
}
