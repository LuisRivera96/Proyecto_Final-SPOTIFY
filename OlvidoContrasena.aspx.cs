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
    public partial class OlvidoContrasena : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblContrasena.Text = "";
        }

        protected void btnRecuperar_Click(object sender, EventArgs e)
        {

       
            if (txtFecha.Text != "" && txtCorreo.Text != "")
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConexionBD"].ConnectionString);
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from Usuario where fechaNacimiento =@fechaNacimiento and correo=@correo", con);
                cmd.Parameters.AddWithValue("@fechaNacimiento", txtFecha.Text);
                cmd.Parameters.AddWithValue("@correo", txtCorreo.Text);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                Debug.WriteLine(dt.Rows.Count);
               

                if (dt.Rows.Count > 0)
                {
                    String contrasena = Convert.ToString(dt.Rows[0]["contraseña"]);
                    Debug.WriteLine(contrasena);
                    lblContrasena.Text = "Contraseña: " +contrasena;

                }
                else
                {

                  
                }

            }
            else
            {
                    
            }
        }
    }
}