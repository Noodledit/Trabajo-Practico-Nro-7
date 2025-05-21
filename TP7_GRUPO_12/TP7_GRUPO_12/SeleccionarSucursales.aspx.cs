using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
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
    }
}