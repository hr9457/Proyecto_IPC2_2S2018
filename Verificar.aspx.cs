using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Verificar : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["usuario"].Equals("0"))
        {
            Response.Redirect("Administrador.aspx");
        }
        else if (Session["usuario"].Equals("1"))
        {
            Response.Redirect("Operador.aspx");
        }
        else if(Session["usuario"].Equals("2"))
        {
            Response.Redirect("Usuarios.aspx");
        }
        else
        {
            Response.Redirect("Incio.aspx");
        }
    }
}