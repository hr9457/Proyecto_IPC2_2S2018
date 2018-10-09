using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Operador : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnReservacion_Click(object sender, EventArgs e)
    {
        Response.Redirect("Reservacion.aspx");
    }

    protected void bntRegistro_Click(object sender, EventArgs e)
    {
        Response.Redirect("RegistrarUsuarios.aspx");
    }

    protected void btnModificar_Click1(object sender, EventArgs e)
    {
        Response.Redirect("Modificar.aspx");
    }

    protected void btnEliminar_Click(object sender, EventArgs e)
    {
        Response.Redirect("EliminarUsuarios.aspx");
    }

    protected void btnRecuperar_Click1(object sender, EventArgs e)
    {
        Response.Redirect("RecuperarContraseña.aspx");
    }
}