<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Admin_Login.aspx.cs" Inherits="Admin_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">

    <div style="text-align:center;">
     <div style="width: 400px; margin-left: auto; margin-right:auto;">
    <asp:Login ID="Login1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderStyle="Solid" BorderWidth="1px" DestinationPageUrl="Update.aspx" Font-Names="Verdana" Font-Size="0.8em" OnAuthenticate="Login1_Authenticate" Font-Bold="True" Height="279px" Width="658px" BorderPadding="4" ForeColor="#333333">
        <InstructionTextStyle BackColor="#CCFFFF" Font-Italic="True" ForeColor="Black" />
        <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
        <TextBoxStyle Font-Size="0.8em" />
        <TitleTextStyle BackColor="#507CD1" Font-Bold="True" ForeColor="#FFFFFF" Font-Size="0.9em" />
    </asp:Login>
     </div>
    </div>
</asp:Content>

