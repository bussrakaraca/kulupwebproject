using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class haberekle : System.Web.UI.Page
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
        SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_9B0D5A_projeConnectionString1"].ToString());
        baglanti.Open();
        SqlCommand kom = new SqlCommand("Select ID from uye where uye_email=@session", baglanti);
        kom.Parameters.Add("@session",Session["kullanici"].ToString());
        SqlCommand komut = new SqlCommand("insert into haber (haber_baslik,haber_detay,haber_tarih,haber_ekleyen) values (@baslik,@detay,@tarih,@session)", baglanti);
        komut.Parameters.AddWithValue("@tarih", DateTime.Now.ToString());
        komut.Parameters.AddWithValue("@baslik", TextBox1.Text);
        komut.Parameters.AddWithValue("@detay", CKEditorControl1.Text);
        komut.Parameters.AddWithValue("@session",kom.CommandType);
        komut.ExecuteNonQuery();
        komut.Dispose();
        baglanti.Close();
        Response.Redirect("haberduzenle.aspx");
        
    }
}