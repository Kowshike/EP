<%@ Page Language="C#" MasterPageFile="~/User/MasterPage.master" AutoEventWireup="true" CodeFile="Reports.aspx.cs" Inherits="User_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <br />
    <br />
    <br />
    <br />
    <table align="center">
        <tr>
            <td style="width: 100px; text-align: center">
                <asp:Button ID="Button5" runat="server" Text="Enquiry" onclick="Button5_Click" 
                    style="height: 26px" />
            </td>
            <td style="width: 100px; text-align: center">
                <asp:Button ID="Button6" runat="server" Text="Arrival" 
                    onclick="Button6_Click" />
            </td>
            <td style="width: 100px; text-align: center">
                <asp:Button ID="Button7" runat="server" Text="Deparature" 
                    onclick="Button7_Click" />
            </td>
            <td style="width: 100px; text-align: center">
                <asp:Button ID="Button8" runat="server" Text="Renual" onclick="Button8_Click" />
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
                <asp:GridView ID="GridView1" runat="server" Visible="False">
                </asp:GridView>
            </td>
            <td style="width: 100px">
                <asp:GridView ID="GridView2" runat="server" Visible="False">
                </asp:GridView>
            </td>
            <td style="width: 100px">
                <asp:GridView ID="GridView3" runat="server" Visible="False">
                </asp:GridView>
            </td>
            <td style="width: 100px">
                <asp:GridView ID="GridView4" runat="server" Visible="False">
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>

