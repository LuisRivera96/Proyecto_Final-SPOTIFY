using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Spotify
{
    public partial class Usuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtUsuario.Text != "" && txtContrasena.Text != "")
            {
              
         


                if (txtUsuario.Text.Equals("Admin") && txtContrasena.Text.Equals("Admin"))
                {

                    Response.Redirect("InicioAdmin.aspx");
                  
                }
                else
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConexionBD"].ConnectionString);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select * from Usuario where usuario =@usuario and contraseña=@pass", con);
                    cmd.Parameters.AddWithValue("@usuario", txtUsuario.Text);
                    cmd.Parameters.AddWithValue("@pass", txtContrasena.Text);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                        String idSesion = Convert.ToString(dt.Rows[0]["idUsuario"]);
                        Session["idUsuarioLogin"] = idSesion;
                        Session["usuarioLogin"] = Convert.ToString(dt.Rows[0]["usuario"]);
                        Response.Redirect("InicioUsuario.aspx");
                    }
                    else
                    {

                        Response.Redirect("Usuario.aspx");
                    }
            }
            }

            else
            {
            }
        }

      

        protected void btnNueva_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegistroUsuario.aspx");
        }

        protected void btnOlvido_Click(object sender, EventArgs e)
        {
            Response.Redirect("OlvidoContrasena.aspx");
        }
    }
}