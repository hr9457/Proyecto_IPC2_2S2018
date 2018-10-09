using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class RegistarUsuarios : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnRegistrar_Click(object sender, EventArgs e)
    {
        if (txtContraseña.Text != txtContraseña2.Text)
        {
            lbError.Text = "Contraseñas no conciden";
        }
        else if (ListBox1.Equals("") || txtCarnet.Equals("") || txtNombre.Equals("") || txtFechaNacimiento.Equals("")
            || txtCorreo.Equals("") || txtTelefono.Equals("") || txtPalabraClave.Equals(""))
        {
            lbError.Text = "Faltan datos  en el formulario";
        }
        else
        {
            //seleccion de item para registro tipo usuario
            String itemTxt = ListBox1.SelectedItem.ToString();
            int tipUsuario;
            if (itemTxt.Equals("Operador"))
            {
                tipUsuario = 1;
            }
            else
            {
                tipUsuario = 2;
            }
            ////registro de usuario
            try
            {
                clsCliente usuario = new clsCliente(0, "", "", "", 0, "", "", 0);
                usuario.CarnetUsuario = int.Parse(txtCarnet.Text);
                usuario.NombreCompleto = txtNombre.Text;
                usuario.CorreoElectronico = txtCorreo.Text;
                usuario.FechaNacimiento = txtFechaNacimiento.Text;
                usuario.Telefono = int.Parse(txtTelefono.Text);
                usuario.Contraseña = txtContraseña.Text;
                usuario.PalabraCalve = txtPalabraClave.Text;
                usuario.Cod = tipUsuario;
                usuario.addUsuario();
                lbError.Text = "Regitro realizado";
            }
            catch
            {
                lbError.Text = "Error en el registro ";
            }
        }
    }//fin del metodo

    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btnRegresar_Click(object sender, EventArgs e)
    {
        Response.Redirect("Administrador.aspx");
    }
}