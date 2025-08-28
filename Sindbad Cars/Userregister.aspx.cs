using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Sindbad_Cars
{
    public partial class Userregister : System.Web.UI.Page
    {
        SqlCommand cmd = new SqlCommand();
        SqlConnection con = new SqlConnection();
       
        protected void Page_Load(object sender, EventArgs e)
        {
            con.ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\REGISTER_AND_PURCHASE.MDF;Integrated Security=True";
            con.Open();
         }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("insert into Client" + "(Client_ID,Client_Forename, Client_Surname, Client_Address_Line1, Client_Address_Line2, Town, Postcode, Email_Address, Phone_No, Mobile_No)values(@Client_ID,@Client_Forename, @Client_Surname, @Client_Address_Line1, @Client_Address_Line2, @Town, @Postcode, @Email_Address, @Phone_No, @Mobile_No)", con);
            cmd.Parameters.AddWithValue("@Client_ID", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Client_Forename", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Client_Surname", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Client_Address_Line1", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Client_Address_Line2", TextBox6.Text);
            cmd.Parameters.AddWithValue("@Town", TextBox7.Text);
            cmd.Parameters.AddWithValue("@Postcode", TextBox8.Text);
            cmd.Parameters.AddWithValue("@Email_Address", TextBox9.Text);
            cmd.Parameters.AddWithValue("@Phone_No", TextBox10.Text);
            cmd.Parameters.AddWithValue("@Mobile_No", TextBox11.Text);
            cmd.ExecuteNonQuery();

            // Clear form fields
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            TextBox8.Text = "";
            TextBox9.Text = "";
            TextBox10.Text = "";
            TextBox11.Text = "";

            // Display success message
            ScriptManager.RegisterStartupScript(this, GetType(), "showAlert", "alert('Registered successfully');", true);
        }
    }
}
        