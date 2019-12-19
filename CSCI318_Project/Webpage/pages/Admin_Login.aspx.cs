using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    private bool Admin_Authentication(string UserName, string Password)
    {
        if (UserName == "root" && Password == "password")
        {
            return true;
        }
        else
        {
            return false;
        }
    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {
        bool Authenticated = false;
        Authenticated = Admin_Authentication(Login1.UserName, Login1.Password);

        e.Authenticated = Authenticated;
    }
}