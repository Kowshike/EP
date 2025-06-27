<%@ Page Language="C#" MasterPageFile="~/Admin/MasterPage.master" AutoEventWireup="true" CodeFile="Result reorts.aspx.cs" Inherits="Admin_Default" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <p>
        <asp:Label ID="Label1" runat="server" Text="Reports" 
            style="position:absolute; top: 228px; left: 515px; width: 49px;" 
            Font-Size="Large" Font-Underline="True"></asp:Label>
        <asp:GridView ID="GridView1" runat="server" 
            
            style="top: 318px; left: 368px; position: absolute; height: 133px; width: 187px" >
        </asp:GridView>
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            style="top: 277px; left: 411px; position: absolute; height: 28px; width: 56px" 
            Text="Arrival" />
        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
            style="top: 265px; left: 640px; position: absolute; height: 28px; width: 73px" 
            Text="Departure" />
        <asp:GridView ID="GridView2" runat="server" 
            style="top: 314px; left: 601px; position: absolute; height: 133px; width: 187px">
        </asp:GridView>
        <br />
   
    </p>
</asp:Content>

