using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;
using Npgsql;

namespace Vistas
{
    public partial class Ingresar_Docente : System.Web.UI.Page
    {
        public Docente docente;
        public NegocioDocente negocio = new NegocioDocente();
        public string mensaje;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
                Response.Redirect("index.aspx");
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            try
            {
                int Dni = Convert.ToInt32(txtDni.Text);
                negocio.create(Dni, ddTipo.SelectedValue, txtNombre.Text, txtApellido.Text, txtEmail.Text, txtTelefono.Text, txtDireccion.Text, txtNacimiento.Text, txtFoto.Text, txtCv.Text);
                Response.Redirect("Docentes.aspx");
            }
            catch (Exception ex)
            {
                throw ex; 
            }
           
        }
        /*
         protected void btnModificar_Click(object sender, EventArgs e)
        {
            try
            {
                int Dni = Convert.ToInt32(txtDni.Text);
                docente.Dni = Dni;
                docente.Apellido = txtApellido.Text;
                docente.Cv = txtCv.Text;
                docente.Direccion = txtDireccion.Text;
                docente.Nombre = txtNombre.Text;
                docente.Email = txtEmail.Text;
                docente.Telefono = txtTelefono.Text;
                docente.FechaNacimiento = DateTime.Parse(txtNacimiento.Text);
                docente.FotoPerfil = txtFoto.Text;
                docente.Tipo = ddTipo.SelectedValue;
                negocio.update(docente);
                Response.Redirect("Docentes.aspx");
            }
            catch (Exception ex)
            {
                throw ex;
            }

        }
        */
    }
}