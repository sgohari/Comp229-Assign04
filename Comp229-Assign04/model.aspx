<%@ Page Title="ModelPage" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="model.aspx.cs" Inherits="Comp229_Assign04.model" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="PageContains" ContentPlaceHolderID="mainContain" runat="server">
    <div id="modelPage">
        <asp:Image runat="server" ID="imageModel" Width="400px" />
        <table>
            <tr><td>Name:</td><td>
                    <asp:Label runat="server" ID="lbName"></asp:Label>
                </td></tr>
            <tr><td>Faction:</td><td>
                    <asp:Label runat="server" ID="lbFaction"></asp:Label>
                </td> </tr>
            <tr><td>Rank:</td><td>
                    <asp:Label runat="server" ID="lbRank"></asp:Label>
                </td> </tr>
            <tr><td>Base:</td> <td>
                    <asp:Label runat="server" ID="lb_Base"></asp:Label>
                </td> </tr>
            <tr><td>Size:</td><td>
                    <asp:Label runat="server" ID="lb_Size"></asp:Label>
                </td></tr>
            <tr><td>Deployment Zone:</td><td>
                    <asp:Label runat="server" ID="lbDeployment"></asp:Label>
                </td></tr>
            <tr><td>Traits:</td><td>
                    <asp:Repeater runat="server" ID="lb_Traitsrep">
                        <ItemTemplate>
                            <asp:Label runat="server" Text="<%# Container.DataItem.ToString() %>"></asp:Label>
                            <br />
                        </ItemTemplate>
                    </asp:Repeater> </td></tr>
            <tr><td>Types:</td><td>
                    <asp:Repeater runat="server" ID="typerep">
                        <ItemTemplate>
                            <asp:Label runat="server" Text="<%# Container.DataItem.ToString() %>"></asp:Label>
                            <br />
                        </ItemTemplate>
                    </asp:Repeater></td> </tr>
            <tr><td>Mobility:</td><td>
                    <asp:Label runat="server" ID="mobility"></asp:Label>
                </td></tr>
            <tr><td>Will Power:</td> <td>
                    <asp:Label runat="server" ID="willpower"></asp:Label>
                </td> </tr>
            <tr><td>Resiliance:</td><td>
                    <asp:Label runat="server" ID="resiliance"></asp:Label>
                </td></tr>
            <tr><td>Wounds:</td><td>
                    <asp:Label runat="server" ID="wounds"></asp:Label>
                </td></tr>
        </table>

<%--        <div>
            <asp:Button ID="Update" runat="server" Text="Update" OnClick="Update_Click"/>
            <br />
            <asp:Button ID="Delete" runat="server"Text="Delete Model" OnClick="Delete_Click"  Width="157px" />
        </div>--%>
</div>
</asp:Content>
