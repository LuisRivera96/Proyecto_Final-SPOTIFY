<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioUsuario.aspx.cs" Inherits="Spotify.InicioUsuario"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
      <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

   

    <!-- Favicons
    ================================================== -->
    <link rel="shortcut icon" href="public1/Spectrum/img/spotify.png" type="image/x-icon">


    <!-- Bootstrap -->
    <link rel="stylesheet" type="text/css" href="public1/Spectrum/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="public1/Spectrum/fonts/font-awesome/css/font-awesome.css">

    <!-- Stylesheet
    ================================================== -->
    <link rel="stylesheet" type="text/css" href="public1/Spectrum/css/style.css">
    <link rel="stylesheet" type="text/css" href="public1/Spectrum/css/nivo-lightbox/nivo-lightbox.css">
    <link rel="stylesheet" type="text/css" href="public1/Spectrum/css/nivo-lightbox/default.css">

    <script type="text/javascript" src="public1/Spectrum/js/modernizr.custom.js"></script>
     <script src="public1/Spectrum/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="public1/Spectrum/js/bootstrap.js" type="text/javascript"></script>
    <title>INICIO SPOTIFY</title>
</head>
<body id="page-top" data-spy="scroll" data-target=".navbar-fixed-top">
    <form id="form1" runat="server" method="post">
        <!-- Navigation
    ==========================================-->
        <nav id="menu" class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                   <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"> <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                    <a class="navbar-brand page-scroll" href="#page-top"><i class="fa fa-music"></i>Spotify</a>
                </div>

                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse"  data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav navbar-right">
                        <asp:TextBox ID="txtBusqueda" runat="server" class="input100" type="text" name="username" placeholder="Artistas,Albumes o Canciones" OnTextChanged="txtBusqueda_TextChanged"></asp:TextBox>
                        <span class="focus-input100"></span>
                        <span class="symbol-input100">
                            <i class="fa fa-search"></i>
                        </span>
                        <asp:Button ID="btnInicio" runat="server" Text="Inicio" class="btn btn-info" OnClick="btnInicio_Click" />

                        <asp:Button ID="btnArtista" runat="server" Text="Registrar Artista" class="btn btn-info" OnClick="btnArtista_Click" />

                        <asp:Button ID="btnNuevaLista" runat="server" Text="Nueva Lista" class="btn btn-info" OnClick="btnNuevaLista_Click" />

                        <asp:Button ID="btnListas" runat="server" Text="Mis Listas" class="btn btn-info" OnClick="btnListas_Click" />

                        <asp:Button ID="btnSalir" runat="server" Text="Salir" class="btn btn-info" OnClick="btnSalir_Click" />
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container-fluid -->
        </nav>
        <!-- Header -->
        <header id="header">
            <div class="intro">
                <div class="container">
                    <div class="row">
                        <div class="intro-text">
                            <h1>Spotify</h1>
                            <p>Musica • Independiente • Colaborativa</p>

                        </div>
                    </div>
                </div>
        </header>
        <!-- About Section -->
        <div id="about">
            <div class="container">
                <div class="section-title text-center center">
                    <h2>Explorar</h2>
                    <hr>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-md-6">
                        <asp:Button ID="btnGeneros" runat="server" Text="Generos" Style='width: 200px; height: 50px' class="btn btn-warning" OnClick="btnGeneros_Click" />
                        <p></p>
                        <p></p>
                        <img src="public1/Spectrum/img/Generos.png" class="img-responsive" alt="">
                    </div>
                    <div class="col-xs-12 col-md-6">

                        <asp:Button ID="btnListasPublicas" runat="server" Text="Listas de Reproduccion" Style='width: 200px; height: 50px' class="btn btn-warning" OnClick="btnListasPublicas_Click" />
                        <p></p>
                        <p></p>
                        <img src="public1/Spectrum/img/Listas.png" class="img-responsive" alt="">
                    </div>
                </div>
            </div>
        </div>
        <!-- Portfolio Section -->
        <div id="portfolio">
            <div class="container">
                <div class="section-title text-center center">
                    <h2>Tendencias</h2>
                    <hr>
                </div>
                <div class="row">
                    <div class="col-xs-12 col-md-6">
                        <asp:Button ID="btnArtistasInfluyentes" runat="server" Text="Artistas Mas Influyentes" Style='width: 200px; height: 50px' class="btn btn-warning" OnClick="btnArtistasInfluyentes_Click" />
                        <p></p>
                        <p></p>
                        <img src="public1/Spectrum/img/Artistas.png" class="img-responsive" alt="">
                    </div>
                    <div class="col-xs-12 col-md-6">

                        <asp:Button ID="btnAlbumesPopulares" runat="server" Text="Albumes Populares" Style='width: 200px; height: 50px' class="btn btn-warning" OnClick="btnAlbumesPopulares_Click" />
                        <p></p>
                        <p></p>
                        <img src="public1/Spectrum/img/album.png" class="img-responsive" alt="">
                    </div>
                </div>
            </div>
        </div>

        <div id="footer">
            <div class="container text-center">
                <div class="fnav">
                    <p>Spotify 2018 Premium <a href="#" rel="nofollow">USAC</a></p>
                </div>
            </div>
        </div>
       
        <script type="text/javascript" src="public1/Spectrum/js/bootstrap.js"></script>
        <script type="text/javascript" src="public1/Spectrum/js/SmoothScroll.js"></script>
        <script type="text/javascript" src="public1/Spectrum/js/nivo-lightbox.js"></script>
        <script type="text/javascript" src="public1/Spectrum/js/jquery.isotope.js"></script>
        <script type="text/javascript" src="public1/Spectrum/js/jqBootstrapValidation.js"></script>
        <script type="text/javascript" src="public1/Spectrum/js/contact_me.js"></script>
        <script type="text/javascript" src="public1/Spectrum/js/main.js"></script>


        <!--===============================================================================================-->	
	<script src="public1/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="public1/vendor/bootstrap/js/popper.js"></script>
	<script src="public1/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="public1/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="public1/js/main.js"></script>
    </form>
</body>
</html>
