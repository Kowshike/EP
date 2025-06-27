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
/// Summary description for BUserRenuval
/// </summary>
public class BUserRenuval
{
	public BUserRenuval()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    private string _AppID;

    public string AppID
    {
        get { return _AppID; }
        set { _AppID = value; }
    }
    private string _Ename;

    public string Ename
    {
        get { return _Ename; }
        set { _Ename = value; }
    }

    private string _Details;

    public string Details
    {
        get { return _Details; }
        set { _Details = value; }
    }
    private string _Vdate;

    public string Vdate
    {
        get { return _Vdate; }
        set { _Vdate = value; }
    }
    private string _Status;

    public string Status
    {
        get { return _Status; }
        set { _Status = value; }
    }





    public object insertdata()
    {
        //throw new Exception("The method or operation is not implemented.");
        DUserRenuval dobj = new DUserRenuval();
        return dobj.insertdt(this);
    }
}
