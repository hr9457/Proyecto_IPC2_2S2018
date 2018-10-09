using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


public partial class RecuperarContraseña : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    string contraseniaRecuperada = "";
    protected void btnBuscar_Click(object sender, EventArgs e)
    {
        clsCliente clsCliente = new clsCliente(0, "", "", "", 0, "", "", 0);
        if (clsCliente.existe(int.Parse(txtBuscador.Text)))
        {
            //llenando txt con los datos obtenidos
            txtCarnet.Text = "" + clsCliente.CarnetUsuario;//carnet
            txtNombre.Text = clsCliente.NombreCompleto;//nombre
            txtCorreo.Text = clsCliente.CorreoElectronico;//corrreo
            contraseniaRecuperada = clsCliente.Contraseña;//variable para guardar la contrasenia recuperada del usuario
            txtBuscador.Text = "";//vaciar la casilla para una proxima busqueda
            lbError.Text = "Registro Encontrado";//mensaje de registro encontrado
        }
        else
        {
            lbError.Text = "Registro No Encontrado";
        }
    }

    protected void btnRegresar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Administrador.aspx");
    }

    protected void btnEnviar_Click(object sender, EventArgs e)
    {
        enviarCorreo();
    }

    public void enviarCorreo()
    {
        string from = "hr9457@gmail.com";
        string pass = "94Soraz57";
        string correoElectronico = txtCorreo.Text;
        string mensaje = "RECUPERACION DE PASSWORD \nNombre: "+txtNombre.Text+"\nCarnet: "+txtCarnet.Text+"\nPassword: "+contraseniaRecuperada;
        new Email().enviarCorreo(from,pass,correoElectronico,mensaje);
        lbError.Text = "Correo Enviado";
        txtCarnet.Text = "";//carnet
        txtNombre.Text = "";//nombre
        txtCorreo.Text = "";//corrreo
        contraseniaRecuperada = "";//variable para guardar la contrasenia recuperada del usuario
        txtBuscador.Text = "";//vaciar la casilla para una proxima busqueda
    }

}