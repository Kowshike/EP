<%@ Page Language="C#" MasterPageFile="~/Excuter/MasterPage.master" AutoEventWireup="true" CodeFile="applications.aspx.cs" Inherits="Excuter_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    
    <table align="center" >
        <tr>
            <td style="width: 100px">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
                    ForeColor="Maroon" Text="Users Applications" Width="176px"></asp:Label></td>
        </tr>
        <tr>
            <td style="width: 100px; height: 153px;">
            <asp:GridView ID="GridView2" runat="server" 
        style="top: 462px; left: 367px; position: absolute; height: 146px; width: 161px">
    </asp:GridView>
               
            </td>
        </tr>
    </table>
</asp:Content>

