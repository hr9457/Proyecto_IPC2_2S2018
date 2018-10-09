using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Administrador : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void bntRegistro_Click(object sender, EventArgs e)
    {
        Response.Redirect("RegistarUsuarios.aspx");
    }

    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        Response.Redirect("EliminarUsuarios.aspx");
    }

    protected void btnRecuperar_Click(object sender, EventArgs e)
    {
        Response.Redirect("RecuperarContraseña.aspx");
    }

    protected void btnCargaMasiva_Click(object sender, EventArgs e)
    {
        //Response.Redirect("CargaArchivo.aspx");
    }
    
    protected void btnModificar_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Modificar.aspx");
    }


    protected void btnRecuperar_Click1(object sender, EventArgs e)
    {
        Response.Redirect("RecuperarContraseña.aspx");
    }

    protected void btnCargaMasiva_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Carga.aspx");
    }
}