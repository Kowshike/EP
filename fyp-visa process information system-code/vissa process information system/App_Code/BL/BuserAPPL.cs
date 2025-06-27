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
/// Summary description for BuserAPPL
/// </summary>
public class BuserAPPL
{
	public BuserAPPL()
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
    private string _exeID;

    public string exeID
    {
        get { return _exeID; }
        set { _exeID = value; }
    }
    private string _Empname;

    public string Empname
    {
        get { return _Empname; }
        set { _Empname = value; }
    }
    private string _Nooftimes;

    public string Nooftimes
    {
        get { return _Nooftimes; }
        set { _Nooftimes = value; }
    }
    private string _Country;

    public string Contry
    {
        get { return _Country; }
        set { _Country = value; }
    }
    private string _Type;

    public string Type
    {
        get { return _Type; }
        set { _Type = value; }
    }

    private string _PassportNo;
        
        public string PassportNo
        {
            get{return _PassportNo; }
            set{_PassportNo=value; }
        }


    public object insertdata()
    {
        //throw new Exception("The method or operation is not implemented.");
        DuserAPPL dobj = new DuserAPPL();
        return dobj.insertdata(this);
    }
}
