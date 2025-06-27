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
/// Summary description for BNewExective
/// </summary>
public class BNewExective
{
	public BNewExective()
	{
		//
		// TODO: Add constructor logic here
		//
	}
    private string _ExId;

    public string ExId
    {
        get { return _ExId; }
        set { _ExId = value; }
    }
    private string _ExName;

    public string ExName
    {
        get { return _ExName; }
        set { _ExName = value; }
    }
    private string _Pass;

    public string Pass
    {
        get { return _Pass; }
        set { _Pass = value; }
    }
    private string _DOB;

    public string DOB
    {
        get { return _DOB; }
        set { _DOB = value; }
    }
    private string _Mail;

    public string Mail
    {
        get { return _Mail; }
        set { _Mail = value; }
    }
    private string _PNO;

    public string PNO
    {
        get { return _PNO; }
        set { _PNO = value; }
    }
    private string _Address;

    public string Address
    {
        get { return _Address; }
        set { _Address = value; }

    }

    public object insertdata()

    {
        DNewExective dobj1 = new DNewExective();
        return dobj1.insertdata(this);


    }
   



}
