<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="thanks.aspx.cs" Inherits="Comp229_Assign04.thanks" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/thanksPageStyleSheet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <img src="images/1.png" />
      <div id="thanksPage">
          <h2>Your time is valued and we will improve our service to our customer with your feedbacks</h2>
    <asp:PlaceHolder ID="forThanksPage" runat="server">
        <h1>
        We want to appreciate you  <%=Session["copyFirstName" ] %>  <%=Session["copyLastName" ] %>  for your time and thank you for taking part in our survey.</h1>
    </asp:PlaceHolder>
        </div>
</asp:Content>
