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
    BNewExective obj1 = new BNewExective();
    DataSet ds = new DataSet();
    int id;
    string s;
   

    protected void Page_Load(object sender, EventArgs e)
    {
        int i;

        Label3.Visible = false;

        SqlDataAdapter da = new SqlDataAdapter("select exeID from executive;select name from executive", con);

        da.Fill(ds);

        try
        {
            i = ds.Tables[0].Rows.Count - 1;
            s = ds.Tables[0].Rows[i]["exeID"].ToString();
        }
        catch (Exception r)
        {

            s = "EXE-00";
        }
        string ss = s.Substring(4);
        id = Convert.ToInt32(ss);


        


    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        id++;
        string s = "EXE-" + id;
        int count = 0;
        for (int j = 0; j < ds.Tables[1].Rows.Count; j++)
        {
            if (ds.Tables[1].Rows[j][0].ToString() == TxtName.Text)
                count++;
 
        }
        if (count == 0)
        {
            obj1.ExId = s;
       obj1.ExName=TxtName.Text;
            obj1.Pass = TxtPass.Text;
            obj1.DOB = TxtDOB.Text;
            obj1.Mail = TxtMail.Text;
            obj1.PNO = TxtPhone.Text;
            obj1.Address = TxtAddress.Text;
            int result;
            result = Convert.ToInt32(obj1.insertdata());
            if (result > 0)
            {
                Label3.Visible = true;
                Label3.Text = "Row inserted ";
            }
            else
            {
                Label3.Visible = true;
                Label3.Text = "Row not inserted ";
            }

        }
        else 
        {
            Label2.Visible = true;
            Label2.Text = "the name alredy exists";
        }

    
    }
        
}
