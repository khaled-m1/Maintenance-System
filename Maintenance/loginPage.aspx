<%@ Page Title="" Language="C#" MasterPageFile="~/LOGIN.Master" AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="Maintenance.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            width: 258px;
        }
        .auto-style9 {
            width: 30%;
            height: 23px;
        }
        .auto-style10 {
            width: 40%;
            height: 23px;
        }
        .auto-style11 {
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style8" style="width: 30%">&nbsp;</td>
            <td style="width: 40%">LOG IN</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8" style="width: 30%">&nbsp;</td>
            <td style="width: 40%">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8" style="width: 30%">&nbsp;</td>
            <td style="width: 40%">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="200px">
                    <asp:ListItem>-- Select --</asp:ListItem>
                    <asp:ListItem>Staff</asp:ListItem>
                    <asp:ListItem>Engneer</asp:ListItem>
                    <asp:ListItem>Admin</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8" style="width: 30%">&nbsp;</td>
            <td style="width: 40%">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8" style="width: 30%">&nbsp;</td>
            <td style="width: 40%">User Name</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8" style="width: 30%">&nbsp;</td>
            <td style="width: 40%">
                <asp:TextBox ID="TextBox1" runat="server" Height="35px" Width="250px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9"></td>
            <td class="auto-style10">Password</td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style8" style="width: 30%">&nbsp;</td>
            <td style="width: 40%">
                <asp:TextBox ID="TextBox2" runat="server" Height="35px" TextMode="Password" Width="250px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8" style="width: 30%">&nbsp;</td>
            <td style="width: 40%">
                <asp:Label ID="Label1" runat="server" CssClass="auto-style11"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8" style="width: 30%">&nbsp;</td>
            <td style="width: 40%">
                <asp:Button ID="Button1" runat="server" Height="35px" Text="Send" Width="200px" OnClick="Button1_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style8" style="width: 30%">&nbsp;</td>
            <td style="width: 40%">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
