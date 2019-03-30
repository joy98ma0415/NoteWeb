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
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSourceUpdate" GridLines="Vertical" Width="924px" AllowPaging="True" PageSize="5" DataKeyNames="ID">
            <AlternatingRowStyle BackColor="#DCDCDC" />
            <Columns>
                <asp:CommandField HeaderText="操作" ShowDeleteButton="True" ShowEditButton="True" />
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
    </div>
    <asp:SqlDataSource ID="SqlDataSourceUpdate" runat="server"
        ConnectionString="<%$ ConnectionStrings:DefaultConnection %>"
        SelectCommand="SELECT [Recorder], [Title], [Category], [Date], [ID] FROM [Note]"
        DeleteCommand="DELETE FROM [Note] WHERE [ID] = @ID"
        UpdateCommand="UPDATE [Note] SET [Recorder] = @Recorder, [Title] = @Title, [Category] = @Category, [Date] = @Date WHERE [ID] = @ID">
        <DeleteParameters>
            <asp:Parameter Name="ID" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:Parameter Name="Recorder" Type="String" />
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Category" Type="String" />
            <asp:Parameter DbType="Date" Name="Date" />
            <asp:Parameter Name="ID" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>