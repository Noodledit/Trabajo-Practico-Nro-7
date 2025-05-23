using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static TP7_GRUPO_12.claseSESSION;

namespace TP7_GRUPO_12
{
    public partial class SeleccionarSucursales : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btnSeleccionar_Command(object sender, CommandEventArgs e)
        {
<<<<<<< Updated upstream
            if (e.CommandName == "eventoSeleccionar")
            { 
                lblMensaje.Text = "Sucursal seleccionada: " + e.CommandArgument.ToString();
=======
            if (e.CommandName == "cmdSeleccionar")
            {
                int idSucursal = int.Parse(e.CommandArgument.ToString());
                ListViewItem item = ((Button)sender).NamingContainer as ListViewItem;
                Label lblNombre = item.FindControl("NombreSucursalLabel") as Label;
                Label lblDescripcion = item.FindControl("DescripcionSucursalLabel") as Label;

                var sucursal = new Sucursal(idSucursal, lblNombre.Text, lblDescripcion.Text);

                if (SeleccionarSucursal.AgregarSucursal(Session, sucursal))
                    lblMensaje.Text = "Sucursal seleccionada: " + sucursal.NombreSucursal;
                else
                    lblMensaje.Text = "La sucursal ya fue seleccionada.";
            }
        }


        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            string filtro = txtBuscar.Text.Trim();

            //Chequeo que no este vacio y cambio el comando
            if (!string.IsNullOrEmpty(filtro))
            {
                SqlDataSource_BDSucursal_Sucursales.SelectCommand =
                    "SELECT [NombreSucursal], [DescripcionSucursal], [URL_Imagen_Sucursal], [Id_Sucursal] " +
                    "FROM [Sucursal] WHERE LOWER(NombreSucursal) LIKE '%' + LOWER(@nombre) + '%'";

                SqlDataSource_BDSucursal_Sucursales.SelectParameters.Clear();
                SqlDataSource_BDSucursal_Sucursales.SelectParameters.Add("nombre", filtro);
>>>>>>> Stashed changes
            }

        }
    }
}