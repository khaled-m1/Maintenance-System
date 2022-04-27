<%@ Page Title="" Language="C#" MasterPageFile="~/Staff.Master" AutoEventWireup="true" CodeBehind="addComment.aspx.cs" Inherits="Maintenance.WebForm15" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 157px;
        }
        .auto-style10 {
            width: 515px;
        }
        .auto-style11 {
            width: 157px;
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style9">Staff | add Comment</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style10">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Id_req" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="100%">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField DataField="Id_req" HeaderText="Id_req" ReadOnly="True" SortExpression="Id_req" />
                        <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                        <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                        <asp:BoundField DataField="status" HeaderText="status" SortExpression="status" />
                        <asp:BoundField DataField="Id_staff" HeaderText="Id_staff" SortExpression="Id_staff" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:maintenanceDBConnectionString1 %>" DeleteCommand="DELETE FROM [Request] WHERE [Id_req] = @Id_req" InsertCommand="INSERT INTO [Request] ([type], [description], [date], [status], [Id_staff]) VALUES (@type, @description, @date, @status, @Id_staff)" SelectCommand="SELECT [Id_req], [type], [description], [date], [status], [Id_staff] FROM [Request] WHERE ([status] = @status)" UpdateCommand="UPDATE [Request] SET [type] = @type, [description] = @description, [date] = @date, [status] = @status, [Id_staff] = @Id_staff WHERE [Id_req] = @Id_req">
                    <DeleteParameters>
                        <asp:Parameter Name="Id_req" Type="Int32" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="type" Type="String" />
                        <asp:Parameter Name="description" Type="String" />
                        <asp:Parameter DbType="Date" Name="date" />
                        <asp:Parameter Name="status" Type="String" />
                        <asp:Parameter Name="Id_staff" Type="Int32" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Close" Name="status" Type="String" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="type" Type="String" />
                        <asp:Parameter Name="description" Type="String" />
                        <asp:Parameter DbType="Date" Name="date" />
                        <asp:Parameter Name="status" Type="String" />
                        <asp:Parameter Name="Id_staff" Type="Int32" />
                        <asp:Parameter Name="Id_req" Type="Int32" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">Request id</td>
            <td class="auto-style10">
                <asp:Label ID="Label_reqid" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;Engneer id</td>
            <td class="auto-style10">
                <asp:Label ID="Label_engid" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">Comment date</td>
            <td class="auto-style10">
                <asp:Label ID="Label_date" runat="server"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">Comment Text</td>
            <td class="auto-style10">
                <asp:TextBox ID="TextBox1" runat="server" Height="82px" TextMode="MultiLine" Width="248px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">
                <asp:Label ID="Label_err" runat="server" ForeColor="Red"></asp:Label>
&nbsp;
                <asp:Label ID="Label_secc" runat="server" ForeColor="#00CC00"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">
                <asp:Button ID="Button_send" runat="server" OnClick="Button_send_Click" Text="Send" />
&nbsp;
                <asp:Button ID="Button_new" runat="server" OnClick="Button_new_Click" Text="New" />
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
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style11">&nbsp;</td>
            <td class="auto-style10">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
