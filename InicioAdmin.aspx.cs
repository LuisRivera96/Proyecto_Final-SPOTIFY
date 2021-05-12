using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Spotify
{
    public partial class InicioAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["idUsuarioLogin"] != null)
            {
                // si hay sesion y podes hacer lo que queras
            }
            else
            {
                Response.Redirect("Usuario.aspx");
            }
        }
    }
}