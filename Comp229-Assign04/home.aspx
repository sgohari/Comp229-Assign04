<%@ Page Title="HomePage" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Comp229_Assign04.home" %>
<asp:Content ID="HeadContains" ContentPlaceHolderID="head" runat="server">
    <link href="Content/HomeStyleSheet.css" rel="stylesheet" />

</asp:Content>
<asp:Content ID="PageContains" ContentPlaceHolderID="mainContain" runat="server">
    <div id="home">

    <h1>This is my home page</h1>

        <table>
            <asp:Repeater ID="modelLsRepeater" runat="server">
                <ItemTemplate>
                    <tr>
                        <td>
                            <asp:HyperLink runat="server" NavigateUrl='<%# string.Format("~/model.aspx?name={0}&faction={1}", Eval("name"), Eval("faction")) %>' CssClass="table table-bordered table-hover table-stripped">
                            <asp:Label runat="server" Text='<%# Eval("name")%>'>  </asp:Label>
                            
                            </asp:HyperLink>
                        </td>
                    </tr>
                </ItemTemplate>

            </asp:Repeater>

        </table>
        

  <div>

    <asp:Button runat="server" ID="addNewModel" OnClick="addNewModel_Click" Text="Add New Model" CssClass="designForHomeButtons" />
     <asp:Button runat="server" ID="sentEmail" OnClick="sentEmail_Click" Text="Sent Email" CssClass="designForHomeButtons"/>

<div id="addNewModelDiv" runat="server">
    <table class="table breadcrumb" style="width: 98%" >
        <tr>
            <td class="rights">
                <asp:Label runat="server" Text="Name" ID="lbAddName"  />
            </td>
            <td >
                <asp:TextBox ID="txtbxName" runat="server" TextMode="SingleLine"  />
                <asp:RequiredFieldValidator ID="txtbxNameRqv" runat="server"
                    ControlToValidate="txtbxName" ErrorMessage="Name is required" Display="Dynamic" />
            </td>
        </tr>

        <tr>
            <td class="rights">
                <asp:Label runat="server" Text="Faction" ID="lbAddFaction"  />
            </td>
            <td>
                <asp:TextBox ID="txtbxFaction" runat="server" TextMode="SingleLine" />
                <asp:RequiredFieldValidator ID="txtbxFactionRqv" runat="server"
                    ControlToValidate="txtbxFaction" ErrorMessage="Faction is Required" Display="Dynamic" />
            </td>
        </tr>
        <tr>
            <td class="rights">
                <asp:Label runat="server" Text="Rank" ID="lbAddRank" CssClass="ToTheLeft" />
            </td>
            <td>
                <asp:TextBox ID="txtbxRank" runat="server" TextMode="SingleLine" />
                <asp:RequiredFieldValidator ID="txtbxRankRqv" runat="server"
                    ControlToValidate="txtbxRank" ErrorMessage="Rank is Required" Display="Dynamic" />
            </td>
        </tr>
        <tr>
            <td class="rights">
                <asp:Label runat="server" Text="Base" ID="lbAddBase" CssClass="ToTheLeft" />
            </td>
            <td>
                <asp:TextBox ID="txtbxBase" runat="server" TextMode="SingleLine"  />
                <asp:RequiredFieldValidator ID="txtbxBaseRqv" runat="server"
                    ControlToValidate="txtbxBase" ErrorMessage="base is Required" Display="Dynamic" />
            </td>
        </tr>
        <tr>
            <td class="rights">
                <asp:Label runat="server" Text="Size" ID="lbAddSize" CssClass="ToTheLeft" />
            </td>
            <td>
                <asp:TextBox ID="txtbxSize" runat="server" TextMode="SingleLine"  />
                <asp:RequiredFieldValidator ID="txtbxSizeRqv" runat="server"
                    ControlToValidate="txtbxSize" ErrorMessage="Size is Required" Display="Dynamic" />
            </td>
        </tr>
        <tr>
            <td class="rights">
                <asp:Label runat="server" Text="Deployment" ID="lbAddDeployment" />
            </td>
            <td>
                <asp:TextBox ID="txtbxDeployment" runat="server" TextMode="SingleLine"  />
                <asp:RequiredFieldValidator ID="txtbxDeploymentRqv" runat="server"
                    ControlToValidate="txtbxDeployment" ErrorMessage="Deployment is Required" Display="Dynamic" />
            </td>
        </tr>
        <tr>
           <td class="rights">
                <asp:Button ID="btnSaveModel" runat="server" Text="SAVE" />
            </td>
            <td class="btnHomeCancel">
                <asp:Button ID="btnCancel" runat="server" Text="CANCEL" />
            </td>
        </tr>
    </table>
        <div id="sentEmailDiv" runat="server">
           

        </div>

 
    </div>

    </div>
        </div>
</asp:Content>
