<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OlvidoContrasena.aspx.cs" Inherits="Spotify.OlvidoContrasena" EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta  charset="utf-8"/>
    
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="public1/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="public1/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="public1/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="public1/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="public1/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="public1/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="public1/vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="public1/css/util.css">
	<link rel="stylesheet" type="text/css" href="public1/css/main.css">
<!--===============================================================================================-->
 

    <title>REESTABLECER PASS</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="limiter">
		<div class="container-login100" style="background-image: url('public1/images/img-01.jpg');">
			<div class="wrap-login100 p-t-190 p-b-30">
				<form class="login100-form validate-form">
					<div class="login100-form-avatar">
						<img src="public1/images/usuario.png" alt="AVATAR">
					</div>

					<span class="login100-form-title p-t-20 p-b-45">
						RECUPERAR PASS
					</span>

					<div class="wrap-input100 validate-input m-b-10" data-validate = "Username is required">
                        
						<%--<input class="input100" type="text" name="username" placeholder="Usuario"/>--%>
                        <asp:TextBox ID="txtFecha" runat="server"  class="input100" type="text" name="username" placeholder="Fecha -- 01/02/2018"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-calendar"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input m-b-10" data-validate = "Password is required">
						<%--<input class="input100" type="password" name="pass" placeholder="Pass"/>--%>
                        <asp:TextBox ID="txtCorreo" runat="server" class="input100" type="text" name="pass" placeholder=".com"></asp:TextBox>
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-at"></i>
						</span>
					</div>

					<div class="container-login100-form-btn p-t-10">
						<%--<button class="login100-form-btn">--%>
                            <asp:Button ID="btnRecuperar" runat="server" Text="Recuperar Pass" class="login100-form-btn" OnClick="btnRecuperar_Click" />
							
						<%--</button>--%>
					</div>

					
                    <div class="container-login100-form-btn p-t-10">
					
                           <%--<asp:Button ID="btnOlvido" runat="server" Text="Olvidaste tu Contraseña?" class="btn btn-success btn-transparent" OnClick="btnOlvido_Click" />--%>
                            <asp:Label ID="lblContrasena" runat="server" Text=""  class="label label-primary"></asp:Label>
					</div>
                        
					

                   
					
				</form>
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
    </form>
</body>
</html>
