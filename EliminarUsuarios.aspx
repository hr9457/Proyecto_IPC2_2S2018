<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageIngresoVerificado.master" AutoEventWireup="true" CodeFile="EliminarUsuarios.aspx.cs" Inherits="EliminarUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width: 100%">
        <tr>
            <td style="height: 67px"></td>
            <td colspan="2" style="height: 67px">
                <asp:Label ID="lbTitulo" class="centrar-form" runat="server" Text="Modificar Usuario" Font-Bold="True" Font-Size="X-Large"></asp:Label>
            </td>
            <td style="height: 67px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lbBuscador" runat="server" Text="Buscar Usuario"   Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtBuscador" placeholder="Carnet del Usuario" runat="server" Width="196px"></asp:TextBox>
                <asp:Button ID="btnBuscar" runat="server" Text="Buscar" Font-Bold="True" Font-Size="Medium" OnClick="btnBuscar_Click" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lbCarnet" runat="server" Font-Bold="True" Font-Size="Medium" Text="Carnet"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCarnet"  Font-Bold="True" Font-Size="Medium" runat="server" Enabled="False"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="height: 20px">
                <asp:Label ID="lbNombre" runat="server" Font-Bold="True" Font-Size="Medium" Text="Nombre"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:TextBox ID="txtNombre" Font-Bold="True" Font-Size="Medium" runat="server" Enabled="False" ></asp:TextBox>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lbFechaNacimiento" runat="server" Font-Bold="True" Font-Size="Medium" Text="Fecha Nacimiento"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtFechaNacimiento" runat="server" Font-Bold="True" Font-Size="Medium" Enabled="False" ></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="height: 20px">
                <asp:Label ID="lbCorreo" runat="server" Font-Bold="True" Font-Size="Medium" Text="Correo Electronico"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:TextBox ID="txtCorreo" runat="server" Font-Bold="True" Font-Size="Medium" TextMode="Email" Enabled="False" ></asp:TextBox>
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lbTelefono" runat="server" Font-Bold="True" Font-Size="Medium" Text="Telefono"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtTelefono" runat="server" Font-Bold="True" Font-Size="Medium" TextMode="Number" Enabled="False" ></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lbContraseña" runat="server" Font-Bold="True" Font-Size="Medium" Text="Contraseña"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtContraseña" runat="server" Font-Bold="True" Font-Size="Medium" Enabled="False" ></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lbPalabraClave" runat="server" Font-Bold="True" Font-Size="Medium" Text="Palabra Clave"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPalabraClave"  Font-Bold="True" Font-Size="Medium" runat="server" Enabled="False" ></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="height: 20px">
            </td>
            <td style="height: 20px">
            </td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lbError" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnEliminar" Font-Bold="True" Font-Size="Medium" runat="server" Text="Eliminar Registro" OnClick="btnEliminar_Click" Width="179px" />
                <asp:Button ID="btnRegresar" Font-Bold="True" Font-Size="Medium" runat="server" Text="Regresar" OnClick="btnRegresar_Click" Width="147px" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 57px"></td>
            <td style="height: 57px"></td>
            <td style="height: 57px">
            </td>
            <td style="height: 57px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

</asp:Content>

