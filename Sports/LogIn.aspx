<%@ Page Title="LogIn" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Sports.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>.</h2>
   
    <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
    <asp:TextBox ID="Username" runat="server"></asp:TextBox>

    <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
    <asp:TextBox ID="Password" runat="server"></asp:TextBox>
    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator"></asp:CompareValidator>
   <a runat="server" href="~/BOOKS">LogIn</a>
   
</asp:Content>
