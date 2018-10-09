<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageIngresoVerificado.master" AutoEventWireup="true" CodeFile="Asignacion.aspx.cs" Inherits="Asignacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td>
                <asp:Label ID="lbTitulo" runat="server" Text="Asignacion de Cursos"></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="height: 20px">
                <asp:Label ID="lbCodigoCurso" runat="server" Text="Selecione el codigo del Curso"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="cod_curso" DataValueField="cod_curso" Height="47px" Width="115px"></asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EscuelaSistemasConnectionString %>" SelectCommand="SELECT [cod_curso] FROM [Curso]"></asp:SqlDataSource>
            </td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbUsuario" runat="server" Text=""></asp:Label>
            </td>
            <td>
                <asp:Button ID="btnAgregar" runat="server" Text="AgregarCurso" OnClick="btnAgregar_Click" Height="33px" Width="189px" />
            </td>
            <td>&nbsp;</td>
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
                <asp:Button ID="btnRegresar" runat="server" Text="Regresar" OnClick="btnRegresar_Click" Width="194px" />
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lbMensaje" runat="server" Text=""></asp:Label>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>

