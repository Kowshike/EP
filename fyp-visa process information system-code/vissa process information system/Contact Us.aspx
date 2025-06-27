<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Contact Us.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        #form1
        {
            height: 678px;
            top: 15px;
            left: 223px;
            position: absolute;
            width: 784px;
        }
        .style1
        {
            width: 100%;
            height: 123px;
        }
        .style2
        {
            width: 100%;
            height: 136px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="116px" 
                    ImageUrl="~/IMAGES/images/contact_bann.jpg" Width="781px" />
            </td>
        </tr>
    </table>
    <table class="style2">
        <tr>
            <td>
                <asp:Image ID="Image2" runat="server" Height="132px" 
                    ImageUrl="~/IMAGES/images/banner2.gif" Width="777px" />
            </td>
        </tr>
    </table>
    <asp:Label ID="Label1" runat="server" Text="Contact Us" 
        style="position:absolute; top: 322px; left: 322px; width: 117px; height: 24px;" 
        Font-Bold="True" Font-Size="Large" Font-Underline="True" ForeColor="Red"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" PostBackUrl="~/Home.aspx" 
        style="top: 268px; left: 693px; position: absolute; height: 26px; width: 56px; bottom: 384px" 
        Text="Back" />
    <p align="center">
        <span class="text"><strong><font size="-1"><font size="3">Visa consultancy 
        services</font> P. Ltd.</font></strong></span><font size="-1">
        <br />
        <br />
        </font><span class="text"><b>Mr. Vipul Shah</b> - Managing Director<br />
        Mr. Savio D&#39; Mello - Sr. Executive</span>
    </p>
    <p align="center" class="text">
        19, Nanabhay Chambers, 2nd Floor,
        <br />
        Rustom Sidhwa Marg, Gunbow Street ,
        <br />
        Fort, Mumbai - 400 001.<br />
        INDIA
    </p>
    <p align="center" class="text">
        TEL : +91 022 22659584
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+91 022 22650042<br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;+91 022 22679801<br />
        FAX :+91 022 22642448
        <br />
        Email : visacon@vsnl.com</p>
    </form>
</body>
</html>
