<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPagePricipal.master" AutoEventWireup="true" CodeFile="Incio.aspx.cs" Inherits="Incio" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    

    <table style="width: 100%">
        <tr>
            <td style="width: 276px; height: 127px;"></td>
            <td style="height: 127px"></td>
            <td style="height: 127px"></td>
            <td style="height: 127px"></td>
        </tr>
        <tr>
            <td style="width: 276px">&nbsp;</td>
            <td><asp:Label ID="lbUsuario" runat="server" Text="Usuario" Font-Bold="True" Font-Size="Medium"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtUsuario" runat="server"  placeholder="Tu numero de carnet" Font-Size="Medium"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 276px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 276px; height: 29px;"></td>
            <td style="height: 29px">
                <asp:Label ID="lbContrasenia" runat="server" Text="Password" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td style="height: 29px">
                <asp:TextBox ID="txtPasword" runat="server" placeholder="Contraseña" Font-Size="Medium" TextMode="Password"></asp:TextBox>
            </td>
            <td style="height: 29px"></td>
        </tr>
        <tr>
            <td style="height: 20px; width: 276px;"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
            <td style="height: 20px"></td>
        </tr>
        <tr>
            <td style="width: 276px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnIngresar" runat="server" Text="Acceder" Font-Bold="True" Font-Size="Medium" Width="134px" OnClick="btnIngresar_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 276px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="height: 23px; width: 276px;"></td>
            <td style="height: 23px">
                <asp:Label ID="lbRegistrar" runat="server" Text="Registar" Font-Bold="True" Font-Size="Medium"></asp:Label>
            </td>
            <td style="height: 23px">
                <asp:Button ID="btnRegistrar" runat="server" Text="Registrar" Font-Bold="True" Font-Size="Medium" Width="132px" OnClick="btnRegistrar_Click" />
            </td>
            <td style="height: 23px"></td>
        </tr>
        <tr>
            <td style="width: 276px; height: 36px;"></td>
            <td style="height: 36px"></td>
            <td style="height: 36px">
                </td>
            <td style="height: 36px"></td>
        </tr>
        <tr>
            <td style="width: 276px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                <asp:Label ID="lbError" runat="server" Font-Size="Medium" Font-Names="Bahnschrift SemiBold" ForeColor="Red"></asp:Label>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 276px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 276px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 276px">&nbsp;</td>
            <td>&nbsp;</td>
            <td>
                &nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>

    

</asp:Content>

