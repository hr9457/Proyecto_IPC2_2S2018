<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageIngresoVerificado.master" AutoEventWireup="true" CodeFile="Reservacion.aspx.cs" Inherits="Reservacion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width: 100%">
        <tr>
            <td style="height: 67px"></td>
            <td colspan="2" style="height: 67px">
                <asp:Label ID="lbTitulo" class="centrar-form" runat="server" Text="Reservacion" Font-Bold="True" Font-Size="X-Large"></asp:Label>
            </td>
            <td style="height: 67px"></td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
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
                <asp:Label ID="lbInicio" runat="server" Font-Bold="True" Font-Size="Medium" Text="Hora De Incio"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:TextBox ID="txtNombre" Font-Bold="True" Font-Size="Medium" runat="server" TextMode="Date"></asp:TextBox>
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
                <asp:Label ID="lbFin" runat="server" Font-Bold="True" Font-Size="Medium" Text="Hora De Fin"></asp:Label>
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
                <asp:Label ID="lbTipo" runat="server" Font-Bold="True" Font-Size="Medium" Text="Tipo Reservacion"></asp:Label>
            </td>
            <td style="height: 20px">
                <asp:ListBox ID="ListBox1" runat="server" DataSourceID="SqlDataSource1" DataTextField="tipoDeReservacion" DataValueField="tipoDeReservacion"></asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EscuelaSistemasConnectionString %>" SelectCommand="SELECT [tipoDeReservacion] FROM [TipoReservacion]"></asp:SqlDataSource>
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
                <asp:Label ID="lbEstado" runat="server" Font-Bold="True" Font-Size="Medium" Text="Estado Reservacion"></asp:Label>
            </td>
            <td>
                <asp:ListBox ID="ListBox2" runat="server" DataSourceID="SqlDataSource2" DataTextField="estadoDeReservacion" DataValueField="estadoDeReservacion"></asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:EscuelaSistemasConnectionString %>" SelectCommand="SELECT [estadoDeReservacion] FROM [EstadoReservacion]"></asp:SqlDataSource>
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
                <asp:Label ID="lbImparticion" runat="server" Font-Bold="True" Font-Size="Medium" Text="Tipo Imparticion"></asp:Label>
            </td>
            <td>
                <asp:ListBox ID="ListBox3" runat="server" DataSourceID="SqlDataSource3" DataTextField="tipoImparticion" DataValueField="tipoImparticion"></asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:EscuelaSistemasConnectionString %>" SelectCommand="SELECT [tipoImparticion] FROM [Imparticion]"></asp:SqlDataSource>
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
                <asp:Label ID="lbCSalon" runat="server" Font-Bold="True" Font-Size="Medium" Text="Salon"></asp:Label>
            </td>
            <td>
                <asp:ListBox ID="ListBox4" runat="server" DataSourceID="SqlDataSource4" DataTextField="cod_Salon" DataValueField="cod_Salon"></asp:ListBox>
                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:EscuelaSistemasConnectionString %>" SelectCommand="SELECT [cod_Salon] FROM [Salon]"></asp:SqlDataSource>
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

