<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Najava.aspx.cs" Inherits="lab2.Najava" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <hr />
    <div class ="container">
        <div class =" row">
            <div class="col-md-4">
                <asp:Label ID="Label1" runat="server" Text="User"></asp:Label>
                <asp:TextBox ID="tbKorisnik" runat="server"></asp:TextBox>
                </div>
            <div class="col-md-4">
                <asp:Label ID="Label2"  runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="tbPassword" runat="server" TextMode="Password"></asp:TextBox><br/>
            </div><br/><br/>
            <div class="col-md-12">
                <asp:Button ID="btnPodnesi" runat="server" Text="Log In" OnClick="btnPodnesi_Click" />&nbsp;&nbsp;
                <asp:Label ID="lblNajava" runat="server" ForeColor="#FF3300"></asp:Label>
            </div>
            </div>
    </div>
</asp:Content>
