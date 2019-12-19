using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DetailsView1.Visible = false;
        DetailsView2.Visible = false;
        if (DropDownList1.SelectedItem.ToString() == "Update")
        {
            DetailsView1.Visible = true;
        }
        if (DropDownList1.SelectedItem.ToString() == "Insert")
        {
            DetailsView2.Visible = true;
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.SelectedItem.ToString() == "Update")
        {
            DetailsView1.Visible = true;
        }
        if (DropDownList1.SelectedItem.ToString() == "Insert")
        {
            DetailsView2.Visible = true;
        }
    }
}