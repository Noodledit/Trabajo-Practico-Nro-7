<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoSucursalesSeleccionados.aspx.cs" Inherits="TP7_GRUPO_12.ListadoSucursalesSeleccionados" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .auto-style1 {
            width: 100%;
        }
        .auto-style15 {
            width: 114px;
        }
        .auto-style13 {
            width: 187px;
        }
        .auto-style9 {
            width: 207px;
        }
        .auto-style10 {
            width: 40px;
        }
        .auto-style3 {
            height: 23px;
            width: 114px;
        }
        .auto-style14 {
            height: 23px;
            width: 187px;
        }
        .auto-style11 {
            height: 23px;
            width: 207px;
        }
        .auto-style12 {
            height: 23px;
            width: 40px;
        }
        .auto-style16 {
            width: 587px;
        }
        .auto-style17 {
            height: 23px;
            width: 587px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style16">
                        <asp:HyperLink ID="hlListadoSucursales" runat="server" Font-Overline="False" Font-Underline="True" ForeColor="Blue" NavigateUrl="~/SeleccionarSucursales.aspx">Listado de Sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style9">
                        <asp:HyperLink ID="hlMostrarSucursalesS" runat="server" Font-Underline="True" ForeColor="Blue">Mostrar Sucursales Seleccionadas</asp:HyperLink>
                    </td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style17">
                        &nbsp;</td>
                    <td class="auto-style14"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style17">
                        <asp:Label ID="lblMostrarSucursalesSeleccionadas" runat="server" Font-Bold="True" Font-Size="22pt" Text="Mostrar sucursales seleccionadas"></asp:Label>
                    </td>
                    <td class="auto-style14"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style14"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style17">&nbsp;</td>
                    <td class="auto-style14"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style16">
                        <asp:GridView ID="gvSucursalesSeleccionadas" runat="server" AutoGenerateColumns="False" Width="459px">
                            <Columns>
                                <asp:TemplateField HeaderText="ID_SUCURSAL">
                                    <ItemTemplate>
                                        <asp:Label ID="ID_SUCURSALES" runat="server" Text='<%# Eval("ID_SUCURSAL") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="NOMBRE">
                                    <ItemTemplate>
                                        <asp:Label ID="NOMBRE" runat="server" Text='<%# Eval("NOMBRE") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="DESCRIPCIÓN">
                                    <ItemTemplate>
                                        <asp:Label ID="DESCRIPCION" runat="server" Text='<%# Eval("DESCRIPCION") %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style17">
                        <asp:Label ID="lblMensaje" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style14"></td>
                    <td class="auto-style11"></td>
                    <td class="auto-style12"></td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style16">&nbsp;</td>
                    <td class="auto-style13">&nbsp;</td>
                    <td class="auto-style9">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
