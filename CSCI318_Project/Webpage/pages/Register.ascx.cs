using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            SqlDataSource1.InsertCommand = "insert into Login(U_Name, Password, Email) values ('"
                + TxtUserName.Text.ToString() + "','" + TxtPassword.Text.ToString() + "','" + TxtEMail.Text.ToString()
                +  "')";
            SqlDataSource1.Insert();
            Response.Redirect("Successful.aspx" );
        }
        else
        {
            TxtUserName.Focus();
        }
    }

    protected void UserNameValidation_ServerValidate(object source, ServerValidateEventArgs args)
    {
        SqlDataSource1.SelectCommand = "Select * From Login where U_Name='" + TxtUserName.Text.ToString() + "'";
        DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        if (dv.Count == 0)
        {
            args.IsValid = false;
        }
        else {
            args.IsValid = true;
            
        }

    }
}