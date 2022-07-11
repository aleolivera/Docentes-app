<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ingresar-Docente.aspx.cs" Inherits="Vistas.Ingresar_Docente" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="css/main.css"/>
    <link rel="stylesheet" href="css/edit.css"/>
    <script src="https://kit.fontawesome.com/17174b092b.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Roboto+Condensed:wght@300&display=swap" rel="stylesheet"/>
    <title>Portal de Profesores</title>
</head>
<body style="background: rgb(151, 205, 226);background: linear-gradient(0deg, rgb(215, 229, 235) 0%, rgb(151, 205, 226) 100%);">
     <header class="header">
        <div class="divHeaderSup">
            <div class="divHeaderIzq">
                <div class="divLogo"><img src="img/LogoUtn2.png" alt=""></div>
            </div>
            <div class="divText">
                <h1>UTN|FRGP</h1>
                <p>Universidad Tecnologica Nacional</p>
                <p>Facultad Regional General Pacheco</p>
            </div>
            <div class="divHeaderDer">
                <img src="img/LogoUtn.png" alt="">
                <a href="inicio.aspx?logout=1">LOG OUT <i class="fas fa-sign-out-alt"></i></a>
            </div>
        </div>
    </header>
    <div class="container">
        <div class="row">
            <div class="col">
               
                 <h1>Ingreso de Docente</h1>
                
            </div>
        </div>
        <div class="row">
            <form id="frmIngreso" runat="server">
                <div class="col">
                    <div>
                        <label>Documento:</label>
                        <label><asp:TextBox ID="txtDni" runat="server"></asp:TextBox></label>
                    </div>
                    <div>
                        <label>Tipo de Documento:</label>
                        <label><asp:DropDownList ID="ddTipo" runat="server">
                            <asp:ListItem Selected Value="dni">DNI</asp:ListItem>
                            <asp:ListItem Value="pasaporte">Pasaporte</asp:ListItem>
                        </asp:DropDownList></label>
                    </div>
                    <div>
                        <label>Nombre:</label>
                        <label><asp:TextBox ID="txtNombre" runat="server"></asp:TextBox></label>
                    </div>
                    <div>
                        <label>Apellido:</label>
                        <label><asp:TextBox ID="txtApellido" runat="server"></asp:TextBox></label>
                    </div>
                    <div>
                        <label>Email:</label>
                        <label><asp:TextBox ID="txtEmail" runat="server"></asp:TextBox></label>
                    </div>
                </div>
                <div class="col">
                    <div>
                        <label>Direccion:</label>
                        <label><asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox></label>
                    </div>        
                    <div>
                        <label>Telefono:</label>
                        <label><asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox></label>
                    </div>
                    <div>
                        <label>CV url:</label>
                        <label><asp:TextBox ID="txtCv" runat="server"></asp:TextBox></label>
                    </div>
                    <div>
                        <label>Foto url:</label>
                        <label><asp:TextBox ID="txtFoto" runat="server"></asp:TextBox></label>
                    </div>
                    <div>
                        <label>Fecha Nacimiento:</label>
                        <label><asp:TextBox ID="txtNacimiento" TextMode="Date" runat="server"></asp:TextBox></label>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        
                                <label><asp:Button ID="btnGuardar" class="btn btn-primary" OnClick="btnGuardar_Click" Text="Guardar" runat="server"/></label>
                        
                    </div>
                    <div class="col">
                        <label><a href="Docentes.aspx" class="btn btn-danger">Volver</a></label>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <footer>
        <div class="divContactenos">
            <h3>Consultas Tecnicas</h3>
            <p href="mailto: swop.soporte@gmail.com">swop.soporte@gmail.com</p>
        </div>
    </footer>
</body>
</html>
