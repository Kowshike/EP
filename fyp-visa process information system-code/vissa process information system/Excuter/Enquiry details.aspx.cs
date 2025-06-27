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
    BEnquriy bobj = new BEnquriy();
    int count = 0;
    


    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        Label6.Visible = false;
        Label7.Visible = false;
        if (!IsPostBack)
        {
            GetData();
            SqlCommand cmd = new SqlCommand("select count(*) from applicationenttry", con);
            con.Open();
       
        }
        con.Close();
    }

    private void GetData()
    {
        // throw new Exception("The method or operation is not implemented.");
        SqlDataAdapter da = new SqlDataAdapter("select * from applicationenttry ", con);
        ds = new DataSet();
        da.Fill(ds);
        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataTextField = "applID";
        DropDownList1.DataValueField = "applID";
        DropDownList1.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string s1;

        if (RadioButton1.Checked == true)
        {
            s1 = RadioButton1.Text;
        }
        else
        {
            s1 = RadioButton2.Text;
        }
        if (count == 0)
        {
            bobj.ApplID = DropDownList1.SelectedItem.ToString();
            bobj.Ename = Label3.Text;
            bobj.Query = TextBox1.Text;
            bobj.Ans = TextBox2.Text;
            bobj.Status = s1;
            bobj.VVdate = TextBox3.Text;
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
            else
            {
                Label2.Visible = true;
                Label2.Text = "Row not inserted ";
            }
        }


    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        int count = 0; string s1 = null;
        SqlDataAdapter da = new SqlDataAdapter("select applnID from enquiry", con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            if (ds.Tables[0].Rows[i][0].ToString() == DropDownList1.SelectedItem.ToString())
            {
                count++;
            }
        }
        if (count > 0)
        {
            Label2.Visible = true;
            Label2.Text = "Enquiry alredy completed ";

        }
        SqlDataAdapter da1 = new SqlDataAdapter("select * from applicationenttry where applID='" + DropDownList1.SelectedItem.ToString() + "'", con);
        ds = new DataSet();
        da1.Fill(ds);
        Label3.Visible = true;
        Label4.Visible = true;
        Label5.Visible = true;
        Label6.Visible = true;
        Label7.Visible = true;
        Label3.Text = ds.Tables[0].Rows[0][2].ToString();
        Label4.Text = ds.Tables[0].Rows[0][3].ToString();
        Label5.Text = ds.Tables[0].Rows[0][4].ToString();
        Label6.Text = ds.Tables[0].Rows[0][5].ToString();
        Label7.Text = ds.Tables[0].Rows[0][6].ToString();
    }
}
