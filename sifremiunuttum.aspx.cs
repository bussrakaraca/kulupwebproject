using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection baglanti = new SqlConnection(ConfigurationManager.ConnectionStrings["DB_9B0D5A_projeConnectionString1"].ToString());
        baglanti.Open();
        SqlCommand komut = new SqlCommand("update uye set uye_sifre='95487' where uye_email=@email", baglanti);
        komut.Parameters.AddWithValue("@email", TextBox1.Text);
        MailMessage Mail = new MailMessage();
        Mail.From = new MailAddress("bkaraca42@hotmail.com");
        Mail.To.Add(TextBox1.Text);
        Mail.Subject = "Şifreniz";
        Mail.Body = "Yeni şifreniz '95487' ";
        SmtpClient smpt = new SmtpClient();
        smpt.Credentials = new NetworkCredential("bkaraca42@hotmail.com","matematik");
        smpt.Port = 586;
        smpt.Host = " smtp.live.com";//Siz kendi mail hesabınızın adını vereceksiniz
        smpt.Send(Mail);
        Button1.Text = "Mailiniz Gönderildi";
    }
}