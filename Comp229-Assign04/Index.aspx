<%@ Page Title="" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Comp229_Assign04.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="Content/IndexStyleSheet.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <img src="images/HyundaiBanner.png" class="banner" />
    <div id="index">
        
        <h1>Welcome to Hyundai DealerShip</h1>
        <p class="Paragraph"> As a certified Hyundai delear, we offer the best deal in our models.<br />
            currently, we are survey for any issues with vehicle which is purchased, leased and finnaced from our delearship.<br />
            please <a href="survey.aspx">Click Here </a>&nbsp;to participate in the survey.
        </p>
        <img src="images/HYUNDAI.png" />
        <p class="Paragraph">
            This purpose of this survey is to find out what people think of their Hyundai.
When answering the questions please answer them in reference to your current Hyundai vehicle performances.  
number of questions are directly related to technical and features of the Hyundai vehicle, other questions are more about how you like the Hyundai vehicles.
        </p>
         <h1>We serve our customer across the glob</h1>
        <h2> our dealership location in different part of the world</h2>
          <div id="parentsDiv">
        <div class="careerforLeft">
            <h4>Tokoya, Japan</h4>
            <!---- Drea Job of mine--->
            <h4>888 Tokoya street </h4>
            <a href="http://www.hyundai-motor.co.jp/">
            <img src="images/HYUNDAIJapan.jpeg" class="pic" /></a>
            
            <!----Thanks to google.ca/Search---->
            <br />
            <a href="http://www.hyundai-motor.co.jp/">Click Here</a></div>
                <div class="careerforLeft">
        <!----This job is close to reality---->

<h4>New Delhi, India</h4>
                    <h4>9999 Dehli Street</h4>
                    <a href="http://www.hyundai.com/in/en/Main/index.html">
                    <img src="images/HyundaiIndia.jpg" class="pic" /><br />Click Here </a>
                     <!----Thanks to google.ca/Search---->
        </div>
                <div class="careerforRight">
                     <!----This is the easiest job of the world---->
                    <h4>Algiers ,Algeria </h4>
                    <h4>1000 Algiers Street</h4>
                     <a href="http://www.hyundai-algerie.com/">
                    <img src="images/HyundaiAlgers.jpg" class="pic" /><br />Click Here</a>
                   
                    <!----Thanks to google.ca/Search---->
        </div>

      </div>
        <div>
                        <asp:HiddenField ID="hdnfldCurrentDateTime" runat="server" />  
                        <asp:Label ID="lblCurrentDateTime" runat="server" Text=""></asp:Label>
            <br />
            <br />
        </div>
    </div>
</asp:Content>
