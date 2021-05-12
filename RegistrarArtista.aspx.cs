using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Spotify
{
    public partial class RegistrarArtista : System.Web.UI.Page
    {

        ArrayList generos = new ArrayList();
        ArrayList redes = new ArrayList();
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

        protected void btnRegistrar_Click(object sender, EventArgs e)
        {
            int tamanio = FileUpload1.PostedFile.ContentLength;
            byte[] ImagenOriginal = new byte[tamanio];

            FileUpload1.PostedFile.InputStream.Read(ImagenOriginal, 0, tamanio);
            Bitmap ImagenOriginalBinaria = new Bitmap(FileUpload1.PostedFile.InputStream);
            

            //recorrer checklist

            int contadorGeneros = 0;
            for (int i = 0; i < cbGeneros.Items.Count-1; i++)
            {
                if (cbGeneros.Items[i].Selected)
                {

                    generos.Add(Convert.ToString(cbGeneros.Items[i].Selected));
                    contadorGeneros++;
                }

            }

       
            for (int i = 0; i < cbRedes.Items.Count-1; i++)
            {
                if (cbRedes.Items[i].Selected)
                {
                    redes.Add(Convert.ToString(cbRedes.Items[i].Selected));
                 
                }
            }



            //conusltar el id de pais seleccionado 
            if (txtNombre.Text != ""  && txtDecripcion.Text != "" && ImagenOriginal != null && contadorGeneros >0)
            {
                SqlConnection cone = new SqlConnection(ConfigurationManager.ConnectionStrings["ConexionBD"].ConnectionString);
                cone.Open();
                SqlCommand cmd = new SqlCommand("select * from Pais where  nombre =@nombre", cone);
                cmd.Parameters.AddWithValue("@nombre", Convert.ToString(ddlPais.SelectedItem));
          
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                int idPais = 0 ;
                if (dt.Rows.Count > 0)
                {
                    idPais = Convert.ToInt16(dt.Rows[0]["idPais"]);
                  
                }

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConexionBD"].ConnectionString);
                con.Open();
                SqlCommand cmd2 = new SqlCommand("INSERT INTO Artista(estado,nombreArtista,anoFormacion,descripcion,portada,idPais,idUsuario) VALUES(@estado,@nombreArtista,@anoFormacion,@descripcion,@portada,@idPais,@idUsuario)", con);
                cmd2.Parameters.AddWithValue("@estado", 1);
                cmd2.Parameters.AddWithValue("@nombreArtista", txtNombre.Text);
                cmd2.Parameters.AddWithValue("@anoFormacion", Convert.ToString(ddlAnoFormacion.SelectedItem));
                cmd2.Parameters.AddWithValue("@descripcion", txtDecripcion.Text);
                cmd2.Parameters.AddWithValue("@portada", ImagenOriginal);
                cmd2.Parameters.AddWithValue("@idPais", idPais);
                cmd2.Parameters.AddWithValue("@idUsuario", Session["idUsuarioLogin"]);
                cmd2.ExecuteNonQuery();
                //ver imagen 
                string ImagenUrl = "data:image/png;base64," + Convert.ToBase64String(ImagenOriginal);
                imgArtista.ImageUrl = ImagenUrl;

                //insert tabla genero-artista
                for (int i = 0; i < generos.Count-1; i++)
                {
                    cone = new SqlConnection(ConfigurationManager.ConnectionStrings["ConexionBD"].ConnectionString);
                    cone.Open();
                    cmd = new SqlCommand("select * from Genero where  nombre =@nombre", cone);
                
                    string generoString = (string)generos[i];
                    Debug.WriteLine("genero a insertar " + generoString);
                    cmd.Parameters.AddWithValue("@nombre", generoString);
                    cmd.ExecuteNonQuery();
                    da = new SqlDataAdapter(cmd);
                    dt = new DataTable();
                    da.Fill(dt);
                    int idGeneros = 0;
                    if (dt.Rows.Count > 0)
                    {
                        idGeneros = Convert.ToInt16(dt.Rows[0]["idGenero"]);

                    }

                    cmd2 = new SqlCommand("select idArtista from Artista where idUsuario =@idUsuario", cone);
                    cmd2.Parameters.AddWithValue("idUsuario", Session["idUsuarioLogin"]);
                    

                    cmd2 = new SqlCommand("INSERT INTO Artista_Genero(idArtista,idGenero) VALUES(@idArtista,@idGenero)",cone);
                    cmd2.Parameters.AddWithValue("@idArtista",Session["idUsuarioLogin"]);
                    // cambiar id artista 

               
                    cmd2.Parameters.AddWithValue("@idGenero",idGeneros);
                    cmd2.ExecuteNonQuery();
                }

                //insert  tabla artista redes
                for (int i = 0; i < redes.Count-1; i++)
                {
                    cone = new SqlConnection(ConfigurationManager.ConnectionStrings["ConexionBD"].ConnectionString);
                    cone.Open();
                    cmd = new SqlCommand("select * from RedSocial where  nombre =@nombre", cone);
                  
                    string redString = (string)redes[i];
                    Debug.WriteLine("red a insertar " + redString);
                    cmd.Parameters.AddWithValue("@nombre", redString);
                    cmd.ExecuteNonQuery();
                    da = new SqlDataAdapter(cmd);
                     dt = new DataTable();
                    da.Fill(dt);
                    int redSocial = 0;
                    if (dt.Rows.Count > 0)
                    {
                        redSocial = Convert.ToInt16(dt.Rows[0]["idRedSocial"]);

                    }
                    
                    cmd2 = new SqlCommand("INSERT INTO Artista_Redes(idRedSocial,idArtista) VALUES(@idRedSocial,@idArtista)",cone);
                    cmd2.Parameters.AddWithValue("@idRedSocial",redSocial);
                    cmd2.Parameters.AddWithValue("@idArtista",Session["idUsuarioLogin"]);
                    cmd2.ExecuteNonQuery();
                }


            }
            else
            {

            }
        }

        protected void btnCancelar_Click(object sender, EventArgs e)
        {
            txtDecripcion.Text = "";
            txtNombre.Text = "";
            Response.Redirect("InicioUsuario.aspx");

            
        }
    }
}