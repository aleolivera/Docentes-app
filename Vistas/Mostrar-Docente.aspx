﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Mostrar-Docente.aspx.cs" Inherits="Vistas.Mostrar_Docente" %>

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
                <div class="divLogo"><img src="img/LogoUtn2.png" alt=""/></div>
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
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col">
                    <h1>Docente</h1>
                </div>
            </div>
             <div class="row"> 
                 <div class="col">
                    <img src="<%=docente.FotoPerfil%>" alt="Foto de perfil" width="200" height="200"/>
                </div>
                <div class="col">
                    <label>Documento: <%=docente.Dni %></label><br />
                    <label>Tipo: <%=docente.Tipo %></label><br />
                    <label>Nombre: <%=docente.Nombre %></label><br />
                    <label>Apellido: <%=docente.Apellido %></label><br />
                    <label>Nacimiento: <%=docente.FechaNacimiento.ToShortDateString() %></label><br />
                </div>
                 <div class="col">
                    <label>Email: <%=docente.Email %></label><br />
                    <label>Telefono: <%=docente.Telefono %></label><br />
                    <label>Direccion: <%=docente.Direccion %></label><br />
                    <label>Fecha de Alta: <%=docente.FechaAlta.ToShortDateString() %></label><br />
                    <label>CV: </label><a href="https://<%=docente.Cv %>"><%=docente.Cv %> </a><br />
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <a href="Docentes.aspx" class="btn btn-primary">Volver</a>
                </div>
            </div>
        </div>
    </form>
    <footer>
        <div class="divContactenos">
            <h3>Consultas Tecnicas</h3>
            <p href="mailto: swop.soporte@gmail.com">swop.soporte@gmail.com</p>
        </div>
    </footer>
</body>
</html>
