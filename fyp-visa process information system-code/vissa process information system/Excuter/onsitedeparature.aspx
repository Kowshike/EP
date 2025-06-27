<%@ Page Language="C#" MasterPageFile="~/Excuter/MasterPage.master" AutoEventWireup="true" CodeFile="onsitedeparature.aspx.cs" Inherits="Excuter_Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 100px;
            height: 61px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
        ForeColor="Blue" Text="On site Departure :" Width="160px"></asp:Label>&nbsp;
    <br />
    <table align="center">
        <tr>
            <td style="width: 91px; height: 21px; text-align: right">
                ApplicationID:</td>
            <td style="width: 116px; height: 21px">
                <%--<asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
                    OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="193px">
                    <asp:ListItem Selected="True">Select</asp:ListItem>
                </asp:DropDownList>--%><asp:DropDownList ID="DropDownList1" runat="server" 
                    Height="25px" style="top: 356px; left: 373px; position: absolute" 
                    Width="109px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    AutoPostBack="True">
                    <asp:ListItem>Select</asp:ListItem>
                </asp:DropDownList>
                                    </td>
            <td style="width: 107px; height: 21px">
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
                    ErrorMessage="Enter Ticket No Correctly" ValidationExpression="^[A-Za-z0-9]+$"></asp:RegularExpressionValidator></td>
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
                    ErrorMessage="Enter Flight no" ValidationExpression="^[A-Za-z0-9]+$"></asp:RegularExpressionValidator></td>
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
                    ErrorMessage="Enter Flight FRom" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator></td>
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
                    ErrorMessage="Enter Via" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 91px; text-align: right; height: 26px;">
                FlightTo</td>
            <td style="width: 116px; height: 26px;">
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox></td>
            <td style="width: 107px; height: 26px;">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="TextBox5"
                    ErrorMessage="Enter Flight TO" ValidationExpression="^[A-Za-z]+$"></asp:RegularExpressionValidator></td>
        </tr>
        <tr>
            <td style="width: 91px; text-align: right">
                FlightDate</td>
            <td align="left" >
                <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox><a href ="javascript:NewCal('<%=TextBox6.ClientID%>','mmddyyyy')"><img src ="../images/cal.gif" /></a>
                </td>
            <td style="width: 107px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6"
                    ErrorMessage="*"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 91px; height: 26px; text-align: right">
            </td>
            <td style="width: 116px; height: 26px; text-align: center">
                <%--<asp:Button ID="ButSubmit" runat="server" OnClick="ButSubmit_Click" Text="Submit" />--%><asp:Button 
                    ID="Button2" runat="server" Text="Submit" onclick="Button2_Click" />
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
                    CausesValidation="False" 
                    style="top: 739px; left: 243px; position: absolute; height: 26px; width: 61px" />
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td class="style4">
            </td>
            <td class="style4">
               <%-- <asp:GridView ID="GridView1" runat="server" AutoGenerateEditButton="True" DataKeyNames="applnID"
                    OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing"
                    OnRowUpdating="GridView1_RowUpdating" Visible="False">
                </asp:GridView>--%>
                <asp:GridView ID="GridView1" runat="server" 
        style="top: 703px; left: 371px; position: absolute; height: 133px; width: 187px" 
                    AutoGenerateEditButton="True" onrowcancelingedit="GridView1_RowCancelingEdit" 
                    onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating">
    </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

