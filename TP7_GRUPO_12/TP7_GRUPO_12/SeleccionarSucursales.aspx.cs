using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP7_GRUPO_12
{
    public partial class SeleccionarSucursales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnProvincia_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "cmdProvinciaSelect")
            {
                lblMensaje.Text = "Provincia seleccionada: " + e.CommandArgument.ToString();
                SqlDataSource_BDSucursal_Sucursales.SelectCommand = "SELECT * FROM Sucursal WHERE idProvincia = " + e.CommandArgument.ToString();
                ListViewSucursales.DataSource = SqlDataSource_BDSucursal_Sucursales;
                ListViewSucursales.DataBind();
            }
        }

        protected void btnSeleccionar_Command(object sender, CommandEventArgs e)
        {
            if (e.CommandName == "cmdSeleccionar")
            {
               
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string filtro = txtBuscar.Text.Trim();

            //Chequeo que no este vacio y cambio el comando
            if (!string.IsNullOrEmpty(filtro))
            {
                SqlDataSource_BDSucursal_Sucursales.SelectCommand = "SELECT [NombreSucursal], [DescripcionSucursal], [URL_Imagen_Sucursal], [Id_Sucursal] " + "FROM [Sucursal] WHERE LOWER(NombreSucursal) LIKE LOWER(@nombre)";
                SqlDataSource_BDSucursal_Sucursales.SelectParameters.Clear();
                SqlDataSource_BDSucursal_Sucursales.SelectParameters.Add("nombre", "%" + filtro + "%");
            }
            else
            {
                SqlDataSource_BDSucursal_Sucursales.SelectCommand = "SELECT [NombreSucursal], [DescripcionSucursal], [URL_Imagen_Sucursal], [Id_Sucursal] FROM [Sucursal]";
                SqlDataSource_BDSucursal_Sucursales.SelectParameters.Clear();
            }

            ListViewSucursales.DataBind();

            // Verifico si la listview esta vacia
            if (ListViewSucursales.Items.Count == 0)
            {
                lblMensaje.Text = "No se encontraron sucursales con ese nombre.";
            }
            else
            {
                lblMensaje.Text = "";
            }
        }
    }
}