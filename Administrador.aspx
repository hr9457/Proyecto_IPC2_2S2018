<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageIngresoVerificado.master" AutoEventWireup="true" CodeFile="Administrador.aspx.cs" Inherits="Administrador" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="height: 20px" colspan="6">
                <asp:Label ID="lbTitulo" runat="server" Text="Administracion" Font-Bold="True" Font-Size="XX-Large"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 580px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px; width: 580px">
                <asp:Label ID="lbRegistro" runat="server" Text="Registrar Usuarios" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:Button ID="bntRegistro" runat="server" Text="Registrar" Font-Bold="True" Font-Size="Medium" Width="164px" OnClick="bntRegistro_Click" />
            </td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 580px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 580px">
                <asp:Label ID="lbModificar" runat="server" Text="Modificar USuarios" ont-Bold="True" Font-Size="Medium" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnModificar" runat="server" Text="Modificar" Font-Bold="True" Font-Size="Medium" Width="163px" OnClick="btnModificar_Click1" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 580px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 580px">
                <asp:Label ID="lbEliminar" runat="server" Text="Eliminar Usuarios" ont-Bold="True" Font-Size="Medium" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnEliminar" runat="server" Text="Eliminar" Font-Bold="True" Font-Size="Medium" Width="165px" OnClick="btnEliminar_Click" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 580px">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 580px; height: 38px;">
                <asp:Label ID="lbRecuperar" runat="server" Text="Recuperar Contraseñas" ont-Bold="True" Font-Size="Medium" Font-Bold="True"></asp:Label>
            </td>
            <td style="height: 38px">
                <asp:Button ID="btnRecuperar" runat="server" Text="Recuperar" Font-Bold="True" Font-Size="Medium" Width="167px" OnClick="btnRecuperar_Click1" />
            </td>
            <td style="height: 38px"></td>
            <td style="height: 38px"></td>
            <td style="height: 38px"></td>
            <td style="height: 38px"></td>
        </tr>
        <tr>
            <td style="width: 580px">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 580px">
                <asp:Label ID="lbCargaMasiva" runat="server" Text="Cargar Archivo" ont-Bold="True" Font-Size="Medium" Font-Bold="True"></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnCargaMasiva" runat="server" Text="Cargar Archivo" Font-Bold="True" Font-Size="Medium" Width="169px" OnClick="btnCargaMasiva_Click1" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 580px">
                &nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

