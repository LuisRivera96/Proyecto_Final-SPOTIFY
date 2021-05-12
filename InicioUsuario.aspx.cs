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
    public partial class InicioUsuario : System.Web.UI.Page
    {
        public void Page_Load(object sender, EventArgs e)
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

        public void btnGeneros_Click(object sender, EventArgs e)
        {
            Debug.WriteLine("ENTRO A METODO genero");
        }
      

        public void btnListasPublicas_Click(object sender, EventArgs e)
        {

        }
            //3ra fase
        public void btnArtistasInfluyentes_Click(object sender, EventArgs e)
        {

        }
        //3ra fase
        public void btnAlbumesPopulares_Click(object sender, EventArgs e)
        {

        }

        public void btnArtista_Click(object sender, EventArgs e)
        {
            Debug.WriteLine("ENTRO A METODO Artista");

            Response.Redirect("RegistrarArtista.aspx");
        }

        public void btnNuevaLista_Click(object sender, EventArgs e)
        {

        }

        public void btnListas_Click(object sender, EventArgs e)
        {

        }

        public void btnSalir_Click(object sender, EventArgs e)
        {
            Debug.WriteLine("ENTRO A METODO Salir");
            Response.Redirect("Usuario.aspx");
        }

     

        public void txtBusqueda_TextChanged(object sender, EventArgs e)
        {

        }

        public void btnInicio_Click(object sender, EventArgs e)
        {
            Debug.WriteLine("ENTRO A METODO Inicio");
            Response.Redirect("InicioUsuario.aspx");
        }
    }
}