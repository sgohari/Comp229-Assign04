<%@ Page Title="HomePage" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="Comp229_Assign04.home" %>
<asp:Content ID="HeadContains" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="PageContains" ContentPlaceHolderID="mainContain" runat="server">
    <div id="home">
    <h1>This is my home page</h1>

             <table>
        <asp:Repeater ID="myModelLsRepeater" runat="server">
            <ItemTemplate>
                <tr>
                    <td>
                        <asp:HyperLink runat="server" NavigateUrl='<%# string.Format("~/model.aspx?name={0}&faction={1}", Eval("name"), Eval("faction")) %>' >
                            <asp:Label runat="server" Text='<%# Eval("name")%>'>  </asp:Label>
                        </asp:HyperLink>
                    </td>
                    <td>

                    </td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
</table>


    <br />
    <asp:Button ID="btnAdd" runat="server" Text="Add New Model" OnClick="btnAdd_Click" />
    <asp:Label ID="lbStats" runat="server"></asp:Label>

    </div>
</asp:Content>
