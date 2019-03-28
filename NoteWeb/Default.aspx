<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="NoteWeb._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1 class="auto-style1">Welcome to visit my website</h1>
        <p class="lead">這是一個關於備忘錄的網站,功能有添加備忘錄、顯示備忘錄、編輯備忘錄、查詢備忘錄</p>
        <p><a href="read.aspx" class="btn btn-primary btn-lg">Learn more &raquo;</a></p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2 class="auto-style1">添加備忘錄</h2>
            <p>
                這項功能可以添加備忘錄，以防自己忘記或漏掉
            </p>
            <p>
                <a class="btn btn-default" href="write.aspx">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2 class="auto-style1">顯示備忘錄</h2>
            <p>
                所有添加的備忘錄都會顯示在這裡
            </p>
            <p>
                <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2 class="auto-style1">編輯備忘錄</h2>
            <p>
                可以利用此網頁進行備忘錄的更新和刪除
            </p>
            <p>
                <a class="btn btn-default" href="update.aspx">Learn more &raquo;</a>
            </p>
        </div>
        <div class="col-md-4">
            <h2 class="auto-style1">查詢備忘錄</h2>
            <p>
                可以利用此網頁進行備忘錄的查詢
            </p>
            <p>
                <a class="btn btn-default" href="search.aspx">Learn more &raquo;</a>
            </p>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="HeadContent">
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>