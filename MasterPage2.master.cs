using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage2 : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["bilet"] != null)
        {
            LinkButton1.Visible = true;
            Label1.Text = Session["bilet"].ToString();

        }
        else
        {
            LinkButton1.Visible = false;

        }
    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Default.aspx");
    }
}
