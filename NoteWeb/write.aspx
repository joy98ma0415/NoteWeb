<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="write.aspx.cs" Inherits="NoteWeb.write" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .auto-style4 {
            width: 916px;
        }

        .auto-style5 {
            width: 626px;
        }

        .auto-style6 {
            width: 334px;
            height: 281px;
        }

        .auto-style7 {
            width: 191px;
        }

        .auto-style8 {
            width: 191px;
            height: 60px;
        }

        .auto-style9 {
            width: 626px;
            height: 60px;
        }

        .auto-style10 {
            width: 334px;
            height: 60px;
        }

        .auto-style11 {
            width: 191px;
            height: 281px;
        }

        .auto-style12 {
            width: 626px;
            height: 281px;
        }

        .auto-style13 {
            width: 191px;
            height: 58px;
        }

        .auto-style14 {
            width: 626px;
            height: 58px;
        }

        .auto-style15 {
            width: 334px;
            height: 58px;
        }

        .auto-style16 {
            width: 915px;
            height: 55px;
            font-size: xx-large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content" style="text-align: left">
        <h3 style="text-align: center;" class="auto-style16">添加備忘錄</h3>

        <table style="text-align: left;" class="auto-style4">
            <tr>
                <td class="auto-style8">紀錄者：</td>
                <td class="auto-style9">
                    <asp:TextBox ID="TextBoxTitle" runat="server" Width="450px" Height="34px"></asp:TextBox>
                </td>
                <td class="auto-style10">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*紀錄者不能為空" ControlToValidate="TextBoxTitle">*紀錄者不能為空</asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td class="auto-style11">內容：
                </td>
                <td class="auto-style12">
                    <asp:TextBox ID="TextBoxNote" runat="server" TextMode="MultiLine" Height="260px" Width="585px"></asp:TextBox>
                </td>
                <td class="auto-style6">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*內容不能為空" ControlToValidate="TextBoxNote">*內容不能為空</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style13">分類：
                </td>
                <td class="auto-style14">
                    <asp:DropDownList ID="DropDownListCategory" runat="server">
                        <asp:ListItem Selected="True">個人紀錄</asp:ListItem>
                        <asp:ListItem>工作紀錄</asp:ListItem>
                        <asp:ListItem>家庭紀錄</asp:ListItem>
                        <asp:ListItem>聚餐約會</asp:ListItem>
                        <asp:ListItem>家庭活動</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="auto-style15"></td>
            </tr>
            <tr>
                <td class="auto-style7"></td>
                <td class="auto-style5">
                    <table>
                        <tr>
                            <td style="width: 225px; text-align: center;">
                                <asp:Button ID="submit" runat="server" Text="新增" OnClick="submit_Click" /></td>
                            <td style="width: 225px; text-align: center;">
                                <asp:Button ID="reset" runat="server" Text="重寫" OnClick="reset_Click" /></td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>