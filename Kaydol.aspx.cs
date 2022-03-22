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

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_9B0D5A_projeConnectionString1"].ToString());
        baglanti.Open();
        SqlCommand komut = new SqlCommand("insert into uye (uye_email,uye_sifre,uye_ad,uye_soyad,uye_cinsiyet,uye_yonetici,uye_durumu) values (@email,@sifre,@ad,@soyad,@cinsiyet,0,1)", baglanti);
        komut.Parameters.AddWithValue("@email", TextBox3.Text);
        komut.Parameters.AddWithValue("@sifre", TextBox5.Text);
        komut.Parameters.AddWithValue("@ad", TextBox1.Text);
        komut.Parameters.AddWithValue("@soyad", TextBox2.Text);
        komut.Parameters.AddWithValue("@cinsiyet", RadioButtonList1.SelectedValue);
        komut.ExecuteNonQuery();
        komut.Dispose();
        baglanti.Close();
        Response.Redirect("~/Login.aspx");
    }
}