<%@ Page Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="applicat.aspx.cs" Inherits="User_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <table align="center" style="width: 824px; height: 137px" >
        <caption>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                ForeColor="Maroon" Text="Visa Application" Width="450px"></asp:Label></caption>
        <tr>
            <td style="width: 131px">
                Select Ur HR-Executive</td>
            <td style="width: 74px">
                <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" 
                    Width="159px" onselectedindexchanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Selected="True">Select</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 122px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1"
                    ErrorMessage="*" InitialValue="Select"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 131px">
                Enter Emp Name</td>
            <td style="width: 74px">
                <asp:TextBox ID="TxtName" runat="server"></asp:TextBox></td>
            <td style="width: 122px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtName"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtName"
                    ErrorMessage="Enter Text only" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 131px">
                No of Times</td>
            <td style="width: 74px">
                <asp:DropDownList ID="DropDownList2" runat="server" AppendDataBoundItems="True" Width="159px">
                    <asp:ListItem Selected="True">Select</asp:ListItem>
                    <asp:ListItem>First</asp:ListItem>
                    <asp:ListItem>Second</asp:ListItem>
                    <asp:ListItem>Third</asp:ListItem>
                </asp:DropDownList></td>
            <td style="width: 122px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList2"
                    ErrorMessage="*" InitialValue="Select"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 131px">
                Country</td>
            <td style="width: 74px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            <td style="width: 122px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3"
                    ErrorMessage="Enter Text only" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 131px">
                Type</td>
            <td style="width: 74px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
            <td style="width: 122px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4"
                    ErrorMessage="Enter Text only" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 131px">
                PassportNo</td>
            <td style="width: 74px">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            </td>
            <td style="width: 122px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Enter PassportNo" 
                    ValidationExpression="^[A-Za-z0-9]+$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 131px">
            </td>
            <td style="width: 74px">
                <asp:Button ID="Button1" runat="server" Text="Submit" onclick="Button1_Click" 
                    style="height: 26px" />
            </td>
            <td style="width: 122px">
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False" Width="446px"></asp:Label></td>
        </tr>
    </table>
</asp:Content>

