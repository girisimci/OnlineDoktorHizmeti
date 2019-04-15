using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;

namespace teleTIP_Temel_Sağlık_Hizmeti
{
    public partial class kayit_ol : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ad.Focus();
            iller();
        }


        //DB il çekme metot
        protected void iller()
        {
            SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-L5NJQSB\\SQLEXPRESS;Initial Catalog=dbteletip;Integrated Security=True ; password=Airtes1991.");
            baglanti.Open();
            SqlCommand komut = new SqlCommand("select * from tblIl", baglanti);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                il.Items.Add(dr["ad"].ToString());
            }
        }

        string gender;
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (rbErkek.Checked)
            {
                gender = "ERKEK";
            }
            if (rbKadin.Checked)
            {
                gender = "KADIN";
            }

            SqlConnection baglanti = new SqlConnection("Data Source=DESKTOP-L5NJQSB\\SQLEXPRESS;Initial Catalog=dbteletip;Integrated Security=True ; password=Airtes1991.");
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into tblUye (ad,soyad,sifre,sifreonay,tc,telefon,email,il,cinsiyet) values (@ad,@soyad,@sifre,@sifreonay,@tc,@telefon,@email,@il,@cinsiyet)", baglanti);
            komut.Parameters.AddWithValue("@ad", ad.Value.ToUpper().Trim());
            komut.Parameters.AddWithValue("@soyad", soyad.Value.ToUpper().Trim());
            komut.Parameters.AddWithValue("@tc", tckn.Value);
            komut.Parameters.AddWithValue("@sifre", sifre.Value);
            komut.Parameters.AddWithValue("@sifreonay", sifre_onay.Value);
            komut.Parameters.AddWithValue("@il", il.SelectedValue.ToUpper().Trim());
            komut.Parameters.AddWithValue("@telefon", tel.Value);
            komut.Parameters.AddWithValue("@email", mail.Value.ToLower().Trim());
            komut.Parameters.AddWithValue("@cinsiyet", gender.ToString());

            

            komut.ExecuteNonQuery();

            baglanti.Close();
            Page.ClientScript.RegisterClientScriptBlock(this.GetType(), "", "<script>alert('Kayıt Başarıyla Gerçekleşti');</script>");

            ad.Value = string.Empty;
            soyad.Value = string.Empty;
            sifre.Value = string.Empty;
            sifre_onay.Value = string.Empty;
            tckn.Value = string.Empty;
            tel.Value = string.Empty;
            mail.Value = string.Empty;
            il.SelectedIndex = 0;
            rbErkek.Checked = true;


            ScriptManager.RegisterClientScriptBlock(this, typeof(Page), "redirectJS",
    "setTimeout(function() { window.location.replace('giris.aspx') }, 500);", true);
            
            
        }

        
    }
    
}