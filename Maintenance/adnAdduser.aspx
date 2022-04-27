<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="adnAdduser.aspx.cs" Inherits="Maintenance.WebForm16" %>
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td colspan="3">admin page | add staff</td>
        </tr>
        <tr>
            <td class="auto-style9" style="width: 30%">ID</td>
            <td>
                <asp:TextBox ID="TextBox_id" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9" style="width: 30%">Name</td>
            <td>
                <asp:TextBox ID="TextBox_name" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9" style="width: 30%">Password</td>
            <td>
                <asp:TextBox ID="TextBox_pwd" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9" style="width: 30%">Email</td>
            <td>
                <asp:TextBox ID="TextBox_email" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9" style="width: 30%">Special Work</td>
            <td>
                <asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="117px">
                    <asp:ListItem>SW</asp:ListItem>
                    <asp:ListItem>HW</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style10">Mopile</td>
            <td>
                <asp:TextBox ID="TextBox_mopile" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="width: 30%">&nbsp;</td>
            <td>
                <asp:Label ID="Label_err" runat="server" ForeColor="Red"></asp:Label>
&nbsp;
                <asp:Label ID="Label_secc" runat="server" ForeColor="#006600"></asp:Label>
            </td>
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
