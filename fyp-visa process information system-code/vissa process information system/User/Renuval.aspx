<%@ Page Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="Renuval.aspx.cs" Inherits="User_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 135px;
            height: 24px;
        }
        .style5
        {
            width: 122px;
            height: 24px;
        }
        .style6
        {
            width: 68px;
            height: 24px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
    <br />
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
        ForeColor="Blue" Text="Employee Renuval :" Width="160px"></asp:Label><br />
    <table align="center" style="width: 620px; height: 205px" >
        <tr>
            <td style="width: 135px; text-align: right;">
                Select Ur ApplicationID :</td>
            <td style="width: 122px">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="23px" 
                    onselectedindexchanged="DropDownList1_SelectedIndexChanged" Width="159px" 
                    AutoPostBack="True">
                    <asp:ListItem>select</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td style="width: 68px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1"
                    ErrorMessage="*" InitialValue="Select"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="text-align: right;" class="style4">
                Emp Name :</td>
            <td class="style5">
                <asp:Label ID="Label1" runat="server" ForeColor="Blue" Text="Label" Visible="False"
                    Width="133px"></asp:Label></td>
            <td class="style6">
            </td>
        </tr>
        <tr>
            <td style="width: 135px; text-align: right;">
                Status&nbsp; :</td>
            <td style="width: 122px">
                <asp:Label ID="Label3" runat="server" ForeColor="Blue" Text="Label" Visible="False"
                    Width="133px"></asp:Label></td>
            <td style="width: 68px">
            </td>
        </tr>
        <tr>
            <td style="width: 135px; text-align: right;">
                Visa Valid Date :</td>
            <td style="width: 122px">
                <asp:Label ID="Label4" runat="server" ForeColor="Blue" Text="Label" Visible="False"
                    Width="133px"></asp:Label></td>
            <td style="width: 68px">
            </td>
        </tr>
        <tr>
            <td style="width: 135px; text-align: right;">
                Renuval :</td>
            <td style="width: 122px">
                <asp:RadioButton ID="RadioButton1" runat="server" Checked="True" GroupName="renuval"
                    Text="YES" />
                <asp:RadioButton ID="RadioButton2" runat="server" GroupName="renuval" Text="NO" /></td>
            <td style="width: 68px">
            </td>
        </tr>
        <tr>
            <td style="width: 135px">
            </td>
            <td style="width: 122px">
            </td>
            <td style="width: 68px">
            </td>
        </tr>
        <tr>
            <td style="width: 135px; height: 29px;">
            </td>
            <td style="width: 122px; text-align: center; height: 29px;">
                <asp:Button ID="Button1" runat="server" Text="Apply" OnClick="Button1_Click" 
                    CausesValidation="False" /></td>
            <td style="width: 68px; height: 29px;">
                <asp:Label ID="Label2" runat="server" ForeColor="#FF8000" Text="Label" Visible="False"
                    Width="195px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

