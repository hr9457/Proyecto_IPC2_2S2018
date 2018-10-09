using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Usuarios : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbUsuario.Text = "" + Session["identificador"];
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }

    protected void btnAgregar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Asignacion.aspx");
    }
}