<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page5_OOP.aspx.cs" Inherits="SummerBreeze.Page5_OOP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="CurrentPage" runat="server">
    Working with Objects
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Instructions" runat="server">
    <div class="container-fluid">
        <ul>
            <li>Open SomeObject.cs
            </li>
            <li>Create 2 methods
            </li>
            <li>Method 1 returns an int between 1 and 10
            </li>
            <li>Method 2 returns a string. any string
            </li>
            <li>Connect method one with the drop down list below
            </li>
            <li>connect method two with the text box.  use code behind.
            </li>
        </ul>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="Column">
            <asp:Button class="btn-primary" ID="btnRandomString" runat="server" Text="Generate Random String" OnClick="btnRandomString_Click" />
        </div>
        <div class="Column">
            <asp:TextBox ID="txtString" runat="server"></asp:TextBox>
        </div>
    </div>
    <div class="row">
        <div class="Column">
            <asp:Button class="btn-primary" ID="btnRandomIndex" runat="server" Text="Select Random Index" OnClick="btnRandomIndex_Click" />
        </div>
        <div class="Column">
            <asp:DropDownList ID="ddlRandomIndex"
                runat="server">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem Value="bob">3</asp:ListItem>
                <asp:ListItem>sally</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem Value="7">george</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>
</asp:Content>
