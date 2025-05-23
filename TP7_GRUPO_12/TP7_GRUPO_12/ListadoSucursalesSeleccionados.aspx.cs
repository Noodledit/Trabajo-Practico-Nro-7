using System;
using System.Data;
using System.Web.UI;

namespace TP7_GRUPO_12
{
    public partial class ListadoSucursalesSeleccionados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MostrarSucursalesSeleccionadas();
        }
        private void MostrarSucursalesSeleccionadas()
        {
            // Verificamos si hay datos en la sesión
            if (Session["Seleccionadas"] != null)
            {
                // Obtenemos la lista de sucursales seleccionadas desde la sesión
                var lista = Session["Seleccionadas"] as System.Collections.Generic.List<TP7_GRUPO_12.claseSESSION.Sucursal>;
                gvSucursalesSeleccionadas.DataSource = lista;
                gvSucursalesSeleccionadas.DataBind();
            }
            else
            {
                // Si no hay datos, mostramos un mensaje
                gvSucursalesSeleccionadas.DataSource = null;
                gvSucursalesSeleccionadas.DataBind();
                lblMensaje.Text = "No hay sucursales seleccionadas.";
            }
        }
    }
}
