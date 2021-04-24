<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GlavnaStranica.aspx.cs" Inherits="lab2.GlavnaStranica" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <hr />
    <h2 id="userWelcome">Welcome</h2>&nbsp;<hr />
    <asp:Button ID="btnLogOut" runat="server" Text="Log Out" OnClick="btnLogOut_Click" />
</asp:Content>
