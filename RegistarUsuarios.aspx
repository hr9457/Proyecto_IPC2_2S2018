<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageIngresoVerificado.master" AutoEventWireup="true" CodeFile="RegistarUsuarios.aspx.cs" Inherits="RegistarUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="height: 67px"></td>
            <td colspan="2" style="height: 67px">
                <asp:Label ID="lbTitulo" class="centrar-form" runat="server" Text="Registro de Usuarios" Font-Bold="True" Font-Size="X-Large"></asp:Label>
            </td>
            <td style="height: 67px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lbRol" runat="server" Text="Rol de Usuario" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td>
                <asp:ListBox ID="ListBox1" runat="server" Height="28px" Width="119px">
                    <asp:ListItem>Operador</asp:ListItem>
                    <asp:ListItem>Usuario</asp:ListItem>
                </asp:ListBox>
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
                <asp:Label ID="lbCarnet" runat="server" Font-Bold="True" Font-Size="Medium" Text="Carnet"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtCarnet"  Font-Bold="True" Font-Size="Medium" runat="server"></asp:TextBox>
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
                <asp:TextBox ID="txtNombre" Font-Bold="True" Font-Size="Medium" runat="server"></asp:TextBox>
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
                <asp:TextBox ID="txtFechaNacimiento" runat="server" Font-Bold="True" Font-Size="Medium" TextMode="Date"></asp:TextBox>
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
                <asp:TextBox ID="txtCorreo" runat="server" Font-Bold="True" Font-Size="Medium" TextMode="Email"></asp:TextBox>
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
                <asp:TextBox ID="txtTelefono" runat="server" Font-Bold="True" Font-Size="Medium" TextMode="Number"></asp:TextBox>
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
                <asp:TextBox ID="txtContraseña" runat="server" Font-Bold="True" Font-Size="Medium" TextMode="Password"></asp:TextBox>
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
                <asp:Label ID="lbContraseña2" runat="server" Font-Bold="True" Font-Size="Medium" Text="Contraseña"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtContraseña2" runat="server" Font-Bold="True" Font-Size="Medium" TextMode="Password"></asp:TextBox>
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
                <asp:Label ID="lbPalabraClave" runat="server" Font-Bold="True" Font-Size="Medium" Text="Palabra Clave"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtPalabraClave"  Font-Bold="True" Font-Size="Medium" runat="server"></asp:TextBox>
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
                <asp:Button ID="btnRegistrar" Font-Bold="True" Font-Size="Medium" runat="server" Text="Registrar" OnClick="btnRegistrar_Click" Width="157px" />
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

