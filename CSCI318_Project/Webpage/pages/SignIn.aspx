<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="SignIn.aspx.cs" Inherits="Sign_In" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            font-weight: bold;
            color: 	#000080;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <br />
    <asp:Label ID="Label1" runat="server" Text="Label">User Name:</asp:Label>&nbsp; &nbsp;<asp:TextBox ID="TxtUName" runat="server" ></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label2" runat="server" Text="Label">Password:</asp:Label>&nbsp;&nbsp;&nbsp;&nbsp; <asp:TextBox ID="TxtPword" runat="server" TextMode="Password" ></asp:TextBox>
    <br />
    &nbsp;&nbsp;<p><strong><asp:Button ID="btnLogIn" runat="server" Text="Log in" OnClick="btnLogIn_Click" Width="90px" CssClass="auto-style1" /> </strong> </p>
    <asp:Label ID="Label3" runat="server" Text="Label" ForeColor="#FF3300"></asp:Label>
    <br />
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:userinfoConnectionString %>" SelectCommand="SELECT * FROM [Login]"></asp:SqlDataSource>
</asp:Content>

