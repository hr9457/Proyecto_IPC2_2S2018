using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Asignacion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbUsuario.Text = "Usuario: " + Session["identificador"];
    }

    protected void btnRegresar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Usuarios.aspx");
    }

    string codCurso="";
    string canet = "";
    protected void btnAgregar_Click(object sender, EventArgs e)
    {
        codCurso = ListBox1.SelectedItem.ToString();//obtencion del valor del codigo del curso
        canet = "" + Session["identificador"];
        clsCliente recursosUsuario = new clsCliente(0, "", "", "", 0, "", "", 0);//clase de recursos
        if (recursosUsuario.Asignacion(int.Parse(codCurso), int.Parse(canet)))
        {
            lbMensaje.Text = "Asignacion exitosa";
        }
        else
        {
            lbMensaje.Text = "Problemas con la asignacion"+canet;
        }
    }
}