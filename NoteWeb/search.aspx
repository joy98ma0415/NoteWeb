<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="search.aspx.cs" Inherits="NoteWeb.search" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" Text="依分類查詢："></asp:Label>
    &nbsp;&nbsp;&nbsp;
    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Category" DataValueField="Category" AutoPostBack="True">
    </asp:DropDownList>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1" GridLines="Vertical" PageSize="5" EmptyDataText="No Record.. Please Try Again..!" Width="925px">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <Columns>
            <asp:BoundField DataField="Recorder" HeaderText="紀錄者" SortExpression="Recorder" />
            <asp:BoundField DataField="Title" HeaderText="內容" SortExpression="Title" />
            <asp:BoundField DataField="Category" HeaderText="分類" SortExpression="Category" />
            <asp:BoundField DataField="Date" HeaderText="日期" SortExpression="Date" />
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
    <asp:SqlDataSource ID="SqlDataSource1" runat="server"
        ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
        SelectCommand="SELECT [Title], [Recorder], [Date], [Category] FROM [Note] WHERE ([Category] LIKE '%' + @Category + '%')">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Category" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server"
        ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
        SelectCommand="SELECT [CategoryID], [Category] FROM [NoteCategory]"></asp:SqlDataSource>
</asp:Content>