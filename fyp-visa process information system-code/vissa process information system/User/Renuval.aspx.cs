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

public partial class User_Default : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    DataSet ds;
    BUserRenuval bobj = new BUserRenuval();

    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible = false;
        Label3.Visible = false;
        Label4.Visible = false;
        if (!IsPostBack)
        {
            getappdata();
        }

    }

    private void getappdata()
    {
        //hrow new Exception("The method or operation is not implemented.");
        SqlDataAdapter da = new SqlDataAdapter("select * from enquiry ", con);
        ds = new DataSet();
        da.Fill(ds);
        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataTextField = "applnID";
        DropDownList1.DataValueField = "applnID";
        DropDownList1.DataBind();

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        SqlDataAdapter da = new SqlDataAdapter("Select *from enquiry where applnID='" + DropDownList1.SelectedItem.ToString() + "'", con);
        ds = new DataSet();
        da.Fill(ds);

        if (ds.Tables[0].Rows.Count > 0)
        {
            Label1.Visible = true;

            Label3.Visible = true;
            Label4.Visible = true;
            Label1.Text = ds.Tables[0].Rows[0][1].ToString();
            Label3.Text = ds.Tables[0].Rows[0][4].ToString();
            Label4.Text = ds.Tables[0].Rows[0][5].ToString();
        }
        else
        {
            Label2.Visible = true;
            Label2.Text = "their is no rows";
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int count = 0;
        SqlDataAdapter da = new SqlDataAdapter("select applnID from renewal", con);
        ds = new DataSet();
        da.Fill(ds);
        for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
        {
            if (ds.Tables[0].Rows[i][0].ToString() == DropDownList1.SelectedItem.ToString())
                count++;
        }
        if (count == 0)
        {
            bobj.AppID = DropDownList1.SelectedItem.ToString();
            bobj.Ename = Label1.Text;
            bobj.Details = Label3.Text;
            bobj.Vdate = Label4.Text;
            if (RadioButton1.Checked == true)
            {
                bobj.Status = "REnuval is needed";
            }
            else { bobj.Status = "REnuval is not needed"; }

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
        else 
        {
            Label2.Visible = true;
            Label2.Text = "already Renuval submited";
        }

    }
    }

