using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Modificar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        clsCliente clsCliente = new clsCliente(0,"","","",0,"","",0);
        if (clsCliente.existe(int.Parse(txtBuscador.Text)))
        {
            //llenando txt con los datos obtenidos
            txtCarnet.Text = ""+clsCliente.CarnetUsuario;//carnet
            txtNombre.Text = clsCliente.NombreCompleto;//nombre
            txtFechaNacimiento.Text = clsCliente.FechaNacimiento;//fecha nacimiento
            txtCorreo.Text = clsCliente.CorreoElectronico;//corrreo
            txtTelefono.Text = ""+clsCliente.Telefono;//telefono
            txtContraseña.Text = clsCliente.Contraseña;//contraseña
            txtPalabraClave.Text = clsCliente.PalabraCalve;//palabra clave
            txtBuscador.Text = "";//vaciar la casilla para una proxima busqueda
            lbError.Text = "Registro Encontrado";//mensaje de registro encontrado
        }
        else
        {
            lbError.Text = "Registro No Encontrado";
        }
    } 

    protected void btnModificar_Click(object sender, EventArgs e)
    {
        clsCliente recursosUsuario = new clsCliente(0, "", "", "", 0, "", "", 0);
        //recursosUsuario.UpDate(int.Parse(txtCarnet.Text), txtNombre.Text, txtCorreo.Text, txtFechaNacimiento.Text,
            //int.Parse(txtTelefono.Text), txtContraseña.Text, txtPalabraClave.Text);
        if (recursosUsuario.UpDate(int.Parse(txtCarnet.Text), txtNombre.Text, txtCorreo.Text, txtFechaNacimiento.Text,
            int.Parse(txtTelefono.Text), txtContraseña.Text, txtPalabraClave.Text))
        {
            lbError.Text = "Actualizacion Realizada";
        }
        else
        {
            lbError.Text = "Error en la Actualizacion";
        }
    }

    protected void btnRegresar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Administrador.aspx");
    }
}