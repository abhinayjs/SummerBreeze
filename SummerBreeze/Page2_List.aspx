<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Page2_List.aspx.cs" Inherits="SummerBreeze.Page2_List" %>

<%@ Register Src="~/UserControls/UCCustomerFormView.ascx" TagPrefix="uc1" TagName="UCCustomerFormView" %>



<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CurrentPage" runat="server">
List of 
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Instructions" runat="server">
Create a table <br />
use sql datasource and either gridview or listview.
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:UCCustomerFormView runat="server" id="UCCustomerFormView" />
</asp:Content>
