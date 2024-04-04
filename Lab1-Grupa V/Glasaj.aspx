<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Glasaj.aspx.cs" Inherits="Lab1_GrupaV.Glasaj" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <h1>Гласање</h1>
        <asp:Label ID="lblProfesor" runat="server" Text="Професор"></asp:Label><br />

        <asp:ListBox ID="lbPredmeti" runat="server" OnSelectedIndexChanged="lbPredmeti_SelectedIndexChanged" AutoPostBack="true"></asp:ListBox>
        <asp:ListBox ID="lbKrediti" runat="server"></asp:ListBox><br />

        <asp:Button ID="Button1" runat="server" Text="Гласајте" OnClick="voteClick" />

        <hr />

        <div class="row">
            <asp:Label ID="Label1" runat="server" Text="Предмет"></asp:Label><br />
            <asp:TextBox ID="predmetInput" runat="server"></asp:TextBox><br />
            <asp:Label ID="Label2" runat="server" Text="Кредити"></asp:Label><br />
            <asp:TextBox ID="kreditiInput" runat="server"></asp:TextBox><br />
            <asp:Button ID="Button2" runat="server" Text="Додади" OnClick="addClick" /><br />
            <asp:Button ID="Button3" runat="server" Text="Избриши" OnClick="deleteClick"/>

        </div>
    </div>
</asp:Content>
