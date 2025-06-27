<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Login.aspx.cs" Inherits="_Default" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
    <style type="text/css">
        .style1
        {
            width: 100%;
            height: 155px;
        }
        .style2
        {
            width: 100%;
            height: 498px;
        }
        #form1
        {
            width: 176px;
            top: 15px;
            left: 10px;
            position: absolute;
            height: 90px;
        }
        .style3
        {position:absolute;
            width: 43%;
            height: 171px;
            margin-top: 0px;
            top: 357px;
            left: 256px;
        }
        .style4
        {position:absolute;
            height: 46px;
        }
        .style5
        {
            height: 51px;
        }
        .style6
        {
            height: 40px;
        }
        .style7
        {
            height: 51px;
            width: 136px;
        }
        .style8
        {
            height: 40px;
            width: 136px;
        }
        .style9
        {
            position: absolute;
            height: 46px;
            width: 136px;
        }
        .style10
        {poSITION:absolute;
            width: 43%;
            height: 34px;
            top: 324px;
            left: 258px;
        }
    </style>
</head>
<body alink="#999999" bgcolor="#999999">
    <form id="form1" runat="server">
    <div align="center" 
        style="left: 225px; position: absolute; height: 653px; width: 782px; top: 15px">
    
        <table class="style1">
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" Height="154px" 
                        ImageUrl="~/IMAGES/images/banner2.gif" Width="774px" />
                    <asp:Image ID="Image2" runat="server" ImageUrl="~/IMAGES/visa.gif" 
                        style="top: 23px; left: 529px; position: absolute; height: 88px; width: 144px" />
                </td>
            </tr>
        </table>
        <table class="style2">
            <tr>
                <td bgcolor="#999999">
                    <table class="style3">
                        <tr>
                            <td class="style7">
                                USERNAME</td>
                            <td class="style5">
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                <cc1:TextBoxWatermarkExtender ID="TextBox1_TextBoxWatermarkExtender" 
                                    runat="server" Enabled="True" TargetControlID="TextBox1" WatermarkText="ENTER USER NAME">
                                </cc1:TextBoxWatermarkExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="style8">
                                PASSWORD</td>
                            <td class="style6">
                                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                                <cc1:TextBoxWatermarkExtender ID="TextBox2_TextBoxWatermarkExtender" 
                                    runat="server" Enabled="True" TargetControlID="TextBox2" WatermarkText="ENTER PASSWORD">
                                </cc1:TextBoxWatermarkExtender>
                            </td>
                        </tr>
                        <tr>
                            <td class="style9">
                                <asp:Label ID="Label1" runat="server" Text="Label" 
                                    style="position:absolute; top: 148px; left: 31px;" Visible="False"></asp:Label>
                                <asp:CheckBox ID="CheckBox1" runat="server"  
                                    style="position:absolute; top: 118px; left: 12px;" Text="Remember me"/>
                            </td>
                            <td class="style4" align="center">
                                <asp:Button ID="Button1" runat="server" Text="SIGNIN" onclick="Button1_Click" 
                                    style="top: 112px; left: 262px; position: absolute; height: 26px; " />
                            </td>
                        </tr>
                    </table>
                    <table class="style10">
                        <tr>
                            <td align="center">
                                LOGIN </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    
    </div>
    </form>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;&nbsp;</p>
</body>
</html>
