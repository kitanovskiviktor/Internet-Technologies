<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Najava.aspx.cs" Inherits="Lab1_GrupaV.Najava" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <asp:Label ID="nameLabel" runat="server" Text="Име"></asp:Label>
        <asp:TextBox ID="nameInput" runat="server"></asp:TextBox>

    
        <asp:RequiredFieldValidator
            class="text-danger"
            ID="nameValidator" 
            runat="server" 
            ErrorMessage="Внесете име"
            ControlToValidate="nameInput">
        </asp:RequiredFieldValidator><br />

        <asp:Label ID="passwordLabel" runat="server" Text="Лозинка"></asp:Label>
        <asp:TextBox ID="passwordInput" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator
            class="text-danger"
            ID="passwordValdiator" 
            runat="server" 
            ErrorMessage="Внесете лозинка"
            ControlToValidate="passwordInput">
        </asp:RequiredFieldValidator><br />

        <asp:Label ID="emailLabel" runat="server" Text="Е-aдреса"></asp:Label>
        <asp:TextBox ID="emailInput" runat="server"></asp:TextBox>
         <asp:RequiredFieldValidator
            class="text-danger"
            ID="emailValidator" 
            runat="server" 
            ErrorMessage="Внесете емаил"
            ControlToValidate="emailInput">
        </asp:RequiredFieldValidator>

        <asp:RegularExpressionValidator 
            ID="emailValidator2"
            class="text-danger"
            runat="server"
            ControlToValidate="emailInput"
            ValidationExpression="^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"
            ErrorMessage="Внесете валиден формат">
        </asp:RegularExpressionValidator><br />

        <asp:Button ID="Button1" runat="server" Text="Најавете се" OnClick="najavaClick" />
    </div>
</asp:Content>
