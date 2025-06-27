<%@ Page Language="C#" MasterPageFile="~/Excuter/MasterPage.master" AutoEventWireup="true" CodeFile="Enquiry details.aspx.cs" Inherits="Excuter_Default" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
        ForeColor="Blue" Text="Enquiry Details :" Width="160px"></asp:Label><br />
    <table align="center" style="width: 545px; height: 368px" >
        <tr>
            <td style="width: 135px; height: 21px; text-align: right;">
                ApplicationID:</td>
            <td style="width: 100px; height: 21px;">
               <%-- <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" Width="173px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True">
                    <asp:ListItem Selected="True">Select</asp:ListItem>
                </asp:DropDownList></td>--%>
                <asp:DropDownList ID="DropDownList1" runat="server" 
                    
                    
                    
                    style="top: 310px; left: 369px; position: absolute; height: 24px; width: 145px" 
                    AutoPostBack="True" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
            <td style="width: 107px; height: 21px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="DropDownList1" InitialValue="Select"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 135px; text-align: right; height: 67px;">
                EmpName:</td>
            <td style="width: 100px; height: 67px;">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                    ForeColor="Blue" Width="160px"></asp:Label></td>
            <td style="width: 107px; height: 67px;">
            </td>
        </tr>
        <tr>
            <td style="width: 135px; text-align: right;">
                No of Times:</td>
            <td style="width: 100px">
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                    ForeColor="Blue" Width="160px"></asp:Label></td>
            <td style="width: 107px">
            </td>
        </tr>
        <tr>
            <td style="width: 135px; text-align: right;">
                Country:</td>
            <td style="width: 100px">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                    ForeColor="Blue" Width="160px"></asp:Label></td>
            <td style="width: 107px">
            </td>
        </tr>
        <tr>
            <td style="width: 135px; text-align: right;">
                Type:</td>
            <td style="width: 100px">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                    ForeColor="Blue" Width="160px"></asp:Label></td>
            <td style="width: 107px">
            </td>
        </tr>
        <tr>
            <td style="width: 135px; text-align: right;">
                Passport No</td>
            <td style="width: 100px">
             <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                    ForeColor="Blue" Width="160px"></asp:Label>
                &nbsp;</td>
            <td style="width: 107px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 135px; text-align: right">
                Enquiry Qustion</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
                <cc1:TextBoxWatermarkExtender ID="TextBox1_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox1" WatermarkText="Ask Question">
                </cc1:TextBoxWatermarkExtender>
                                    </td>
            <td style="width: 107px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TextBox1"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 135px; text-align: right">
                Answer</td>
            <td style="width: 100px">
                <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine"></asp:TextBox></td>
            <td style="width: 107px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TextBox2"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 135px; text-align: right">
                EnquiryStatus</td>
            <td style="width: 100px">
                <asp:RadioButton ID="RadioButton1" runat="server" GroupName="status" Text="Completed" />
                <asp:RadioButton ID="RadioButton2" runat="server" Checked="True" GroupName="status"
                    Text="Not Completed" Width="126px" /></td>
            <td style="width: 107px">
            </td>
        </tr>
        <tr>
            <td style="width: 135px; text-align: right">
                Visa Valid&nbsp; Date</td>
            <td align="left" >
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                
                </td>
            <td style="width: 107px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="TextBox3"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 135px; text-align: right">
            </td>
            <td style="width: 100px; text-align: center">
                <%--<asp:Button ID="ButSubmit" runat="server" OnClick="ButSubmit_Click" Text="Submit" />--%><asp:Button 
                    ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" />
            </td>
            <td style="width: 107px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                    ForeColor="Blue" Visible="False" Width="206px"></asp:Label></td>
        </tr>
        </table>
    
   </asp:Content>

