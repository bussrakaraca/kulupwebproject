using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["kullanici"] != null)
        {
            Response.Redirect("Profilim.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_9B0D5A_projeConnectionString1"].ToString());
        baglanti.Open();
        SqlCommand komut = new SqlCommand("select* from uye where uye_email=@Email and uye_sifre=@sifre and uye_yonetici=1", baglanti);
        komut.Parameters.AddWithValue("@Email", TextBox1.Text);
        komut.Parameters.AddWithValue("@sifre", TextBox2.Text);

        SqlDataReader sonuc = komut.ExecuteReader();
        if (sonuc.Read())
        {
            Session.Add("kullanici", TextBox1.Text);
            Response.Redirect("Profilim.aspx");
        }
        else
        {
            Label3.Text = "Giriş Başarısız";
        }
        baglanti.Dispose();
        baglanti.Close();
    }
}