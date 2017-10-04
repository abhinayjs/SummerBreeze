<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
  CodeBehind="Page1_New.aspx.cs" Inherits="SummerBreeze.Page1_New" %>

<%@ Register src="UserControls/UCCustomerFormView.ascx" tagname="UCCustomerFormView" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CurrentPage" runat="server">
    Create customer 
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Instructions" runat="server">
    <label id="heading" style="font-style:oblique; font-size:large;">Customer Registration Form </label>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <uc1:UCCustomerFormView ID="UCCustomerFormView1" runat="server" />
</asp:Content>
