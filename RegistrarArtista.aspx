<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarArtista.aspx.cs" Inherits="Spotify.RegistrarArtista" EnableEventValidation="false" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registrar Artista</title>
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

	<meta name="viewport" content="width=device-width, initial-scale=1"/>
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="public1/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="public1/vendor/bootstrap/css/bootstrap.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="public1/fonts/font-awesome-4.7.0/css/font-awesome.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="public1/fonts/Linearicons-Free-v1.0.0/icon-font.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="public1/vendor/animate/animate.css"/>
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="public1/vendor/css-hamburgers/hamburgers.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="public1/vendor/select2/select2.min.css"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="public1/css/util.css"/>
	<link rel="stylesheet" type="text/css" href="public1/css/main.css"/>
<!--===============================================================================================-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="limiter">
		<div class="container-login100" style="background-image: url('public1/images/img-01.jpg');">
			<div class="wrap-login100 p-t-190 p-b-30">
				</div>
					<div class="login100-form-avatar">
						<img src="public1/images/usuarionuevo.png" alt="AVATAR">
					</div>

					<span class="login100-form-title p-t-20 p-b-45">
						REGISTRAR ARTISTA
					</span>

					<div class="wrap-input100 validate-input m-b-10" data-validate = "Username is required">

                        <asp:TextBox ID="txtNombre" runat="server" class="input100" type="text" name="username" placeholder="Nombre_Artista"></asp:TextBox>
                      
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-user"></i>
						</span>
					</div>

                    <div class="wrap-input100 validate-input m-b-10" data-validate = "Username is required">
                          <asp:Label ID="lblAno" runat="server" Text="Año de Formacion"></asp:Label>
                        <asp:DropDownList ID="ddlAnoFormacion" runat="server" placeholder="Año de Formacion">
                            
                            <asp:ListItem>1985</asp:ListItem>
                            <asp:ListItem>1986</asp:ListItem>
                            <asp:ListItem>1987</asp:ListItem>
                            <asp:ListItem>1988</asp:ListItem>
                            <asp:ListItem>1989</asp:ListItem>
                            <asp:ListItem>1990</asp:ListItem>
                            <asp:ListItem>1991</asp:ListItem>
                            <asp:ListItem>1992</asp:ListItem>
                            <asp:ListItem>1993</asp:ListItem>
                            <asp:ListItem>1994</asp:ListItem>
                            <asp:ListItem>1995</asp:ListItem>
                            <asp:ListItem>1996</asp:ListItem>
                            <asp:ListItem>1997</asp:ListItem>
                            <asp:ListItem>1998</asp:ListItem>
                            <asp:ListItem>1999</asp:ListItem>
                            <asp:ListItem>2000</asp:ListItem>
                            <asp:ListItem>2001</asp:ListItem>
                            <asp:ListItem>2002</asp:ListItem>
                            <asp:ListItem>2003</asp:ListItem>
                            <asp:ListItem>2004</asp:ListItem>
                            <asp:ListItem>2005</asp:ListItem>
                            <asp:ListItem>2006</asp:ListItem>
                            <asp:ListItem>2007</asp:ListItem>
                            <asp:ListItem>2008</asp:ListItem>
                            <asp:ListItem>2009</asp:ListItem>
                            <asp:ListItem>2010</asp:ListItem>
                            <asp:ListItem>2011</asp:ListItem>
                            <asp:ListItem>2012</asp:ListItem>
                            <asp:ListItem>2013</asp:ListItem>
                            <asp:ListItem>2014</asp:ListItem>
                            <asp:ListItem>2015</asp:ListItem>
                            <asp:ListItem>2016</asp:ListItem>
                            <asp:ListItem>2017</asp:ListItem>
                        </asp:DropDownList>
						<span class="focus-input100"></span>
						
					</div>


                    <div class="wrap-input100 validate-input m-b-10" data-validate = "Username is required">

                        <asp:Label ID="lblPais" runat="server" Text="Nacionalidad Artista"></asp:Label>
                        <asp:DropDownList ID="ddlPais" runat="server" DataSourceID="SqlDataSource1" DataTextField="nombre" DataValueField="nombre"></asp:DropDownList>
						<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:proyectobd2ConnectionString %>" SelectCommand="SELECT [nombre] FROM [Pais]"></asp:SqlDataSource>
						<span class="focus-input100"></span>
					
					</div>

                    <div class="wrap-input100 validate-input m-b-10" data-validate = "Username is required">

                        <asp:TextBox ID="txtDecripcion" runat="server" class="input100" type="text" name="username" placeholder="Descripcion Atista"></asp:TextBox>
                      
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-audio-description"></i>
						</span>
					</div>

                    <div class="wrap-input100 validate-input m-b-10" data-validate = "Username is required">

                         <asp:Label ID="lblGeneros" runat="server" Text="Generos Musicales"></asp:Label>
                        
                        <asp:CheckBoxList ID="cbGeneros" runat="server" DataSourceID="SqlDataSource2" DataTextField="nombre" DataValueField="nombre"></asp:CheckBoxList>
						<asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:proyectobd2ConnectionString %>" SelectCommand="SELECT [nombre] FROM [Genero]"></asp:SqlDataSource>
						<span class="focus-input100"></span>
						
					</div>


                   


					<div class="wrap-input100 validate-input m-b-10" data-validate = "Password is required">

                        <div class="container">
                            <div class="row" >
                                <div class="col-md-4 col-md-offset-4">
                                    Portada Artista:
                                    <br />
                                    <asp:Image ID="imgArtista" ImageUrl="public1/images/iconos/soprano.png" runat="server" />
                                     <br />
                                     <br />
                                    Subir Portada:
                                    <asp:FileUpload ID="FileUpload1"  accept=".png" runat="server"  CssClass="form-control"/>
                                   <br />
                                   
                                </div>
                            </div>
                        </div>
						
                        
				
						
					</div>

                    <div class="wrap-input100 validate-input m-b-10" data-validate = "Password is required">
						
                          <asp:Label ID="lblRedes" runat="server" Text="Redes Sociales"></asp:Label>
                        <asp:CheckBoxList ID="cbRedes" runat="server" DataSourceID="SqlDataSource3" DataTextField="nombre" DataValueField="nombre"></asp:CheckBoxList>
						<asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:proyectobd2ConnectionString %>" SelectCommand="SELECT [nombre] FROM [RedSocial]"></asp:SqlDataSource>
						<span class="focus-input100"></span>

					</div>

					<div class="container-login100-form-btn p-t-10">
						 <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" class="login100-form-btn" OnClick="btnRegistrar_Click"  />
					</div>

                         <div class="container-login100-form-btn p-t-10">
						 <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" class="login100-form-btn" OnClick="btnCancelar_Click" />
					</div>
				
			
			</div>
		</div>
	
	
	

	
<!--===============================================================================================-->	
	<script src="public1/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="public1/vendor/bootstrap/js/popper.js"></script>
	<script src="public1/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="public1/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="public1/js/main.js"></script>
  </div>
    </form>
</body>
</html>
