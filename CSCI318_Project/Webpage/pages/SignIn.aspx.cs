using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sign_In : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Text = "";
    }

    protected void btnLogIn_Click(object sender, EventArgs e)
    {
        SqlDataSource1.SelectCommand = "SELECT U_Name, Password FROM Login WHERE U_Name='" + TxtUName.Text + "'";
        DataView dv1 = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);

        if (TxtUName.Text == "" || TxtPword.Text == "") 
        {
            Label3.Text = "*Please input both your User Name and Password";
        }
        else if ((string)dv1.Table.Rows[0][0] == TxtUName.Text && dv1.Table.Rows[0][1].ToString() == TxtPword.Text)
        {
            Response.Redirect("index.aspx?uname=" + TxtUName.Text);
        }
        else
        {
            Label3.Text = "*User Name or Password is incorrect!";
        }
    }
}