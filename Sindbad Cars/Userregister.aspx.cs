using System;
using System.Web.UI;

namespace Sindbad_Cars
{
    public partial class Userregister : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Retired page: always send users to the new Auth page
            var target = ResolveUrl("~/Auth.aspx");
            Response.Redirect(target, false);                 // avoid ThreadAbortException
            Context.ApplicationInstance.CompleteRequest();    // end the request pipeline
        }

        // Kept only to satisfy any existing OnClick wiring; not used anymore.
        protected void btnRegister_Click(object sender, EventArgs e)
        {
            var target = ResolveUrl("~/Auth.aspx");
            Response.Redirect(target, false);
            Context.ApplicationInstance.CompleteRequest();
        }
    }
}
