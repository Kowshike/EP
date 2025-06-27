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
    BuserAPPL obj1 = new BuserAPPL();

    DataSet ds;
    int id;
    string s;
    protected void Page_Load(object sender, EventArgs e)
    {
        Label2.Visible = false;
        int i;
        SqlCommand cmd = new SqlCommand("select count(*) from applicationenttry", con);
        con.Open();
        id = Convert.ToInt32(cmd.ExecuteScalar());
        con.Close();
    


        //SqlDataAdapter da = new SqlDataAdapter("select count(*) from applicationenttry", con);
        //ds = new DataSet();
        //da.Fill(ds);
        //try
        //{
        //    i = ds.Tables[0].Rows.Count - 1;
        //    s = ds.Tables[0].Rows[i]["applID"].ToString();
        //}
        //catch (Exception r)
        //{

        //    s = "APP-0";
        //}
        //string ss = s.Substring(4);
        //id = Convert.ToInt32(ss);

        if (!IsPostBack)
        {
            SqlDataAdapter da1 = new SqlDataAdapter("select exeid,name from executive", con);
            ds = new DataSet();
            da1.Fill(ds);
            DropDownList1.DataSource = ds.Tables[0];
            DropDownList1.DataTextField = "name";
            DropDownList1.DataValueField = "exeid";
            DropDownList1.DataBind();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
         id++;
        string s = "APP-" + id;

        obj1.AppID = s;
        obj1.exeID = DropDownList1.SelectedItem.Value;
        obj1.Empname = TxtName.Text;
        obj1 .Nooftimes =DropDownList2.SelectedItem .ToString ();
        obj1.Contry = TextBox3.Text;
        obj1.Type = TextBox4.Text;
        obj1.PassportNo = TextBox5.Text;
        int result;
        result = Convert.ToInt32(obj1.insertdata());
        if (result > 0)
        {

            Label2.Visible = true;
            
            DropDownList1.SelectedIndex = 0;
            DropDownList2.SelectedIndex = 0;
            foreach (Control ctrl in ((ContentPlaceHolder)Master.FindControl("ContentPlaceHolder1")).Controls)
            {
                if (ctrl.GetType() == typeof(TextBox))
                {
                    ((TextBox)ctrl).Text = string.Empty;
                }
            }
            SqlDataAdapter da = new SqlDataAdapter("select * from applicationenttry", con);
            ds = new DataSet();
            da.Fill (ds);
            int j = ds.Tables[0].Rows.Count-1;
            string s1 = ds.Tables[0].Rows[j][0].ToString()+"(remember this APPLIID)" + "</br>" + ds.Tables[0].Rows[j][2].ToString();
            Label2.Text = s1;
        }
        else
        {
            Label2.Visible = true;
            Label2.Text = "Row not inserted ";
        }


    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}

