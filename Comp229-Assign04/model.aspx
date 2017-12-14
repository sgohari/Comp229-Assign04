<%@ Page Title="ModelPage" Language="C#" MasterPageFile="~/main.Master" AutoEventWireup="true" CodeBehind="model.aspx.cs" Inherits="Comp229_Assign04.model" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="PageContains" ContentPlaceHolderID="mainContain" runat="server">
 <div>
       <div class="landing-body">
        <asp:GridView ID="modelPageGrv" runat="server" AutoGenerateColumns="false" CssClass="listModelStyle">
            <Columns>
                <asp:BoundField DataField="name" HeaderText="Name" />
                <asp:BoundField DataField="faction" HeaderText="Faction" />
                <asp:BoundField DataField="rank" HeaderText="Rank" />
                <asp:BoundField DataField="base" HeaderText="Base" />
                <asp:BoundField DataField="size" HeaderText="Size" />
                <asp:BoundField DataField="deploymentZone" HeaderText="Deployment Zone" />
            </Columns>
        </asp:GridView>
        <br />

        <asp:Button ID="btnAdd" runat="server" CssClass="btn btn-primary" OnClick="btnAdd_Click" Text="Add New Hero" />
    </div>
        
</div>
    
</asp:Content>
