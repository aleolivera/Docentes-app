using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entidades;
using Negocio;
namespace Vistas
{
    public partial class Modificar_docente : System.Web.UI.Page
    {
        public Docente docente;
        public NegocioDocente negocio = new NegocioDocente();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuario"] == null)
                Response.Redirect("index.aspx");
            else
            {
                try
                {
                    if (Request.QueryString["dni"] != null)
                    {
                        int dni = Int32.Parse(Request.QueryString["dni"]);
                        docente = negocio.readByDni(dni);
                        if (docente == null)
                            Response.Redirect("Docentes.aspx");
                    }

                    if (!Page.IsPostBack)
                    {
                        txtApellido.Text = docente.Apellido;
                        txtCv.Text = docente.Cv;
                        txtDireccion.Text = docente.Direccion;
                        txtDni.Text = docente.Dni.ToString();
                        txtDni.Enabled = false;
                        txtEmail.Text = docente.Email;
                        txtFoto.Text = docente.FotoPerfil;
                        //txtNacimiento.Text = docente.FechaNacimiento.ToString();
                        txtNacimiento.Text = docente.FechaNacimiento.ToString("yyyy-MM-dd");
                        txtNacimiento.Enabled = false;
                        txtNombre.Text = docente.Nombre;
                        txtTelefono.Text = docente.Telefono;
                        ddTipo.SelectedValue = docente.Tipo;
                        ddTipo.Enabled = false;

                    }
                    else
                    {

                    }

                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }
        }
        /*
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
        */
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
    }
}