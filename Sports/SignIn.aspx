<%@ Page Title="SignIn" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="SignIn.aspx.cs" Inherits="Sports.SignIn" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
    <h3>Sign In page.</h3>
    <asp:Label ID="Label1" runat="server" Text="fullname"></asp:Label>
    <asp:TextBox ID="FullName" class="form-control" runat="server"></asp:TextBox><br />

    <asp:Label ID="Label2"  runat="server" Text="email"></asp:Label>
    <asp:TextBox ID="Email" class="form-control" runat="server"></asp:TextBox><br />

    <asp:Label ID="Label3" runat="server" Text="password"></asp:Label>
    <asp:TextBox ID="Password" class="form-control" runat="server"></asp:TextBox><br />

    <asp:Button ID="submit" runat="server" Text="Sign In" OnClick="submit_Click" />

    <asp:Label ID="EmptyInputs" runat="server" class="text-warning" Text=""></asp:Label>
</asp:Content>