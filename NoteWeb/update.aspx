<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="NoteWeb.update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="auto-style1">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSourceUpdate" GridLines="Vertical" Width="924px" AllowPaging="True" PageSize="5">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:BoundField DataField="Recorder" HeaderText="紀錄者" SortExpression="Recorder" />
                <asp:BoundField DataField="Title" HeaderText="內容" SortExpression="Title" />
                <asp:BoundField DataField="Category" HeaderText="分類" SortExpression="Category" />
                <asp:BoundField DataField="Date" HeaderText="日期" SortExpression="Date" />
                <asp:CommandField HeaderText="操作" ShowEditButton="true" ShowDeleteButton="true" ButtonType="Link" />
            </Columns>
            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#0000A9" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#000065" />
        </asp:GridView>
    </div>
    <asp:SqlDataSource ID="SqlDataSourceUpdate" runat="server"
        ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
        SelectCommand="SELECT [Recorder], [Title], [Category], [Date] FROM [Note]"></asp:SqlDataSource>
</asp:Content>