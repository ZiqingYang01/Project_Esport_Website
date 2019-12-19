<%@ Page Title="" Language="C#" MasterPageFile="MasterPage.master" AutoEventWireup="true" CodeFile="Update.aspx.cs" Inherits="update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
      <style type="text/css">
        .center {
            text-align:center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <br />
    <div class="center">
        <div style="width: 400px; margin-left: auto; margin-right:auto;">
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem>Update</asp:ListItem>
        <asp:ListItem>Insert</asp:ListItem>
    </asp:DropDownList>
    <asp:detailsview runat="server" height="50px" width="125px" DataSourceID="sqlDataSource1" DefaultMode="Edit" ID="DetailsView1" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AutoGenerateRows="False" DataKeyNames="UID" AllowPaging="True">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="UID" HeaderText="UID" InsertVisible="False" ReadOnly="True" SortExpression="UID" />
            <asp:BoundField DataField="U_Name" HeaderText="User_Name" SortExpression="U_Name" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    </asp:detailsview>
    <asp:sqldatasource runat="server" ID="sqlDataSource1" ConnectionString="<%$ ConnectionStrings:userinfoConnectionString %>" DeleteCommand="DELETE FROM [Login] WHERE [UID] = @UID" InsertCommand="INSERT INTO [Login] ([U_Name], [Password], [Email]) VALUES (@U_Name, @Password, @Email)" SelectCommand="SELECT * FROM [Login]" UpdateCommand="UPDATE [Login] SET [U_Name] = @U_Name, [Password] = @Password, [Email] = @Email WHERE [UID] = @UID">
        <DeleteParameters>
            <asp:Parameter Name="UID" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="U_Name" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="U_Name" Type="String" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="UID" Type="Int32" />
        </UpdateParameters>
    </asp:sqldatasource>
    <asp:DetailsView ID="DetailsView2" runat="server" DataSourceID="sqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" AutoGenerateRows="False" DataKeyNames="UID">
        <AlternatingRowStyle BackColor="#DCDCDC" />
        <EditRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="UID" HeaderText="UID" InsertVisible="False" ReadOnly="True" SortExpression="UID" />
            <asp:BoundField DataField="U_Name" HeaderText="User_Name" SortExpression="U_Name" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:CommandField ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
    </asp:DetailsView>
        </div>
        </div>
</asp:Content>

