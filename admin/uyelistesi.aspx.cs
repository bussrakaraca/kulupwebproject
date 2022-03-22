using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_uyelistesi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["bilet"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("yoneticidurum.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("uyeduzenle.aspx");
    }
}