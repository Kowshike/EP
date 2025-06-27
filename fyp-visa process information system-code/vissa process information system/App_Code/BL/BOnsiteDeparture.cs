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
/// Summary description for BOnsiteDeparture
/// </summary>
public class BOnsiteDeparture
{
	public BOnsiteDeparture()
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
    private string _Ticket;

    public string Ticket
    {
        get { return _Ticket; }
        set { _Ticket = value; }
    }
    private string _Flightno;

    public string Flightno
    {
        get { return _Flightno; }
        set { _Flightno = value; }
    }
    private string _FFlight;

    public string FFlight
    {
        get { return _FFlight; }
        set { _FFlight = value; }
    }
    private string _TFlight;

    public string TFlight
    {
        get { return _TFlight; }
        set { _TFlight = value; }
    }
    private string _Via;

    public string Via
    {
        get { return _Via; }
        set { _Via = value; }
    }
    private string _FDate;

    public string FDate
    {
        get { return _FDate; }
        set { _FDate = value; }
    }






    public object insertdata()
    {
        //throw new Exception("The method or operation is not implemented.");
        DOnsiteDeparture dobj = new DOnsiteDeparture();
        return dobj.insertdata(this);
    }
}
