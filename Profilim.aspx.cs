using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Profilim : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["bilet"]==null)
        {
            Response.Redirect("Default.aspx");
        }
        SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_9B0D5A_projeConnectionString1"].ToString());
        baglanti.Open();
        SqlCommand komut = new SqlCommand("select ID,uye_ad,uye_soyad,uye_email,uye_cinsiyet,uye_yonetici,uye_durumu from uye where uye_email=@Email ", baglanti);
        komut.Parameters.AddWithValue("@Email", Session["bilet"].ToString());
        SqlDataReader sonuclar = komut.ExecuteReader();
        GridView1.DataSource = sonuclar;
        GridView1.DataBind();
        komut.Dispose();
        baglanti.Close();

    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Redirect("guncelle.aspx");
    }
}