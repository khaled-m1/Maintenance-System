<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adnAddadmin.aspx.cs" Inherits="Maintenance.WebForm17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 292px;
            text-align: right;
        }
        .auto-style10 {
            margin-left: 520px;
        }
        .auto-style11 {
            margin-left: 320px;
        }
        .auto-style12 {
            margin-left: 200px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td colspan="3">admin page | add admin</td>
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
            <td class="auto-style10" style="width: 30%">
                <asp:TextBox ID="TextBox_name" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9" style="width: 30%">Password</td>
            <td class="auto-style11" style="width: 30%">
                <asp:TextBox ID="TextBox_pwd" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9" style="width: 30%">Email</td>
            <td class="auto-style12" style="width: 30%">
                <asp:TextBox ID="TextBox_email" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9" style="width: 30%">Mopile</td>
            <td style="width: 30%">
                <asp:TextBox ID="TextBox_mopile" runat="server"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9" style="width: 30%">&nbsp;</td>
            <td style="width: 30%">
                <asp:Label ID="Label_err" runat="server" ForeColor="Red"></asp:Label>
                <asp:Label ID="Label_secc" runat="server" ForeColor="#33CC33"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9" style="width: 30%">&nbsp;</td>
            <td style="width: 30%">
                <asp:Button ID="Button_send" runat="server" OnClick="Button_send_Click" Text="SEND" ValidationGroup="x" />
&nbsp;&nbsp;
                <asp:Button ID="Button_clear" runat="server" OnClick="Button_clear_Click" Text="Clear" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
