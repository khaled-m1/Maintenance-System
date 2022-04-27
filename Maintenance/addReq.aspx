<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.Master" AutoEventWireup="true" CodeBehind="addReq.aspx.cs" Inherits="Maintenance.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 260px;
        }
        .auto-style10 {
            width: 223px;
        }
        .auto-style11 {
            width: 260px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style9">Staff | add request</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">Type of problem: </td>
            <td class="auto-style10">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="35px" Width="200px">
                    <asp:ListItem>-- Select --</asp:ListItem>
                    <asp:ListItem>Not Urgent</asp:ListItem>
                    <asp:ListItem>Urgent</asp:ListItem>
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">Description:</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox1" runat="server" Height="50px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">Date</td>
            <td class="auto-style10">
                <asp:Label ID="Label_date" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">Status</td>
            <td class="auto-style10">
                <asp:Label ID="Label_status" runat="server" ForeColor="#33CC33" Text="New"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">Id Staff</td>
            <td class="auto-style10">
                <asp:Label ID="Label_staff" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="Label_error" runat="server" ForeColor="Red"></asp:Label>
                <asp:Label ID="Label_secc" runat="server" ForeColor="#009900"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">
                <asp:Button ID="Button1" runat="server" Height="30px" OnClick="Button1_Click" Text="Send" Width="100px" />
                <asp:Button ID="Button2" runat="server" Height="30px" OnClick="Button2_Click" Text="Clear" Width="100px" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
