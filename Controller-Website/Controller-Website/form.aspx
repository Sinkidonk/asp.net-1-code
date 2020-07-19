<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPages/Front.master" AutoEventWireup="false" CodeFile="form.aspx.vb" Inherits="form" %>
<%@ Register Src="~/Controls/ContactForm.ascx" TagPrefix="Controller" TagName="Form" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <Controller:Form runat="server" ID="ContactForm1" ClientIDMode="Inherit" />
</asp:Content>

