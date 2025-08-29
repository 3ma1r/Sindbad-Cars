using System;
using System.Web.UI;

namespace Sindbad_Cars
{
    public partial class Userregister : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // If you didn't add it in Web.config, you can enforce classic validators here:
            // ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return; // respect all validators (incl. terms checked)

            // TODO: Insert the user into your DB and get the new user ID.
            // Example (pseudo):
            // int newId = CreateUser(txtName.Text, txtEmail.Text, txtPhone.Text, txtPassword.Text, txtAddress.Text);

            // For now, a placeholder:
            int newId = 1;

            // Optional: store in Session so the profile can load without the query string too.
            Session["UserId"] = newId;

            // Redirect to the new profile
            Response.Redirect("UserProfile.aspx?uid=" + newId);
        }
    }
}
