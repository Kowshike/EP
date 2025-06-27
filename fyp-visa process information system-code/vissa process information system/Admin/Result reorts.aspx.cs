﻿using System;
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
        GridView2.Visible = false;
        GridView1.Visible = false;
        SqlDataAdapter da = new SqlDataAdapter("select *from onsitedarrival;select *from onsiteddeparture", con);
        ds = new DataSet();
        da.Fill(ds);

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;

        GridView2.Visible = false;
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }
    protected void Button2_Click(object sender, EventArgs e)
    {

        GridView2.Visible = true;

        GridView1.Visible = false;
        GridView2.DataSource = ds.Tables[0];
        GridView2.DataBind();

    }
}
