using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["bilet"] == null)
        {
            Response.Redirect("Login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_9B0D5A_projeConnectionString1"].ToString());
        baglanti.Open();
        SqlCommand komut = new SqlCommand("update uye set uye_email=@email,uye_sifre=@sifre,uye_ad=@ad,uye_soyad=@soyad,uye_cinsiyet=@cinsiyet,uye_durumu=1 where uye_email=@session", baglanti);
        komut.Parameters.Add("@session", Session["bilet"].ToString());
        komut.Parameters.AddWithValue("@email", TextBox3.Text);
        komut.Parameters.AddWithValue("@sifre", TextBox5.Text);
        komut.Parameters.AddWithValue("@ad", TextBox1.Text);
        komut.Parameters.AddWithValue("@soyad", TextBox2.Text);
        komut.Parameters.AddWithValue("@cinsiyet", RadioButtonList1.SelectedValue);
        komut.ExecuteNonQuery();
        komut.Dispose();
        baglanti.Close();
        Response.Redirect("profilim.aspx");
    }
}