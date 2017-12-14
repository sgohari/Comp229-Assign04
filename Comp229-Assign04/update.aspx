<%@ Page Title="UpdatePage" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="Comp229_Assign04.update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/UpdateStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="mainContains" ContentPlaceHolderID="mainContain" runat="server">
    <div>

    <asp:Button runat="server" ID="SaveContains" OnClick="SaveContains_Click" Text="Update" />
     <asp:Button runat="server" ID="updateContains" OnClick="updateContains_Click" Text="Save"/>

        <div id="outer" runat="server">

            <h1>this is Save dive</h1>

        </div>
        <div id="inner" runat="server">
            <h1>this is up div</h1>

        </div>

    </div>
</asp:Content>
