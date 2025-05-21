<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SeleccionarSucursales.aspx.cs" Inherits="TP7_GRUPO_12.SeleccionarSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 { width: 100%; }
        .auto-style14 { height: 50px; }
        .auto-style16 { width: 307px; }
        .auto-style17 { height: 23px; width: 307px; }
        .auto-style20 { height: 50px; 
width: 438px; }
        .auto-style23 { width: 225px; }
        .auto-style24 { height: 50px; 
width: 18%; }
        .auto-style25 { width: 8%; 
height: 63px; }
        .auto-style26 { width: 30%; 
height: 63px; }
        .auto-style27 { width: 1%; 
height: 63px; }
        .auto-style29 {
            height: 50px;
            width: 8%;
        }
        .auto-style30 {
            height: 50px;
            width: 1%;
        }
        .auto-style31 {
            height: 23px;
            width: 8%;
        }
        .auto-style33 {
            height: 23px;
            width: 1%;
        }
        .auto-style35 {
            width: 8%;
        }
        .auto-style37 {
            width: 1%;
        }
        .auto-style41 {
            width: 283px;
        }
        .auto-style43 {
            height: 23px;
            width: 283px;
        }
        .auto-style44 {
            width: 835px;
        }
        .auto-style57 {
            height: 23px;
            width: 835px;
        }
        .auto-style60 {
            height: 23px;
            width: 30%;
        }
        .auto-style61 {
            width: 30%;
        }
        .auto-style62 {
            height: 50px;
            width: 12%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style31"></td>
                    <td class="auto-style57" colspan="4">
                        <asp:HyperLink ID="hlListadoSucursales" runat="server" Font-Overline="False" Font-Underline="True" ForeColor="Blue">Listado de Sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style60">
                        <asp:HyperLink ID="hlMostrarSucursalesS" runat="server" Font-Underline="True" ForeColor="Blue">Mostrar Sucursales Seleccionadas</asp:HyperLink>
                    </td>
                    <td class="auto-style33"></td>
                    <td class="auto-style33"></td>
                </tr>
                <tr>
                    <td class="auto-style31"></td>
                    <td class="auto-style57" colspan="4"></td>
                    <td class="auto-style60"></td>
                    <td class="auto-style33"></td>
                    <td class="auto-style33"></td>
                </tr>
                <tr>
                    <td class="auto-style31"></td>
                    <td class="auto-style57" colspan="4">
                        <h1>Listado de Sucursales</h1>
                    </td>
                    <td class="auto-style60"></td>
                    <td class="auto-style33"></td>
                    <td class="auto-style33"></td>
                </tr>
                <tr>
                    <td class="auto-style35"></td>
                    <td class="auto-style44" colspan="4"></td>
                    <td class="auto-style61"></td>
                    <td class="auto-style37"></td>
                    <td class="auto-style37"></td>
                </tr>
                <tr>
                    <td class="auto-style29"></td>
                    <td class="auto-style24">Búsqueda por nombre de sucursal:</td>
                    <td class="auto-style20" colspan="2">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="txtBusquedaSucursal" runat="server" style="margin-left: 64px" Width="250px"></asp:TextBox>
                        </td>
                    <td class="auto-style62">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Button ID="btnBuscar" runat="server" Height="22px" style="margin-left: 20px" Text="Buscar" />
                    </td>
                    <td class="auto-style14" colspan="2">
                        <asp:RequiredFieldValidator ID="rvBuscar" runat="server" ControlToValidate="txtBusquedaSucursal" ErrorMessage="RequiredFieldValidator" ForeColor="Red">El campo no puede estar vacio.</asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="revBuscar" runat="server" ControlToValidate="txtBusquedaSucursal" ForeColor="Red" ValidationExpression="^[A-Za-z]+$">Solo se pueden ingresar letras.</asp:RegularExpressionValidator>
                    </td>
                    <td class="auto-style30"></td>
                </tr>
                <tr>
                    <td class="auto-style31">
                        <asp:DataList ID="DataList3" runat="server" style="margin-top: 0px" DataSourceID="SqlDataSource_BDSucursal_Provincias">
                            <ItemTemplate>
                                <asp:Button ID="btnProvincia" runat="server" Text='<%# Eval("DescripcionProvincia") %>' />
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                    <td class="auto-style57" colspan="4">
                        <asp:ListView ID="ListViewSucursales" runat="server" DataSourceID="SqlDataSource_Secundary_BDSucursal_Sucursales0" style="margin-top: 250px" GroupItemCount="3">
                            <EditItemTemplate>
                                <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">NombreSucursal:
                                    <asp:TextBox ID="NombreSucursalTextBox" runat="server" Text='<%# Bind("NombreSucursal") %>' />
                                    <br />
                                    DescripcionSucursal:
                                    <asp:TextBox ID="DescripcionSucursalTextBox" runat="server" Text='<%# Bind("DescripcionSucursal") %>' />
                                    <br />
                                    DireccionSucursal:
                                    <asp:TextBox ID="DireccionSucursalTextBox" runat="server" Text='<%# Bind("DireccionSucursal") %>' />
                                    <br />
                                    URL_Imagen_Sucursal:
                                    <asp:TextBox ID="URL_Imagen_SucursalTextBox" runat="server" Text='<%# Bind("URL_Imagen_Sucursal") %>' />
                                    <br />
                                    <br />
                                    <asp:DataPager ID="DataPager1" runat="server" PageSize="6">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                        </Fields>
                                    </asp:DataPager>
                                    <br />
                                </td>
                            </EditItemTemplate>
                            <EmptyDataTemplate>
                                <table runat="server" style="">
                                    <tr>
                                        <td>No se han devuelto datos.</td>
                                    </tr>
                                </table>
                            </EmptyDataTemplate>
                            <EmptyItemTemplate>
                                <td runat="server" />
                            </EmptyItemTemplate>
                            <GroupTemplate>
                                <tr id="itemPlaceholderContainer" runat="server">
                                    <td id="itemPlaceholder" runat="server"></td>
                                </tr>
                            </GroupTemplate>
                            <InsertItemTemplate>
                                <td runat="server" style="">NombreSucursal:
                                    <asp:TextBox ID="NombreSucursalTextBox" runat="server" Text='<%# Bind("NombreSucursal") %>' />
                                    <br />
                                    DescripcionSucursal:
                                    <asp:TextBox ID="DescripcionSucursalTextBox" runat="server" Text='<%# Bind("DescripcionSucursal") %>' />
                                    <br />
                                    DireccionSucursal:
                                    <asp:TextBox ID="DireccionSucursalTextBox" runat="server" Text='<%# Bind("DireccionSucursal") %>' />
                                    <br />
                                    URL_Imagen_Sucursal:
                                    <asp:TextBox ID="URL_Imagen_SucursalTextBox" runat="server" Text='<%# Bind("URL_Imagen_Sucursal") %>' />
                                    <br />
                                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insertar" />
                                    <br />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Borrar" />
                                    <br />
                                </td>
                            </InsertItemTemplate>
                            <ItemTemplate>
                                <td runat="server" style="background-color: #DCDCDC; color: #000000;">&nbsp;<asp:Label ID="NombreSucursalLabel" runat="server" Text='<%# Eval("NombreSucursal") %>' />
                                    <br />
                                    <br />
                                    <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("URL_Imagen_Sucursal") %>' />
                                    &nbsp;<asp:Label ID="DescripcionSucursalLabel" runat="server" Text='<%# Eval("DescripcionSucursal") %>' />
                                    <br />
                                    <br />
                                    &nbsp;<asp:Button ID="Button1" runat="server" Text="Seleccionar" CommandArgument='<%# Eval("NombreSucursal") %>' CommandName="eventoSeleccionar" OnCommand="btnSeleccionar_Command" />
                                    <br />
                                </td>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server">
                                    <tr runat="server">
                                        <td runat="server">
                                            &nbsp;</td>
                                    </tr>
                                    <tr runat="server">
                                        <td runat="server" style="text-align: center;background-color: #CCCCCC; font-family: Verdana, Arial, Helvetica, sans-serif;color: #000000">
                                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                <tr id="groupPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </LayoutTemplate>
                            <SelectedItemTemplate>
                                <td runat="server" style="background-color:#008A8C;font-weight: bold;color: #FFFFFF;">NombreSucursal:
                                    <asp:Label ID="NombreSucursalLabel" runat="server" Text='<%# Eval("NombreSucursal") %>' />
                                    <br />
                                    DescripcionSucursal:
                                    <asp:Label ID="DescripcionSucursalLabel" runat="server" Text='<%# Eval("DescripcionSucursal") %>' />
                                    <br />
                                    DireccionSucursal:
                                    <asp:Label ID="DireccionSucursalLabel" runat="server" Text='<%# Eval("DireccionSucursal") %>' />
                                    <br />
                                    URL_Imagen_Sucursal:
                                    <asp:Label ID="URL_Imagen_SucursalLabel" runat="server" Text='<%# Eval("URL_Imagen_Sucursal") %>' />
                                    <br />
                                </td>
                            </SelectedItemTemplate>
                        </asp:ListView>
                    </td>
                    <td class="auto-style60"></td>
                    <td class="auto-style33"></td>
                    <td class="auto-style33"></td>
                </tr>
                <tr>
                    <td class="auto-style35">&nbsp;</td>
                    <td class="auto-style23" colspan="2" rowspan="2">
                        &nbsp;</td>
                    <td class="auto-style41" colspan="2" rowspan="2">&nbsp;</td>
                    <td class="auto-style61">
                        <asp:SqlDataSource ID="SqlDataSource_BDSucursal_Sucursales" runat="server" ConnectionString="<%$ ConnectionStrings:BDSucursalesConnectionString6 %>" SelectCommand="SELECT [Id_Sucursal], [NombreSucursal], [DescripcionSucursal], [DireccionSucursal], [URL_Imagen_Sucursal] FROM [Sucursal]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style25">&nbsp;</td>
                    <td class="auto-style26">
                        <asp:SqlDataSource ID="SqlDataSource_Secundary_BDSucursal_Sucursales0" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringBDSucursales %>" SelectCommand="SELECT [NombreSucursal], [DescripcionSucursal], [DireccionSucursal], [URL_Imagen_Sucursal] FROM [Sucursal]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style27"></td>
                    <td class="auto-style27"></td>
                </tr>
                <tr>
                    <td class="auto-style31"></td>
                    <td class="auto-style17" colspan="2"></td>
                    <td class="auto-style43" colspan="2">&nbsp;</td>
                    <td class="auto-style60"></td>
                    <td class="auto-style33"></td>
                    <td class="auto-style33"></td>
                </tr>
                <tr>
                    <td class="auto-style35">&nbsp;</td>
                    <td class="auto-style16" colspan="2">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style41" colspan="2">
                        <asp:SqlDataSource ID="SqlDataSource_BDSucursal_Provincias" runat="server" ConnectionString="<%$ ConnectionStrings:BDSucursalesConnectionString6 %>" SelectCommand="SELECT [DescripcionProvincia] FROM [Provincia]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style61">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style35">&nbsp;</td>
                    <td class="auto-style44" colspan="4">&nbsp;</td>
                    <td class="auto-style61">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
