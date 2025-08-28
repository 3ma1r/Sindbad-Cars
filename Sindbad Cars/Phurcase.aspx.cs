using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Sindbad_Cars
{
    public partial class Phurcase : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("insert into Phurcase" + "(Vehicle_ID,Registration_number, Price, Payment_type, Creditcard_number, Cardverification_value,Payment_mode) values(@Vehicle_ID,@Registration_number, @Price, @Payment_type, @Creditcard_number, @Cardverification_value, @Payment_mode)", con);
            cmd.Parameters.AddWithValue("@Vehicle_ID", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Registration_number", TextBox2.Text);
            cmd.Parameters.AddWithValue("@Price", TextBox3.Text);
            cmd.Parameters.AddWithValue("@Payment_type", DropDownList1.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Creditcard_number", TextBox4.Text);
            cmd.Parameters.AddWithValue("@Cardverification_value", TextBox5.Text);
            cmd.Parameters.AddWithValue("@Payment_mode", DropDownList2.SelectedItem.Value);
            cmd.ExecuteNonQuery();

            // Clear form fields
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            

            // Display success message
            ScriptManager.RegisterStartupScript(this, GetType(), "showAlert", "alert('Phurcased successfully');", true);
        }
    }
}


      