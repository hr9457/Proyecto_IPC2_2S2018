using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPageIngresoVerificado : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSalir_Click(object sender, EventArgs e)
    {
    }

    protected void bntCerrar_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Response.Redirect("Incio.aspx");
    }
}
