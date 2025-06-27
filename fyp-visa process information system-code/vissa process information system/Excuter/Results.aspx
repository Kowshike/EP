<%@ Page Language="C#" MasterPageFile="~/Excuter/MasterPage.master" AutoEventWireup="true" CodeFile="Results.aspx.cs" Inherits="Excuter_Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <br />
    <asp:Button ID="Button4" runat="server" 
        style="top: 333px; left: 529px; position: absolute; height: 30px; width: 46px; right: 124px" 
        Text="Result" onclick="Button4_Click" />
    <asp:Button ID="Button1" runat="server" 
        style="top: 339px; left: 259px; position: absolute; right: 380px" 
        Text="Renual" onclick="Button1_Click" />
    <asp:Button ID="Button3" runat="server" 
        style="top: 335px; left: 421px; position: absolute; height: 30px; width: 71px; right: 207px" 
        Text="Departure" onclick="Button3_Click" />
</p>
<p>
    <asp:Button ID="Button2" runat="server" 
        style="top: 336px; left: 336px; position: absolute; height: 30px; width: 63px" 
        Text="Arrival" onclick="Button2_Click" />
</p>
<p>
    <asp:GridView ID="GridView1" runat="server" 
        
        style="top: 373px; left: 463px; position: absolute; height: 133px; width: 187px; bottom: 56px" 
        Visible="False">
    </asp:GridView>
    <asp:GridView ID="GridView2" runat="server" 
        
        style="top: 368px; left: 258px; position: absolute; height: 133px; width: 146px" 
        Visible="False">
    </asp:GridView>
    <asp:GridView ID="GridView3" runat="server" 
        
        style="top: 503px; left: 461px; position: absolute; height: 133px; width: 187px" 
        Visible="False">
    </asp:GridView>
    <asp:GridView ID="GridView4" runat="server" 
        
        style="top: 505px; left: 257px; position: absolute; height: 133px; width: 187px" 
        Visible="False">
    </asp:GridView>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

