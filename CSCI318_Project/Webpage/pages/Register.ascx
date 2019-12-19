<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Register.ascx.cs" Inherits="Register" %>
<style type="text/css">
    body {
        text-align:center;
    }
    table.steelBlueCols {
        border: 4px solid #555555;
        background-color: #555555;
        width: 800px;
        margin:auto;
        text-align: center;
        border-collapse: collapse;
    }

        table.steelBlueCols td, table.steelBlueCols th {
            border: 1px solid #555555;
            padding: 5px 10px;
        }

        table.steelBlueCols tbody td {
            font-size: 12px;
            font-weight: bold;
            color: #FFFFFF;
        }

        table.steelBlueCols td:nth-child(even) {
            background: #398AA4;
        }

        table.steelBlueCols thead {
            background: #398AA4;
            border-bottom: 10px solid #398AA4;
        }

            table.steelBlueCols thead th {
                font-size: 15px;
                font-weight: bold;
                color: #FFFFFF;
                text-align: left;
                border-left: 2px solid #398AA4;
            }

                table.steelBlueCols thead th:first-child {
                    border-left: none;
                }


    .auto-style1 {
        width: 100%;
    }

    .auto-style2 {
        text-align: center;
    }
</style>


<table class="steelBlueCols">
    <tr>
        <td colspan="3" class="auto-style2">Please Sign Up Here<br />
            <br />
            <br />
            Fill out following blanks to sign up at our website.</td>
    </tr>
    <tr>
        <td>User Name:</td>
        <td>
            <asp:TextBox ID="TxtUserName" runat="server" ></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TxtUserName" ErrorMessage="Please Input Your User Name" CssClass="Error" style="color: #FF3399">*</asp:RequiredFieldValidator>
            <asp:CustomValidator ID="UserNameValidation" runat="server" ControlToValidate="TxtUserName" CssClass="Error" ErrorMessage="This user name has already been used!" OnServerValidate="UserNameValidation_ServerValidate" style="color: #FF3399">*</asp:CustomValidator>
        </td>
    </tr>
    <tr>
        <td>Password:</td>
        <td>
            <asp:TextBox ID="TxtPassword" runat="server" TextMode="Password" ></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TxtPassword" ErrorMessage="Please Input Your Password" CssClass="Error" style="color: #FF3399">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TxtPassword" ErrorMessage="Your Password should be between 6-20 characters with at least 1 alphabet and 1 number. " ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,20}$" CssClass="Error" style="color: #FF3399">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>Confirm Password:</td>
        <td>
            <asp:TextBox ID="TxtRe_Pword" runat="server" TextMode="Password" ></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TxtRe_Pword" ErrorMessage="Repeat your password" CssClass="Error" style="color: #FF3399">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TxtPassword" ControlToValidate="TxtRe_Pword" ErrorMessage="Your input doesn't match" CssClass="Error" style="color: #FF3399">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td>E-mail address:</td>
        <td>
            <asp:TextBox ID="TxtEMail" runat="server" TextMode="Email" ></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TxtEMail" ErrorMessage="Please Input Your Email" CssClass="Error" style="color: #FF3399">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TxtEMail" ErrorMessage="Please input a valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="Error" style="color: #FF3399">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="btnSignUp" runat="server" Text="Sign Up" OnClick="btnSignUp_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="Error" ForeColor="#FF3399" />
        </td>
    </tr>
</table>

<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:userinfoConnectionString %>" SelectCommand="SELECT * FROM [Login]">
</asp:SqlDataSource>


