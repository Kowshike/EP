<%@ Page Language="C#" MasterPageFile="~/Excuter/MasterPage.master" AutoEventWireup="true" CodeFile="Renual.aspx.cs" Inherits="Excuter_Default" Title="Untitled Page" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
    <br />
    <br />
    <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Large"
        ForeColor="Blue" Text=" Renuval :" Width="160px"></asp:Label>
    <table align="center">
        <tr>
            <td style="width: 179px; text-align: right">
                Select Ur ApplicationID :</td>
            <td style="width: 179px">
                <%--<asp:DropDownList ID="DropDownList1" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
                    OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                    <asp:ListItem Selected="True">Select</asp:ListItem>
                </asp:DropDownList></td>--%>
               
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    Height="26px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    Width="125px">
                    <asp:ListItem Selected="True">select</asp:ListItem>
                </asp:DropDownList>
               
&nbsp;<td style="width: 100px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1"
                    ErrorMessage="*" InitialValue="Select"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td style="width: 179px; text-align: right">
                Emp Name :</td>
            <td style="width: 179px">
                <asp:Label ID="Label1" runat="server" ForeColor="Blue" Text="Label" Visible="False"
                    Width="133px"></asp:Label></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 179px; text-align: right">
                Status&nbsp; :</td>
            <td style="width: 179px">
                <asp:Label ID="Label3" runat="server" ForeColor="Blue" Text="Label" Visible="False"
                    Width="133px"></asp:Label></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 179px; text-align: right">
                Visa Valid Date :</td>
            <td style="width: 179px">
                <asp:Label ID="Label4" runat="server" ForeColor="Blue" Text="Label" Visible="False"
                    Width="133px"></asp:Label></td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 179px; text-align: right">
                Extended Date From :</td>
            <td align="left" >
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> 
                <cc1:CalendarExtender ID="TextBox1_CalendarExtender" runat="server" 
                    Enabled="True" TargetControlID="TextBox1">
                </cc1:CalendarExtender>
                <cc1:TextBoxWatermarkExtender ID="TextBox1_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox1" WatermarkText="Enter Date">
                </cc1:TextBoxWatermarkExtender>
              
                </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 179px; text-align: right;">
                Extended Date TO:</td>
            <td align="left" >
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <cc1:TextBoxWatermarkExtender ID="TextBox2_TextBoxWatermarkExtender" 
                    runat="server" Enabled="True" TargetControlID="TextBox2" WatermarkText="Enter Date">
                </cc1:TextBoxWatermarkExtender>
               
                </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 179px">
            </td>
            <td style="width: 179px; text-align: center">
                <%--<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Apply" />--%><asp:Button 
                    ID="Button3" runat="server" Text="Submit" onclick="Button3_Click1" />
            </td>
            <td style="width: 100px">
                <asp:Label ID="Label2" runat="server" ForeColor="#FF8000" Text="Label" Visible="False"
                    Width="195px"></asp:Label></td>
        </tr>
    </table>
    <br />
    <br />
    <table>
        <tr>
            <td style="width: 100px">
                
                <asp:Button ID="Button4" runat="server" onclick="Button4_Click" Text="update" 
                    CausesValidation="False" />
                
            </td>
            <td style="width: 100px">
            </td>
        </tr>
        <tr>
            <td style="width: 100px">
            </td>
            <td style="width: 100px">
                <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateEditButton="True" DataKeyNames="applnID,ename,details,validdate"
                    OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowEditing="GridView1_RowEditing"
                    OnRowUpdating="GridView1_RowUpdating" Visible="False">
                </asp:GridView>--%>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateEditButton="True" 
                    DataKeyNames="applnId" onrowcancelingedit="GridView1_RowCancelingEdit" 
                    onrowediting="GridView1_RowEditing" onrowupdating="GridView1_RowUpdating" 
                    Visible="False">
                </asp:GridView>
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

