<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About us.aspx.cs" Inherits="Default3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        #form1
        {
            top: 15px;
            left: 93px;
            position: absolute;
            height: 670px;
            width: 823px;
        }
        .style1
        {
            width: 100%;
            height: 113px;
        }
        .style2
        {
            width: 100%;
            height: 514px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table class="style1">
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" Height="150px" 
                    ImageUrl="~/IMAGES/images/banner2.gif" Width="816px" />
            </td>
        </tr>
    </table>
    <table class="style2">
        <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="About Us" 
                    style="position:absolute; top: 191px; left: 346px;" Font-Bold="True" 
                    Font-Size="Large" Font-Underline="True" ForeColor="#003399"></asp:Label>
                <p>
&nbsp;<asp:Button ID="Button1" runat="server" PostBackUrl="~/Home.aspx" 
                        style="top: 168px; left: 734px; position: absolute; height: 26px; width: 56px" 
                        Text="Back" />
                </p>
                <p>
                    Viss(VOIS) team members have been helping thousands of people to navigate 
                    bureaucracies and solve passport and visa problems for over 8 years. Our 
                    experience and contact list provides your customers with a direct link to the 
                    best professionals in US Passport and Travel Visa Expediting industry. Our 
                    business model is based on four principles:</p>
                <p>
                    &nbsp;</p>
                <ul>
                    <li><strong>Speed</strong>: All documents are processed as soon as received 
                        (same-day submitted to the consulate and same-day shipped back after received 
                        from the consulate). Our staff is used to work within very tight deadlines and 
                        with missing documentation. None of the situation is impossible; we always find 
                        a way.</li>
                    <li><strong>Price</strong>: We offer best price for both budget-oriented and 
                        last-minute travelers. We stand behind our commitments. We&nbsp; or we will 
                        refund all service fees.</li>
                    <li><strong>Customer Service</strong>: We believe that friendly and responsive 
                        customer service is key success factor. Our team members are trained to reply to 
                        their emails and return missed calls within an hour. We have personnel to handle 
                        customer inquiries on weekends and holidays.</li>
                    <li><strong>Privacy &amp; Security</strong>: Our website uses Premium Extended 
                        Validation SSL certificate, which is the highest level of online assurance 
                        available today. All the data coming from website to our database are highly 
                        secured with 2048 bit encryption. The customer private information (such as 
                        credit card info) are encrypted in the database and destroyed after the 
                        successful transaction. We do not store client’s credit card information. 
                        Additionally, we shred all customer related paper documents every 6 months.
                    </li>
                </ul>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
