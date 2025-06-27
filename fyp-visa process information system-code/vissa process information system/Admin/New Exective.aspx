<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="New Exective.aspx.cs" Inherits="Admin_Default" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100px;
            height: 45px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table align="center" style="width: 483px; height: 245px">
        <caption>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                ForeColor="Maroon" Text="Create new Executer" Width="308px"></asp:Label></caption>
        <tr>
            <td style="text-align: right" class="style4">
                Name</td>
            <td class="style4">
                <asp:TextBox ID="TxtName" runat="server" Height="22px"></asp:TextBox>
                <cc1:TextBoxWatermarkExtender ID="TxtName_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="TxtName" WatermarkText="Enter Name">
                </cc1:TextBoxWatermarkExtender>
            </td>
            <td class="style4">
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False" Width="143px"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ControlToValidate="TxtName"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtName"
                    ErrorMessage="EnterText Only" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 100px; text-align: right">
                Password</td>
            <td style="width: 100px">
                <asp:TextBox ID="TxtPass" runat="server" TextMode="Password"></asp:TextBox>
                <cc1:TextBoxWatermarkExtender ID="TxtPass_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="TxtPass" WatermarkText="Enter password">
                </cc1:TextBoxWatermarkExtender>
                                </td>
            <td style="width: 100px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ControlToValidate="TxtPass"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="Right"  >
                DOB</td>
            <td align="left"  >
                <asp:TextBox ID="TxtDOB" runat="server"></asp:TextBox>
                <cc1:CalendarExtender ID="TxtDOB_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="TxtDOB">
                </cc1:CalendarExtender>
                &nbsp;</td>
            <td style="width: 100px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*" ControlToValidate="TxtDOB"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 100px; text-align: right">
                E-MailID</td>
            <td style="width: 100px">
                <asp:TextBox ID="TxtMail" runat="server"></asp:TextBox>
                <cc1:TextBoxWatermarkExtender ID="TxtMail_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="TxtMail" WatermarkText="Enter Email">
                </cc1:TextBoxWatermarkExtender>
                                </td>
            <td style="width: 100px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*" ControlToValidate="TxtMail"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TxtMail"
                    ErrorMessage="Enter CrrectID" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 100px; text-align: right">
                Phone NO</td>
            <td style="width: 100px">
                <asp:TextBox ID="TxtPhone" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*" ControlToValidate="TxtPhone"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtPhone"
                    ErrorMessage="Enter Phone no" ValidationExpression="\d{10}"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 100px; text-align: right">
                Address</td>
            <td style="width: 100px">
                <asp:TextBox ID="TxtAddress" runat="server"></asp:TextBox></td>
            <td style="width: 100px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="*" ControlToValidate="TxtAddress"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TxtAddress"
                    ErrorMessage="Enter Address Only" ValidationExpression="^[A-Za-z0-9]+$"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px; text-align: center">
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                    style="height: 26px" />
    </td>
            <td style="width: 100px">
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False" Width="144px"></asp:Label></td>
        </tr>
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
    </table>
   
</asp:Content>

