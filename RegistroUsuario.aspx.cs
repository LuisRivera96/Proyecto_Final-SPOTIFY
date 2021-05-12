using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Spotify
{
    public partial class RegistroUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if ((txtNombre.Text != "") && (txtApellido.Text != "") && (txtFecha.Text != "") && (txtCorreo.Text != "") &&
              (txtUsuario.Text != "") && (txtContrasena.Text != "") && (txtContrasena2.Text != "")  )
            {
                if (txtContrasena.Text.Equals(txtContrasena2.Text) )
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConexionBD"].ConnectionString);
                    con.Open();
                    SqlCommand cmd = new SqlCommand("select * from Usuario where usuario =@usuario ", con);
                    cmd.Parameters.AddWithValue("@usuario", txtUsuario.Text);
                 //  cmd.Parameters.AddWithValue("@pass", txtContrasena.Text);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    if (dt.Rows.Count > 0)
                    {
                       
                    }
                    else
                    {

                        cmd = new SqlCommand("INSERT INTO Usuario(tipoUsuario,estado,fechaNacimiento,nombre,usuario,contraseña,correo) VALUES(@tipoUsuario,@estado,@fechaNacimiento,@nombre,@usuario,@contraseña,@correo)", con);
                        cmd.Parameters.AddWithValue("@tipoUsuario", 0);
                        cmd.Parameters.AddWithValue("@estado",1);
                        cmd.Parameters.AddWithValue("@fechaNacimiento", txtFecha.Text);
                        cmd.Parameters.AddWithValue("@nombre", txtNombre.Text);
                        cmd.Parameters.AddWithValue("@usuario", txtUsuario.Text);
                        cmd.Parameters.AddWithValue("@contraseña", txtContrasena.Text);
                        cmd.Parameters.AddWithValue("@correo", txtCorreo.Text);

                        cmd.ExecuteNonQuery();

                        txtNombre.Text = "";
                        txtApellido.Text = "";
                        txtFecha.Text = "";
                        txtCorreo.Text = "";
                        txtUsuario.Text = "";
                        txtContrasena.Text = "";
                        txtContrasena2.Text = "";

                    }
                }
            }
        }
    }
}