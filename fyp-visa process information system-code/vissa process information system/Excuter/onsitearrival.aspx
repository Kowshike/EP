<%@ Page Language="C#" MasterPageFile="~/Excuter/MasterPage.master" AutoEventWireup="true" CodeFile="onsitearrival.aspx.cs" Inherits="Excuter_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
        ForeColor="Blue" Text="On site Arrival  :" Width="160px"></asp:Label>&nbsp;
    <br />
    <table align="center">
        <tr>
            <td style="width: 91px; height: 21px; text-align: right">
                ApplicationID:</td>
            <td style="width: 116px; height: 21px">
               <%-- <asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
                    OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="193px">
                    <asp:ListItem Selected="True">Select</asp:ListItem>
                </asp:DropDownList></td>--%>
                
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    Height="17px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    Width="148px">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
                
&nbsp;<td style="width: 107px; height: 21px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1"
                    ErrorMessage="*" InitialValue="Select"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 91px; text-align: right">
                EmpName:</td>
            <td style="width: 116px">
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                    ForeColor="Blue" Width="160px"></asp:Label></td>
            <td style="width: 107px">
            </td>
        </tr>
        <tr>
            <td style="width: 91px; text-align: right">
                Country:</td>
            <td style="width: 116px">
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                    ForeColor="Blue" Width="160px"></asp:Label></td>
            <td style="width: 107px">
            </td>
        </tr>
        <tr>
            <td style="width: 91px; text-align: right">
                Type:</td>
            <td style="width: 116px">
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                    ForeColor="Blue" Width="160px"></asp:Label></td>
            <td style="width: 107px">
            </td>
        </tr>
        <tr>
            <td style="width: 91px; text-align: right">
                TicketNO:</td>
            <td style="width: 116px">
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
            <td style="width: 107px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="Enter Ticket NO" ValidationExpression="^[A-Za-z0-9]+$"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 91px; text-align: right">
                FlightNO:</td>
            <td style="width: 116px">
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
            <td style="width: 107px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox2"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2"
                    ErrorMessage="Enter Flight NO" ValidationExpression="^[A-Za-z0-9]+$"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 91px; height: 16px; text-align: right">
                FlightFrom</td>
            <td style="width: 116px; height: 16px">
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
            <td style="width: 107px; height: 16px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox3"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox3"
                    ErrorMessage="Enter Flight From" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 91px; text-align: right">
                Via</td>
            <td style="width: 116px">
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
            <td style="width: 107px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="TextBox4"
                    ErrorMessage="Enter via" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 91px; text-align: right">
                FlightTo</td>
            <td style="width: 116px">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
            <td style="width: 107px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox5"
                    ErrorMessage="Enter Flight TO" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 91px; text-align: right">
                FlightDate</td>
            <td align="left" >
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>&nbsp;</td>
            <td style="width: 107px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6"
                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 91px; height: 26px; text-align: right">
            </td>
            <td style="width: 116px; height: 26px; text-align: center">
                <asp:Button ID="Button2" runat="server" Text="submit" onclick="Button2_Click" />
               </td>
            <td style="width: 107px; height: 26px">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                    ForeColor="Blue" Visible="False" Width="206px"></asp:Label></td>
        </tr>
    </table>
    <br />
    <br />
    <table>
        <tr>
            <td style="width: 100px">
                <asp:Button ID="Button3" runat="server" Text="Update" onclick="Button3_Click" 
                    
                    style="top: 671px; left: 227px; position: absolute; height: 26px; width: 61px" 
                    CausesValidation="False" />
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
               <%-- <asp:GridView ID="GridView1" runat="server" Visible="False" AutoGenerateEditButton="True" DataKeyNames="applnID" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing" OnRowUpdating="GridView1_RowUpdating">
                </asp:GridView>--%>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateEditButton="True">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

