<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SeleccionarSucursales.aspx.cs" Inherits="TP7_GRUPO_12.SeleccionarSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 { width: 100%; }
        .auto-style16 { width: 307px; }
        .auto-style17 { height: 23px; width: 307px; }
        .auto-style20 { height: 7px; 
width: 99px; }
        .auto-style23 { width: 225px; }
        .auto-style24 { height: 7px; 
width: 14%; }
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
        .auto-style63 {
            width: 156px;
        }
        .auto-style64 {
            height: 22px;
            width: 8%;
        }
        .auto-style65 {
            height: 22px;
            width: 30%;
        }
        .auto-style66 {
            height: 22px;
            width: 1%;
        }
        .auto-style67 {
            height: 32px;
            width: 8%;
        }
        .auto-style68 {
            height: 32px;
            width: 835px;
        }
        .auto-style69 {
            height: 32px;
            width: 30%;
        }
        .auto-style70 {
            height: 32px;
            width: 1%;
        }
        .auto-style71 {
            width: 8%;
            height: 7px;
        }
        .auto-style72 {
            height: 7px;
        }
        .auto-style73 {
            width: 1%;
            height: 7px;
        }
        .auto-style74 {
            height: 32px;
            width: 219px;
        }
        .auto-style75 {
            height: 32px;
            width: 241px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style31"></td>
                    <td class="auto-style57" colspan="6">
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
                    <td class="auto-style57" colspan="6"></td>
                    <td class="auto-style60"></td>
                    <td class="auto-style33"></td>
                    <td class="auto-style33"></td>
                </tr>
                <tr>
                    <td class="auto-style31"></td>
                    <td class="auto-style57" colspan="6">
                        <h1>Listado de Sucursales</h1>
                    </td>
                    <td class="auto-style60"></td>
                    <td class="auto-style33"></td>
                    <td class="auto-style33"></td>
                </tr>
                <tr>
                    <td class="auto-style67" rowspan="2"></td>
                    <td class="auto-style68" colspan="6"></td>
                    <td class="auto-style69" rowspan="2">
                        <asp:RegularExpressionValidator ID="revBuscar" runat="server" ControlToValidate="txtBusquedaSucursal" ForeColor="Red" ValidationExpression="^[A-Za-z]+$" ValidationGroup="GrupoBusqueda">Solo se pueden ingresar letras.</asp:RegularExpressionValidator>
                        <asp:RequiredFieldValidator ID="rvBuscar" runat="server" ControlToValidate="txtBusquedaSucursal" ErrorMessage="RequiredFieldValidator" ForeColor="Red" ValidationGroup="GrupoBusqueda">El campo no puede estar vacio.</asp:RequiredFieldValidator>
                        </td>
                    <td class="auto-style70" rowspan="2"></td>
                    <td class="auto-style70" rowspan="2"></td>
                </tr>
                <tr>
                    <td class="auto-style74" colspan="2">Búsqueda por nombre de sucursal:</td>
                    <td class="auto-style75" colspan="2">
                        <asp:TextBox ID="txtBusquedaSucursal" runat="server" style="margin-left: 64px" Width="250px" ValidationGroup="GrupoBusqueda" Wrap="False"></asp:TextBox>
                        </td>
                    <td class="auto-style68" colspan="2">
                        <asp:Button ID="btnBuscar" runat="server" Height="22px" style="margin-left: 20px" Text="Buscar" ValidationGroup="GrupoBusqueda" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style71"></td>
                    <td class="auto-style24">&nbsp;</td>
                    <td class="auto-style72" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style20" colspan="2">
                        &nbsp;</td>
                    <td class="auto-style72">
                        &nbsp;</td>
                    <td class="auto-style72" colspan="2">
                        <br />
                    </td>
                    <td class="auto-style73"></td>
                </tr>
                <tr>
                    <td class="auto-style31">
                        <asp:DataList ID="DataList3" runat="server" style="margin-top: 0px" DataSourceID="SqlDataSource_BDSucursal_Provincias">
                            <ItemTemplate>
                                <table class="auto-style1">
                                    <tr>
                                        <td>
                                            <asp:Button ID="btnProvincia" runat="server" Text='<%# Eval("DescripcionProvincia") %>' Width="200px" Height="40px" CommandName="cmdProvinciaSelect" OnCommand="btnProvincia_Command" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>&nbsp;</td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:DataList>
                    </td>
                    <td class="auto-style57" colspan="6">
                        <asp:ListView ID="ListViewSucursales" runat="server" DataSourceID="SqlDataSource_Secundary_BDSucursal_Sucursales0" style="margin-top: 250px" GroupItemCount="3" DataKeyNames="Id_Sucursal">                            
                            <EditItemTemplate>
                                <td runat="server" style="background-color:#008A8C;color: #FFFFFF;">NombreSucursal:
                                    <asp:TextBox ID="NombreSucursalTextBox" runat="server" Text='<%# Bind("NombreSucursal") %>' />
                                    <br />
                                    DescripcionSucursal:
                                    <asp:TextBox ID="DescripcionSucursalTextBox" runat="server" Text='<%# Bind("DescripcionSucursal") %>' />
                                    <br />
                                    URL_Imagen_Sucursal:
                                    <asp:TextBox ID="URL_Imagen_SucursalTextBox" runat="server" Text='<%# Bind("URL_Imagen_Sucursal") %>' />
                                    <br />
                                    Id_Sucursal:
                                    <asp:Label ID="Id_SucursalLabel1" runat="server" Text='<%# Eval("Id_Sucursal") %>' />
                                    <br />
                                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Actualizar" />
                                    <br />
                                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancelar" />
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
                                <td runat="server" style="background-color: #DCDCDC; color: #000000;" class="auto-style63">
                                    <asp:Label ID="Id_SucursalLabel" runat="server" Text='<%# Eval("Id_Sucursal") %>' Visible="False" />
                                    <asp:Label ID="NombreSucursalLabel" runat="server" Text='<%# Eval("NombreSucursal") %>' Width="221px" />
                                    <br />
                                    <asp:ImageButton ID="imgbtnSucursal" runat="server" ImageUrl='<%# Eval("URL_Imagen_Sucursal") %>' Width="221px" />
                                    <br />
                                    <asp:Label ID="DescripcionSucursalLabel" runat="server" Height="90px" Text='<%# Eval("DescripcionSucursal") %>' Width="221px" />
                                    <br />
                                    <asp:Button ID="btnSeleccionar" runat="server" CommandArgument='<%# Eval("Id_Sucursal") %>' CommandName="cmdSeleccionar" Height="36px" OnCommand="btnSeleccionar_Command" Text="Seleccionar" Width="221px" />
                                    <br />
                                </td>
                            </ItemTemplate>
                            <LayoutTemplate>
                                <table runat="server">
                                    <tr runat="server">
                                        <td runat="server">
                                            <table id="groupPlaceholderContainer" runat="server" border="1" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;font-family: Verdana, Arial, Helvetica, sans-serif;">
                                                <tr id="groupPlaceholder" runat="server">
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr runat="server">
                                        <td runat="server" style="text-align: center;background-color: #FFCC66; font-family: Verdana, Arial, Helvetica, sans-serif;color: #333333">
                                            <asp:DataPager ID="DataPager1" runat="server" PageSize="6">
                                                <Fields>
                                                    <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                    <asp:NumericPagerField />
                                                    <asp:NextPreviousPagerField ButtonType="Button" ShowLastPageButton="True" ShowNextPageButton="False" ShowPreviousPageButton="False" />
                                                </Fields>
                                            </asp:DataPager>
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
                                    URL_Imagen_Sucursal:
                                    <asp:Label ID="URL_Imagen_SucursalLabel" runat="server" Text='<%# Eval("URL_Imagen_Sucursal") %>' />
                                    <br />
                                    Id_Sucursal:
                                    <asp:Label ID="Id_SucursalLabel" runat="server" Text='<%# Eval("Id_Sucursal") %>' />
                                    <br />
                                </td>
                            </SelectedItemTemplate>
                        </asp:ListView>
                    </td>
                    <td class="auto-style60">
                        <asp:SqlDataSource ID="SqlDataSource_BDSucursal_Sucursales" runat="server" ConnectionString="<%$ ConnectionStrings:BDSucursalesConnectionString6 %>" SelectCommand="SELECT [Id_Sucursal], [NombreSucursal], [DescripcionSucursal], [DireccionSucursal], [URL_Imagen_Sucursal] FROM [Sucursal]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource_Secundary_BDSucursal_Sucursales0" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionStringBDSucursales %>" SelectCommand="SELECT [NombreSucursal], [DescripcionSucursal], [URL_Imagen_Sucursal], [Id_Sucursal] FROM [Sucursal]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style33"></td>
                    <td class="auto-style33"></td>
                </tr>
                <tr>
                    <td class="auto-style35">
                        <asp:SqlDataSource ID="SqlDataSource_BDSucursal_Provincias" runat="server" ConnectionString="<%$ ConnectionStrings:BDSucursalesConnectionString6 %>" SelectCommand="SELECT [DescripcionProvincia] FROM [Provincia]"></asp:SqlDataSource>
                    </td>
                    <td class="auto-style23" colspan="3">
                        &nbsp;</td>
                    <td class="auto-style41" colspan="3">&nbsp;</td>
                    <td class="auto-style61">
                        &nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style64"></td>
                    <td class="auto-style23" colspan="3">
                        &nbsp;</td>
                    <td class="auto-style41" colspan="3">&nbsp;</td>
                    <td class="auto-style65">
                    </td>
                    <td class="auto-style66"></td>
                    <td class="auto-style66"></td>
                </tr>
                <tr>
                    <td class="auto-style31"></td>
                    <td class="auto-style17" colspan="3"></td>
                    <td class="auto-style43" colspan="3">&nbsp;</td>
                    <td class="auto-style60"></td>
                    <td class="auto-style33"></td>
                    <td class="auto-style33"></td>
                </tr>
                <tr>
                    <td class="auto-style35">&nbsp;</td>
                    <td class="auto-style16" colspan="3">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style41" colspan="3">
                        &nbsp;</td>
                    <td class="auto-style61">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style35">&nbsp;</td>
                    <td class="auto-style44" colspan="6">&nbsp;</td>
                    <td class="auto-style61">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                    <td class="auto-style37">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
