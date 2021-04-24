<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default2a.aspx.cs" Inherits="lab2.Default2a" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <hr />
    <div class="container">
        
    <div class="align-center">
  <div class="form-group row">
      <asp:Label ID="Label1" runat="server" class="col-sm-2 col-form-label" Text="Име"></asp:Label>
    <div class="col-sm-10">
        <asp:TextBox ID="tbIme" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;
       <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Внесете име!" ControlToValidate="tbIme" ForeColor="#FF3300"  >*</asp:RequiredFieldValidator>
    </div>
  </div>
  <div class="form-group row">
     <asp:Label ID="Label2" runat="server" class="col-sm-2 col-form-label" Text="Презиме"></asp:Label>
    <div class="col-sm-10">
      <asp:TextBox ID="tbPrezime" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;
       <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Внесете презиме!" ForeColor="#FF3300" ControlToValidate="tbPrezime">*</asp:RequiredFieldValidator>
    </div>
  </div>
    <div class="form-group row">
     <asp:Label ID="Label3" runat="server" class="col-sm-2 col-form-label" Text="ФИНКИ ID"></asp:Label>
    <div class="col-sm-10">
      <asp:TextBox ID="tbID" runat="server"></asp:TextBox>&nbsp<asp:Label ID="Label4" runat="server" Text="@finki.ukim.mk"></asp:Label>&nbsp;&nbsp;&nbsp;
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ForeColor="#FF3300" ErrorMessage="Неправилен формат!" ControlToValidate="tbID" ValidationExpression="^[A-Z]\w*\d{2,}">*</asp:RegularExpressionValidator>
    </div>
  </div>
        <asp:Label ID="Label5" align="center" class="col-sm-5" runat="server" Text="може да ги содржи знаците ...и една точка" Font-Size="X-Small"></asp:Label> <br />
  <div class="form-group row">
     <asp:Label ID="Label6" runat="server" class="col-sm-2 col-form-label" Text="Лозинка"></asp:Label>
    <div class="col-sm-10">
      <asp:TextBox ID="tbLozinka" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="tbLozinka" ErrorMessage="Внесете лозинка!" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
    </div>
  </div>
<div class="form-group row">
     <asp:Label ID="Label8" runat="server" class="col-sm-2 col-form-label" Text="Потврди"></asp:Label>
    <div class="col-sm-10" style="font-size: 8pt">
        <asp:TextBox ID="tbpotvrdi" runat="server" TextMode="Password"></asp:TextBox>
       <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Различни лозинки!" ForeColor="#FF3300" ControlToValidate="tbpotvrdi" ControlToCompare="tbLozinka">*</asp:CompareValidator>
     </div>
  </div>
   <div class="errors">
       <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="#FF3300" />
       <br />
       <br />
   </div>
  <div class="form-group row">
     <asp:Label ID="Label7" runat="server" class="col-sm-2 col-form-label" Text="Адреса"></asp:Label>&nbsp;&nbsp;&nbsp;
    <div class="col-sm-8">
      <asp:TextBox ID="tbAdresa" runat="server"></asp:TextBox>&nbsp<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="tbAdresa" ErrorMessage="Внесете адреса!" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
    </div>
  </div>
   <div class="form-group row">
     <asp:Label ID="Label10" runat="server" class="col-sm-2 col-form-label" Text="Тел"></asp:Label>&nbsp;&nbsp;&nbsp;
    <div class="col-sm-8">
      <asp:TextBox ID="tbTel" runat="server"></asp:TextBox>&nbsp<asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="tbTel" ErrorMessage="Неправилен формат!" ForeColor="#FF3300" ValidationExpression="07[0125678]\d{6}|02[23]\d{6}">*</asp:RegularExpressionValidator>
       </div>
  </div>
    <div class="form-group row">
     <asp:Label ID="Label12" runat="server" class="col-sm-2 col-form-label" Text="Пол"></asp:Label>
    <div class="col-sm-10">
        <asp:RadioButtonList ID="rbList" runat="server" RepeatDirection="Horizontal">
            <asp:ListItem>Ж&nbsp;&nbsp;&nbsp</asp:ListItem>
            <asp:ListItem>М</asp:ListItem>
        </asp:RadioButtonList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="rbList" ErrorMessage="Внесете пол!" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
        &nbsp</div>
  </div>
    <asp:Label ID="Label9" runat="server" class="col-sm-2 col-form-label" Text="Датум на раѓање"></asp:Label>
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
        <br />
 <div class="form-group row">
     <asp:Label ID="Label11" runat="server" class="col-sm-2 col-form-label" Text="Занимање"></asp:Label>
    <div class="col-sm-10">
        <asp:DropDownList ID="ddZanimanje" runat="server">
            <asp:ListItem Value="-занимање-"></asp:ListItem>
            <asp:ListItem>Пекар</asp:ListItem>
            <asp:ListItem>Слаткар</asp:ListItem>
        </asp:DropDownList>
        &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="ddZanimanje" ErrorMessage="Одберете занимање!" ForeColor="#FF3300" InitialValue=" -занимање-">*</asp:RequiredFieldValidator>
     </div>
  </div>
     <div class="form-group row">
     <asp:Label ID="Label14" runat="server" class="col-sm-2 col-form-label" Text="Години на вршење на избраната дејност"></asp:Label>
    <div class="col-sm-10">
        <asp:TextBox ID="tbGodVrsenjeD" runat="server"></asp:TextBox>
       &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="tbGodVrsenjeD" ErrorMessage="Внесете колку години ја вршите дејноста!" ForeColor="#FF3300">*</asp:RequiredFieldValidator>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="tbGodVrsenjeD" ErrorMessage="Недозволена вредност!" MaximumValue="60" MinimumValue="5" ForeColor="#FF3300">*</asp:RangeValidator>
         </div>
  </div>
        <asp:Button ID="btnPodnesi" runat="server" Text="Поднеси" OnClick="btnPodnesi_Click" />&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lastLabel" runat="server" Text=""></asp:Label>
</div>
        </div>
</asp:Content>
