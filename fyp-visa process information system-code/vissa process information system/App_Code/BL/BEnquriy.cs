using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

/// <summary>
/// Summary description for BEnquriy
/// </summary>
public class BEnquriy
{
	public BEnquriy()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    private string _ApplID;

    public string ApplID
    {
        get { return _ApplID; }
        set { _ApplID = value; }

    }
    private string _Ename;

    public string Ename
    {
        get { return _Ename; }
        set { _Ename = value; }
    }
    private string _Query;

    public string Query
    {
        get { return _Query; }
        set { _Query = value; }
    }
    private string _Ans;
    public string Ans
    {
        get { return _Ans; }
        set { _Ans = value; }
    }

    private string _Status;
    public string Status
    {
        get { return _Status; }
        set { _Status = value; }
    }
    private string _VVdate;
    public string VVdate
    {
        get { return _VVdate; }
        set { _VVdate = value; }
    }
    public object insertdata()
    {
        DEnquiry dobj=new DEnquiry();
        return dobj.insertdata(this);

    }


    }

