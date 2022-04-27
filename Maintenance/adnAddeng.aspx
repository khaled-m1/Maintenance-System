<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adnAddeng.aspx.cs" Inherits="Maintenance.WebForm18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 292px;
            text-align: right;
        }
        .auto-style10 {
            width: 30%;
            text-align: right;
            height: 26px;
        }
        .auto-style11 {
            width: 30%;
            height: 26px;
        }
        .auto-style12 {
            height: 26px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td colspan="3">admin page | add engneer</td>
        </tr>
        <tr>
            <td class="auto-style9" style="width: 30%">ID</td>
            <td style="width: 30%">
                <asp:TextBox ID="TextBox_id" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9" style="width: 30%">Name</td>
            <td style="width: 30%">
                <asp:TextBox ID="TextBox_name" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9" style="width: 30%">Password</td>
            <td style="width: 30%">
                <asp:TextBox ID="TextBox_pwd" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9" style="width: 30%">Email</td>
            <td style="width: 30%">
                <asp:TextBox ID="TextBox_email" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9" style="width: 30%">Special Work</td>
            <td style="width: 30%">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="108px">
                    <asp:ListItem>-- Select --</asp:ListItem>
                    <asp:ListItem>HW</asp:ListItem>
                    <asp:ListItem>SW</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style10">Mopile</td>
            <td class="auto-style11">
                <asp:TextBox ID="TextBox_mopile" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style12"></td>
        </tr>
        <tr>
            <td class="auto-style9" style="width: 30%">&nbsp;</td>
            <td style="width: 30%">
                <asp:Label ID="Label_err" runat="server" ForeColor="Red"></asp:Label>
&nbsp;
                <asp:Label ID="Label_secc" runat="server" ForeColor="#006600"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9" style="width: 30%">&nbsp;</td>
            <td style="width: 30%">
                <asp:Button ID="Button_send" runat="server" OnClick="Button_send_Click" Text="Send" />
&nbsp;
                <asp:Button ID="Button_clear" runat="server" OnClick="Button_clear_Click" Text="Clear" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
