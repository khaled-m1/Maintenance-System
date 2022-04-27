<%@ Page Title="" Language="C#" MasterPageFile="~/Engneer.Master" AutoEventWireup="true" CodeBehind="closeReq.aspx.cs" Inherits="Maintenance.WebForm11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style9 {
            width: 213px;
        }
        .auto-style10 {
            margin-right: 0px;
        }
        .auto-style11 {
            width: 660px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td class="auto-style9">engneer page | Close request</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style10" DataKeyNames="Id_req" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." ForeColor="#333333" GridLines="None" Width="100%">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:CommandField EditText="Close" ShowEditButton="True" />
                        <asp:BoundField DataField="Id_req" HeaderText="Id_req" ReadOnly="True" SortExpression="Id_req" />
                        <asp:BoundField DataField="type" HeaderText="type" SortExpression="type" />
                        <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                        <asp:BoundField DataField="date" HeaderText="date" SortExpression="date" />
                        <asp:TemplateField HeaderText="status" SortExpression="status">
                            <EditItemTemplate>
                                <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("status") %>'>
                                    <asp:ListItem>New</asp:ListItem>
                                    <asp:ListItem>Convert</asp:ListItem>
                                    <asp:ListItem>Close</asp:ListItem>
                                </asp:DropDownList>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Label ID="Label1" runat="server" Text='<%# Bind("status") %>'></asp:Label>
                            </ItemTemplate>
                        </asp:TemplateField>
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
                        <asp:Parameter DefaultValue="Convert" Name="status" Type="String" />
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
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style9">&nbsp;</td>
            <td class="auto-style11">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
