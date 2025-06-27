using System;
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

public partial class _Default : System.Web.UI.Page 
{
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["con"].ConnectionString);
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void Button1_Click(object sender, EventArgs e)
    {
        int result = 0;
        if (TextBox1.Text == "Admin")
        {
           
            
            SqlCommand cmd = new SqlCommand("select count(*) from logindetails where username='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", con);
            try
            {
                cmd.CommandType = CommandType.Text;
                con.Open();
                 result = Convert.ToInt32( cmd.ExecuteScalar());
            }
            catch { throw; }
            finally { con.Close(); }
            
            if (result == 0)
            {
                Label1.Visible = true;
                Label1.Text = "username and password are involied";
            }
            else
            {
               FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, CheckBox1.Checked);
               Response.Redirect("Admin/delete.aspx");


               
            }
        }
        else 
        {
           
            SqlCommand cmd = new SqlCommand("select count(*) from executive where name='" + TextBox1 .Text  + "' and password='" + TextBox2 .Text  + "'", con);
            try
            {
                cmd.CommandType = CommandType.Text;
                con.Open();
                 result = Convert.ToInt32(cmd.ExecuteScalar());
            }
            catch { throw; }
            finally { con.Close();  }
            if (result == 0)
            {
                Label1.Visible = true;
                Label1.Text = "username and password are involied";
            }
            else
            {
               FormsAuthentication.RedirectFromLoginPage(TextBox1.Text, CheckBox1.Checked);

               Response.Redirect("Excuter/hrmain.aspx");


            }

        }
    }
            }

