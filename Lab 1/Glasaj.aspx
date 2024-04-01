<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Glasaj.aspx.cs" Inherits="InternetTehnologii3.Glasaj" MaintainScrollPositionOnPostBack="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <asp:Label ID="lblProfesor" runat="server" Text="Професор"></asp:Label><br />
        <asp:DropDownList ID="lbPredmeti" runat="server" OnSelectedIndexChanged="lbPredmeti_SelectedIndexChanged" EnableViewState="True" AutoPostBack="false"></asp:DropDownList>
        <asp:DropDownList ID="lbKrediti" runat="server"></asp:DropDownList><br />
        <asp:Button ID="Button1" runat="server" Text="Гласајте" OnClick="Glasajte_Click" />
    </div>
    <hr />
    <div class="row">
        <asp:Label ID="Label1" runat="server" Text="Предмет"></asp:Label><br />
        <asp:TextBox ID="newPredmet" runat="server"></asp:TextBox><br />
        <asp:Label ID="Label2" runat="server" Text="Кредити"></asp:Label><br />
        <asp:TextBox ID="newKrediti" runat="server"></asp:TextBox><br />
        <asp:Button ID="Button2" runat="server" Text="Додади" OnClick="Dodadi_Click" AutoPostBack="true"/><br />
        <asp:Button ID="Button3" runat="server" Text="Избриши" OnClick="Izbrisi_Click" />
        <asp:Label ID="SelectedPredmet" runat="server" Text="Label"></asp:Label>
    </div>
</asp:Content>
