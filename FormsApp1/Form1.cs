using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace FormsApp1
{
    public partial class Form1 : Form
    {
        MySqlConnection con = new MySqlConnection("host=localhost;user=test;password=123456;database=testdatabase");
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM pdtable";
            MySqlCommand cmd = new MySqlCommand(sql, con);
            con.Open();

           // MySqlDataReader reader = cmd.ExecuteReader();
           /* while (reader.Read())
            {
               // MessageBox.Show(reader.GetString("id") + " " + reader.GetString("name"));
                //textBox3.Text = reader.GetString("id") + " " + reader.GetString("name");
               // textBox3.Text = "\n"+textBox3.Text;
                textBox3.AppendText(reader.GetString("id") + " " + reader.GetString("name")+"\r\n");
                
            }*/

            DataSet ds = new DataSet();
            MySqlDataAdapter da = new MySqlDataAdapter(cmd);
            da.Fill(ds);
            dataGridView1.DataSource =ds.Tables[0].DefaultView;
            con.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string id = textBox1.Text;
            string name = textBox2.Text;
            string details = textBox9.Text;
            string price = textBox8.Text;
            string sql = "INSERT INTO pdtable (pid, pname, pdetails, pprice) values('" + id+"','"+name+ "','"+details+ "','"+price+"')";
            
            MySqlCommand cmd = new MySqlCommand(sql, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            MessageBox.Show("INSERT Success");
            textBox1.Text = "";
            textBox2.Text = "";
            textBox9.Text ="";
            textBox8.Text = "";
        }

        private void button3_Click(object sender, EventArgs e)
        {
            string id = textBox6.Text;
            string name = textBox5.Text;
            string details = textBox7.Text;
            string price = textBox3.Text;
            string sql = "UPDATE pdtable SET pname = '"+name+ "',pdetails = '" + details+ "',pprice = '" + price+"' WHERE pid='" + id + "'";

            MySqlCommand cmd = new MySqlCommand(sql, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            MessageBox.Show("UPDATE Success");
            textBox6.Text = "";
            textBox5.Text = "";
            textBox7.Text = "";
            textBox3.Text = "";
        }

        private void button4_Click(object sender, EventArgs e)
        {
            string id = textBox4.Text;
            string sql = "DELETE FROM pdtable WHERE pid='"+id+"'";

            MySqlCommand cmd = new MySqlCommand(sql, con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();

            MessageBox.Show("DELETE Success");
            textBox4.Text = "";
        }
    }
}
