<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SeleccionarSucursales.aspx.cs" Inherits="TP7_GRUPO_12.SeleccionarSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 23px;
            width: 114px;
        }
        .auto-style9 {
            width: 207px;
        }
        .auto-style10 {
            width: 40px;
        }
        .auto-style11 {
            height: 23px;
            width: 207px;
        }
        .auto-style12 {
            height: 23px;
            width: 40px;
        }
        .auto-style13 {
            width: 218px;
        }
        .auto-style14 {
            height: 23px;
            }
        .auto-style15 {
            width: 114px;
        }
        .auto-style16 {
            width: 307px;
        }
        .auto-style17 {
            height: 23px;
            width: 307px;
        }
        .auto-style19 {
            height: 23px;
            width: 216px;
        }
        .auto-style20 {
            height: 23px;
            width: 224px;
        }
        .auto-style21 {
            height: 23px;
            width: 68px;
        }
        .auto-style22 {
            height: 23px;
            width: 218px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style16" colspan="3">
                        <asp:HyperLink ID="hlListadoSucursales" runat="server" Font-Overline="False" Font-Underline="True" ForeColor="Blue">Listado de Sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style13">
                        <asp:HyperLink ID="hlMostrarSucursalesS" runat="server" Font-Underline="True" ForeColor="Blue">Mostrar Sucursales Seleccionadas</asp:HyperLink>
                    </td>
                    <td class="auto-style9">
                        &nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style16" colspan="3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style17" colspan="3">
                        <h1>Listado de Sucursales</h1>
                    </td>
                    <td class="auto-style22"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style16" colspan="3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style19">Búsqueda por nombre de sucursal:</td>
                    <td class="auto-style20">
                        <asp:TextBox ID="txtBusquedaSucursal" runat="server" style="margin-left: 64px" Width="250px"></asp:TextBox>
                        </td>
                    <td class="auto-style21">
                        <asp:Button ID="btnBuscar" runat="server" Height="22px" style="margin-left: 20px" Text="Buscar" />
                    </td>
                    <td class="auto-style14" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style17" colspan="3"></td>
                    <td class="auto-style22"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style16" colspan="3" rowspan="2">
                        <asp:ListView ID="ListViewSucursales" runat="server" DataSourceID="SqlDataSource_BDSucursal_Sucursales">
                        </asp:ListView>
                    </td>
                    <td class="auto-style13">
                        <asp:SqlDataSource ID="SqlDataSource_BDSucursal_Sucursales" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringBDSucursales %>" ProviderName="<%$ ConnectionStrings:ConnectionStringBDSucursales.ProviderName %>" SelectCommand="SELECT [Id_Sucursal], [NombreSucursal], [DescripcionSucursal], [DireccionSucursal], [URL_Imagen_Sucursal] FROM [Sucursal]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style13">
                        <asp:SqlDataSource ID="SqlDataSource_Secundary_BDSucursal_Sucursales0" runat="server" ConnectionString="<%$ ConnectionStrings:BDSucursalesConnectionString %>" ProviderName="<%$ ConnectionStrings:BDSucursalesConnectionString.ProviderName %>" SelectCommand="SELECT [Id_Sucursal], [NombreSucursal], [DescripcionSucursal], [DireccionSucursal], [URL_Imagen_Sucursal] FROM [Sucursal]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style17" colspan="3"></td>
                    <td class="auto-style22"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style16" colspan="3">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style16" colspan="3">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
