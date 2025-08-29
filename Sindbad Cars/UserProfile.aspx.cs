using System;
using System.Configuration;
// using System.Data.SqlClient; // uncomment when you wire DB

namespace Sindbad_Cars
{
    public partial class UserProfile : System.Web.UI.Page
    {
        // Keep your existing connection string name
        private const string ConnName =
            @"C:\USERS\3MAIR\ONEDRIVE\DESKTOP\SINDBAD CARS\SINDBAD CARS\SINDBAD CARS\APP_DATA\REGISTER_AND_PURCHASE.MDFConnectionString";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var uid = GetCurrentUserId();
                if (uid == null)
                {
                    // Not logged in / no id yet
                    Response.Redirect("Userregister.aspx");
                    return;
                }

                LoadProfile(uid.Value);
            }
        }

        private int? GetCurrentUserId()
        {
            if (Session["UserId"] is int s) return s;
            if (int.TryParse(Request.QueryString["uid"], out int q)) return q;
            return null;
        }

        private void LoadProfile(int userId)
        {
            // TODO: Load from DB when ready:
            // string cs = ConfigurationManager.ConnectionStrings[ConnName].ConnectionString;
            // using (var con = new SqlConnection(cs))
            // using (var cmd = new SqlCommand("SELECT FullName, Email, Phone, Address, CreatedAt FROM Users WHERE Id=@Id", con)) { ... }

            // Placeholder so the page works now:
            lblName.Text = "Your Name";
            lblEmail.Text = "you@example.com";
            lblPhone.Text = "+968 90000000";
            lblMemberSince.Text = DateTime.Today.ToString("MMM yyyy");

            txtFullName.Text = lblName.Text;
            txtPhoneEdit.Text = lblPhone.Text;
            txtAddressEdit.Text = "Muscat, Oman";

            lblSavedCount.Text = "0";
            lblPurchaseCount.Text = "0";
            lblTestDrives.Text = "0";
        }

        protected void btnSaveProfile_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            // TODO: Update Users set FullName=@n, Phone=@p, Address=@a where Id=@id
            lblName.Text = txtFullName.Text;
            lblPhone.Text = txtPhoneEdit.Text;

            // Optional: show a toast/alert label (you can add one)
        }

        protected void btnChangePassword_Click(object sender, EventArgs e)
        {
            if (!Page.IsValid) return;

            // TODO: verify old password + update to new (hashed) password
            txtOldPassword.Text = txtNewPassword.Text = txtConfirmNewPassword.Text = string.Empty;
        }

        protected void btnSavePrefs_Click(object sender, EventArgs e)
        {
            // TODO: save preferences
        }

        protected void btnDeleteAccount_Click(object sender, EventArgs e)
        {
            // TODO: delete account and related data
            // Response.Redirect("index.aspx");
        }
    }
}
