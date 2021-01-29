using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace KargoTakipOtomasyonu
{
    public partial class Form1 : Form
    {
        MySqlConnection bag;
        MySqlCommand komut;
        MySqlDataReader dr;
        public static string degisken;

        public Form1()
        {
            InitializeComponent();
        }


        public void baglantı()
        {
            bag = new MySqlConnection("Server=127.0.0.1;Database=kargo;user=root;Pwd=1562;SslMode=none");
            bag.Open();

        }

        public void uyeol()// üye ol
        {
            baglantı();
            string eklemekomut = "insert into gonderen(Adi,Soyadi,E_posta,GSM,Adres,sifre) values ('" + adTxt.Text + "','" + soyadTxt.Text + "','" + postaTxt.Text + "','" + gsmTxt.Text + "','" + adresTxt.Text + "','" + sifreTxt2.Text + "')";
            komut = new MySqlCommand(eklemekomut, bag);
            komut.ExecuteNonQuery();
            bag.Close();
            MessageBox.Show("Üyeliğiniz Başarılı", "Bilgilendirme Penceresi", MessageBoxButtons.OK, MessageBoxIcon.None);
        }

        public void uyesifreDegistir()//üye şifre değiştir
        {
            try
            {
                baglantı();
                string guncellemekomutu = "update gonderen set E_posta='" + this.epostaTxt.Text + "', sifre ='" + this.ysifreTxt.Text + "';";
                komut = new MySqlCommand(guncellemekomutu, bag);

                dr = komut.ExecuteReader();
                while (dr.Read())
                {
                }
                bag.Close();

                MessageBox.Show("Yeni şifreniz oluşturuldu.");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        public void yoneticisifreDegistir()//yönetici şifre değiştir
        {
            try
            {
                baglantı();
                string guncellemekomutu = "update yonetici set E_posta='" + this.yoneticipostaTxt2.Text + "', sifre ='" + this.yysifreTxt.Text + "';";
                komut = new MySqlCommand(guncellemekomutu, bag);

                dr = komut.ExecuteReader();
                while (dr.Read())
                {
                }
                bag.Close();

                MessageBox.Show("Yeni şifreniz oluşturuldu.");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            uyePnl.Hide();
            yoneticiPnl.Hide();
            sorguPnl.Hide();
        }

        private void girisBtn_Click(object sender, EventArgs e)// üye girişi
        {

            baglantı();
            komut = new MySqlCommand();
            komut.Connection = bag;
            komut.CommandText = "select * from gonderen where E_posta='" + girisTxt.Text + "'AND sifre='" + sifreTxt.Text + "'";
            dr = komut.ExecuteReader();
            if (dr.Read())
            {
                degisken = girisTxt.Text;
                this.Hide();
                UyeGiris g = new UyeGiris();
                g.Show();

            }
            else
            {
                DialogResult secim = MessageBox.Show("Hatalı Kullanıcı Adı veya Şifre Girdiniz", "Bilgilendirme Penceresi", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                if (secim == DialogResult.OK)
                {
                    this.Show();
                }
            }

        }

        private void şifreBtn_Click(object sender, EventArgs e)
        {
            uyePnl.Show();

        }

        private void kaydetBtn_Click(object sender, EventArgs e)// üye şifresini unuttuğunda
        {
            //referans http://siber.club/yazilim/vb-ve-c-kargo-takip-otomasyonlari-access-veritabani-kaynak-kodlari-proje-dosyasi/

            if (epostaTxt.Text.Contains("@") && epostaTxt.Text.Contains(".com"))
            {
                if (ysifreTxt.Text == tsifreTxt.Text)
                {
                    uyesifreDegistir();

                    uyePnl.Hide();
                }
                else
                {
                    MessageBox.Show("lütfen şifre alanlarını birbiriyle eşit yapınız", "Bilgilendirme Penceresi", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            else
            {
                MessageBox.Show("lütfen mail adresini doğru giriniz");
            }

        }

        private void sifreGosterChc_CheckedChanged(object sender, EventArgs e)//üye şifre gösterme
        {
            // referans https://semihcelikol.com/cta-sifreyi-gostermek-gizlemek/

            //checkBox işaretli ise
            if (sifreGosterChc.Checked)
            {
                //karakteri göster.
                sifreTxt.PasswordChar = '\0';
            }
            //değilse karakterlerin yerine * koy.
            else
            {
                sifreTxt.PasswordChar = '*';
            }

        }

        private void ygirisBtn_Click(object sender, EventArgs e) // yönetici girişi
        {
            baglantı();
            komut = new MySqlCommand();
            komut.Connection = bag;
            komut.CommandText = "select * from yonetici where E_posta='" + yoneticipostaTxt.Text + "'AND Sifre='" + yoneticisifreTxt.Text + "'";
            dr = komut.ExecuteReader();
            if (dr.Read())
            {
                this.Hide();
                YoneticiGiris admin = new YoneticiGiris();
                admin.Show();

            }
            else
            {
                DialogResult secim = MessageBox.Show("Hatalı Kullanıcı Adı veya Şifre Girdiniz", "Bilgilendirme Penceresi", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                if (secim == DialogResult.OK)
                {
                    this.Show();

                }

            }
            bag.Close();
        }

        private void ysifreBtn_Click(object sender, EventArgs e)// yönetici şifremi unuttum
        {
            yoneticiPnl.Show();

        }

        private void kaydetBtn2_Click(object sender, EventArgs e)// yönetici şifre değiştirme
        {
            //referans http://siber.club/yazilim/vb-ve-c-kargo-takip-otomasyonlari-access-veritabani-kaynak-kodlari-proje-dosyasi/
            if (yoneticipostaTxt2.Text.Contains("@") && yoneticipostaTxt2.Text.Contains(".com"))
            {
                if (yysifreTxt.Text == ytsifreTxt.Text)
                {
                    yoneticisifreDegistir();
                    yoneticiPnl.Hide();
                }
                else
                {
                    MessageBox.Show("lütfen şifre alanlarını birbiriyle eşit yapınız", "Bilgilendirme Penceresi", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
            }
            else
            {
                MessageBox.Show("lütfen mail adresini doğru giriniz");

            }
        }

        private void sifreGosterChc2_CheckedChanged(object sender, EventArgs e)// yönetici şifre göster
        {
            // referans https://semihcelikol.com/cta-sifreyi-gostermek-gizlemek/

            //checkBox işaretli ise
            if (sifreGosterChc2.Checked)
            {
                //karakteri göster.
                yoneticisifreTxt.PasswordChar = '\0';
            }
            //değilse karakterlerin yerine * koy.
            else
            {
                yoneticisifreTxt.PasswordChar = '*';
            }
        }

        private void uyeOlBtn_Click(object sender, EventArgs e) //üye olma
        {
            uyeol();
        }

        private void sorguBtn_Click(object sender, EventArgs e) //gonderi sorgulama
        {
            if (sorguTxt.Text == "")
            {
                MessageBox.Show("Lütfen gönderi numaranızı doğru giriniz.", "Bilgilendirme Penceresi", MessageBoxButtons.OK, MessageBoxIcon.Warning);

            }
            else if (sorguTxt.Text != "")
            {
                sorguPnl.Show();
                panel1.Hide();
                baglantı();
                string komut = "select *from kargo where gonderi_no='" + sorguTxt.Text + "'";
                MySqlDataAdapter da = new MySqlDataAdapter(komut, bag);
                DataTable dt = new DataTable();
                da.Fill(dt);
                sorguData.DataSource = dt;
            }
        }

        private void kapatBtn_Click(object sender, EventArgs e)//sorgulamayı kapatma
        {
            sorguPnl.Hide();
            sorguTxt.Text = "";
            panel1.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Form2 f2 = new Form2();
            f2.Show();
        }

        private void Form1_FormClosed(object sender, FormClosedEventArgs e)
        {
            Application.Exit();

        }

    }
}
