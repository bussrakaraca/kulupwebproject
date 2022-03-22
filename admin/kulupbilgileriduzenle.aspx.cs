using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_kulupbilgileriduzenle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kullanici"] == null)
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("kulupyetkilibelirle.aspx");
    }
}