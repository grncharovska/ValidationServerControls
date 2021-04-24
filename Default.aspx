

<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="lab2._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <hr />
    <div class="">
    <table class="table table-bordered col-md-8 d-inline-flex">
        <tr>
            <td  align="right" class="modal-sm" style="width: 199px" >
               <asp:Label ID="Label1" runat="server" Text="Име"></asp:Label>&nbsp;</td>
            <td style="width: 564px" class="modal-sm" >
                <asp:TextBox ID="txtIme" runat="server"></asp:TextBox>
            </td>
            <td style="width: 82px" rowspan="11" >
                <asp:Panel ID="pnlSlika" runat="server" BackColor="#FFFFCC" Height="535px" align="left" Width="599px">
                    <asp:Label ID ="lbl" runat="server" align="left">Почитуван кориснику</asp:Label>
                    <br />
                    <asp:Label ID="lblKorisnik" runat="server" Text="lblKorisnik" Font-Bold="True" ForeColor="Red"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label12" runat="server" Text="Издаденави е карта за"></asp:Label>
                    <br />
                    <asp:Label ID="lblKartaZa" runat="server" Text="lblSredstvo" Font-Bold="True" Font-Italic="True"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="fefv" runat="server" Text="со почетна дестинација"></asp:Label>
                    <br />
                    <asp:Label ID="lblpocetnaD" runat="server" Text="lblOd" Font-Bold="True" Font-Italic="True"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label14" runat="server" Text="и крајна дестинација"></asp:Label>
                    <br />
                    <asp:Label ID="lblkrajnaD" runat="server" Text="lblDo" Font-Bold="True" Font-Italic="True"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label15" runat="server" Text="Времето на поаѓање е"></asp:Label>
                    <br />
                    <asp:Label ID="Label24" runat="server" Text="lblVreme" Font-Bold="True" Font-Italic="True"></asp:Label>
                    <br /><br />
                    <asp:Label ID="Label16" runat="server" Text="Вашето место за седење ќе биде во зоната за "></asp:Label>
                    &nbsp;<asp:Label ID="Label25" runat="server" Text="lblZona" Font-Bold="True" Font-Italic="True"></asp:Label>
                    &nbsp;<asp:Label ID="Label18" runat="server" Text="во "></asp:Label>
                    <asp:Label ID="Label26" runat="server" Text="lblKlasa" Font-Bold="True" Font-Italic="True"></asp:Label>
                    &nbsp;<asp:Label ID="Label19" runat="server" Text="класа и во текот на патувањето ќе бидете послужени со "></asp:Label>
                      <asp:Label ID="Label13" runat="server" Text="lblPosluga" Font-Bold="True" Font-Italic="True"></asp:Label>
                    <br />
                    <asp:Image ID="Image1" runat="server" />
                   
                   
                    <br />
                    <asp:Label ID="Label17" class="fixed-bottom" runat="server" Text="Ви благодариме на довербата и ви посакуваме среќен пат!"></asp:Label>
                    <br />
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td  align="right" class="modal-sm" style="width: 199px">
                <asp:Label ID="Label2" runat="server" Text="Презиме"></asp:Label>&nbsp;</td>
            <td style="width: 564px" class="modal-sm">
                <asp:TextBox ID="txtPrezime" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td  align="right" class="modal-sm" style="width: 199px">
                <asp:Label ID="Label3" runat="server" Text="Од"></asp:Label>&nbsp;</td>
            <td style="width: 564px" class="modal-sm">
                <asp:DropDownList ID="ddlOd" runat="server" AutoPostBack="True">
                    <asp:ListItem>Скопје</asp:ListItem>
                    <asp:ListItem>Тетово</asp:ListItem>
                    <asp:ListItem>Битола</asp:ListItem>
                    <asp:ListItem>Куманово</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td  align="right" class="modal-sm" style="width: 199px">
                <asp:Label ID="Label4" runat="server" Text="До"></asp:Label>&nbsp;</td>
            <td style="width: 564px" class="modal-sm">
                <asp:DropDownList ID="ddlDo" runat="server" AutoPostBack="True">
                    <asp:ListItem>Охрид</asp:ListItem>
                    <asp:ListItem>Струга</asp:ListItem>
                    <asp:ListItem>Дојран</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td  align='right' class="modal-sm" style="width: 199px">
                <asp:Label ID="Label5" runat="server" Text="Датум на тргање"></asp:Label>&nbsp;</td>
            <td style="width: 564px" class="modal-sm">
                <asp:DropDownList ID="ddlDen" runat="server" AutoPostBack="True" OnLoad="ddlDen_Load">
                </asp:DropDownList>&nbsp;&nbsp;
                <asp:DropDownList ID="ddlMesec" runat="server" AutoPostBack="True" OnLoad="ddlMesec_Load">
                </asp:DropDownList>&nbsp;&nbsp;
                <asp:DropDownList ID="ddlGodina" runat="server" AutoPostBack="True">
                    <asp:ListItem>2020</asp:ListItem>
                    <asp:ListItem>2021</asp:ListItem>
                    <asp:ListItem>2022</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td align="right" class="modal-sm" style="width: 199px">
                <asp:Label ID="Label6" runat="server" Text="Време на тргање"></asp:Label>&nbsp;</td>
            <td style="width: 564px" class="modal-sm">
                <asp:DropDownList ID="ddlVreme" runat="server" AutoPostBack="True" OnLoad="ddlVreme_Load" Width="132px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td  align="right" class="modal-sm" style="width: 199px">
                <asp:Label ID="Label7" runat="server" Text="Превозно средство"></asp:Label>&nbsp;</td>
            <td style="width: 564px" class="modal-sm">
                <asp:ListBox ID="lbSredstvo" runat="server" AutoPostBack="True" Height="50px" Width="90px" OnSelectedIndexChanged="lbSredstvo_SelectedIndexChanged">
                    <asp:ListItem Value="Avion.jpg">Авион</asp:ListItem>
                    <asp:ListItem Value="Voz.jpg">Воз</asp:ListItem>
                </asp:ListBox>
            </td>
        </tr>
        <tr>
            <td  align="right" class="modal-sm" style="width: 199px">
                <asp:Label ID="Label8" runat="server" Text="Зона"></asp:Label>&nbsp;</td>
            <td style="width: 564px" class="modal-sm">
                <asp:RadioButtonList ID="rblZona" runat="server" AutoPostBack="True">
                    <asp:ListItem>Пушачи</asp:ListItem>
                    <asp:ListItem>Непушачи</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td align="right" class="modal-sm" style="width: 199px">
                <asp:Label ID="Label9" runat="server" Text="Класа"></asp:Label>&nbsp;</td>
            <td style="width: 564px" class="modal-sm">
                <asp:RadioButtonList ID="rblKlasa" runat="server" CellSpacing="0" RepeatDirection="Horizontal">
                    <asp:ListItem>Економска&nbsp;&nbsp;&nbsp;</asp:ListItem>
                    <asp:ListItem>Бизнис</asp:ListItem>
                </asp:RadioButtonList>
            </td>
        </tr>
        <tr>
            <td align="right" class="modal-sm" style="width: 199px">
                <asp:Label ID="Label10" runat="server" Text="Послуга"></asp:Label>&nbsp;</td>
            <td style="width: 564px" class="modal-sm">
                <asp:CheckBoxList ID="chkPosluga" runat="server" Width="280px" RepeatDirection="Horizontal">
                    <asp:ListItem>Пијалок</asp:ListItem>
                    <asp:ListItem>Кафе</asp:ListItem>
                    <asp:ListItem>Оброк</asp:ListItem>
                </asp:CheckBoxList>
            </td>
        </tr>
        <tr>
            <td  align="right" class="modal-sm" style="width: 199px">
                <asp:Label ID="Label11" runat="server" Text=" "></asp:Label>&nbsp;</td>
            <td style="width: 564px" align="right" class="modal-sm">
                <asp:Button ID="btnPodnesi" runat="server" Text="Поднеси" OnClick="btnPodnesi_Click" />
            </td>
        </tr>
    </table>
        </div>
    <hr/>
</asp:Content>
