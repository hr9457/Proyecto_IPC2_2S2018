using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Incio : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    String CarnetPass;
    String identificador;
    protected void btnIngresar_Click(object sender, EventArgs e)
    {
        try
        {
            DataSetTableAdapters.UsuarioTableAdapter obj = new DataSetTableAdapters.UsuarioTableAdapter();
            int carnet = int.Parse(txtUsuario.Text);
            CarnetPass = "" + obj.login(carnet, txtPasword.Text);
            identificador = ""+ obj.carnet(carnet, txtPasword.Text) ;
            //CarnetPass = Convert.ToString(obj.loginDistingible (txtUsuario.Text, txtPasword.Text));
            lbError.Text = "" + CarnetPass;
            if (CarnetPass != null)
            {
                Session["usuario"] = CarnetPass;
                Session["identificador"] = identificador;
                //consulta de datos
                Response.Redirect("verificar.aspx");
            }
            else if (txtUsuario.Text == "" || txtPasword.Text == "")
            {
                lbError.Text = "Debe llenar todos los campo para acceder";
            }
            else if (txtUsuario.Text == "" && txtPasword.Text == "")
            {
                lbError.Text = "Debe llenar todos los campo para acceder";
            }
            else
            {
                lbError.Text = "Error usuario y contraseña incorrectas";
            }
        }
        catch
        {
            lbError.Text = "Error usuario y contraseña incorrectas";
        }
    }

    protected void btnRegistrar_Click(object sender, EventArgs e)
    {
        Response.Redirect("RegistarUsuarios.aspx");
    }
}