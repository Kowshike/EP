<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        #form1
        {
            top: 6px;
            left: 115px;
            position: absolute;
            height: 581px;
            width: 1038px;
        }
        .style1
        {
            width: 98%;
            top: 4px;
            left: 6px;
            position: absolute;
            height: 174px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="color: #C0C0C0">
    <div style="color: #C0C0C0;">
    
        <asp:TreeView ID="TreeView1" runat="server" Font-Bold="True" 
            ForeColor="#3399FF" ImageSet="BulletedList3" ShowExpandCollapse="False" 
            style="top: 256px; left: 351px; position: absolute; height: 89px; width: 89px">
            <ParentNodeStyle Font-Bold="False" />
            <HoverNodeStyle Font-Underline="True" ForeColor="#5555DD" />
            <SelectedNodeStyle Font-Underline="True" ForeColor="#5555DD" 
                HorizontalPadding="0px" VerticalPadding="0px" />
            <Nodes>
                <asp:TreeNode Text="HOME" Value="HOME"></asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/About us.aspx" Text="Aboutus" Value="Aboutus">
                </asp:TreeNode>
                <asp:TreeNode NavigateUrl="~/Contact Us.aspx" Text="Contact us" 
                    Value="Contact us"></asp:TreeNode>
            </Nodes>
            <NodeStyle Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" 
                HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
        </asp:TreeView>
    
    </div>
    <table class="style1">
        <tr>
            <td>
                <asp:Image ID="Image1" runat="server" ImageUrl="~/IMAGES/images/banner2.gif" 
                    style="top: -5px; left: -4px; position: absolute; height: 185px; width: 1034px" />
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
