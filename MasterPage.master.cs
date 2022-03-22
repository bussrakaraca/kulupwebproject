using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
         if (Session["bilet"]!=null)
        {
            LinkButton1.Visible = true;
            Label1.Text = Session["bilet"].ToString();

            Login1.Visible = false;
            Giris.Visible = false;
          

        }
        else
        {
            LinkButton1.Visible = false;
            
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_9B0D5A_projeConnectionString1"].ToString());
        baglanti.Open();
        SqlCommand komut = new SqlCommand("select* from uye where uye_email=@Email and uye_sifre=@sifre and uye_durumu=1", baglanti);
        komut.Parameters.AddWithValue("@Email", TextBox1.Text);
        komut.Parameters.AddWithValue("@sifre", TextBox2.Text);

        SqlDataReader sonuc = komut.ExecuteReader();
        if (sonuc.Read())
        {
            Session.Add("bilet", TextBox1.Text);
            Response.Redirect("Profilim.aspx");
        }
        else
        {
            Label4.Text="Giriş Başarısız";
        }
        baglanti.Dispose();
        baglanti.Close();
    }
    
    protected void Button2_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Kaydol.aspx");
    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Default.aspx");
    }
}

