using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using TP7_GRUPO_12.Clases;
using static System.Collections.Specialized.BitVector32;

namespace TP7_GRUPO_12
{
    public partial class SeleccionarSucursales : System.Web.UI.Page
    {
        private ConexionBDSucursales conexion = new ConexionBDSucursales();
        private GestionDeTablas gestion = new GestionDeTablas();
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                //Carga la lista de provincias al cargar la pagina
                ListViewSucursales.DataSource = conexion.ReaderConexion(gestion.stringQuery);
                ListViewSucursales.DataBind();
            }
        }

        protected void btnProvincia_Command(object sender, CommandEventArgs e) // Llena el listview de sucursales segun la provincia seleccionada
        {
            if (e.CommandName == "cmdProvinciaSelect")
            {
                GestionDeTablas gestion = new GestionDeTablas();
                ListViewSucursales.DataSource = gestion.FiltradoProvincia(e.CommandArgument.ToString());

                ListViewSucursales.DataBind();
            }
        }

        protected void btnBuscar_Click(object sender, EventArgs e) // llena el listview de sucursales segun el nombre ingresado
        {
            string filtro = txtBuscar.Text.Trim();

            //Chequeo que no este vacio y cambio el comando
            if (!string.IsNullOrEmpty(filtro))
            {
                //SqlDataSource_BDSucursal_Sucursales.SelectCommand =
                //    "SELECT [NombreSucursal], [DescripcionSucursal], [URL_Imagen_Sucursal], [Id_Sucursal] " +
                //    "FROM [Sucursal] WHERE LOWER(NombreSucursal) LIKE '%' + LOWER(@nombre) + '%'";

                //SqlDataSource_BDSucursal_Sucursales.SelectParameters.Clear();
                //SqlDataSource_BDSucursal_Sucursales.SelectParameters.Add("nombre", filtro);
            }

            else
            {
                //SqlDataSource_BDSucursal_Sucursales.SelectCommand = "SELECT [NombreSucursal], [DescripcionSucursal], [URL_Imagen_Sucursal], [Id_Sucursal] FROM [Sucursal]";
                //SqlDataSource_BDSucursal_Sucursales.SelectParameters.Clear();
            }

            ListViewSucursales.DataBind();

            // Verifico si la listview esta vacia
            if (ListViewSucursales.Items.Count == 0)
            {
                lblMensaje.Text = "No se encontraron sucursales con ese Nombre.";
            }
            else
            {
                lblMensaje.Text = "";
            }
        }

        protected void btnOrdenar_Click(object sender, EventArgs e) // llena el listview de sucursales ordenadas por nombre
        {

            //SqlDataSource_BDSucursal_Sucursales.SelectCommand =
            //    "SELECT [NombreSucursal], [DescripcionSucursal], [URL_Imagen_Sucursal], [Id_Sucursal] " +
            //    "FROM [Sucursal] ORDER BY NombreSucursal ASC";

            //SqlDataSource_BDSucursal_Sucursales.SelectParameters.Clear();
            //ListViewSucursales.DataBind();
        }

        protected void btnSeleccionar_Command(object sender, CommandEventArgs e) // Selecciona la sucursal y la guarda en la variable session
        {
            if (e.CommandName == "cmdSeleccionar")
            {
                //El id se pasa por el CommandArgument
                int idSucursal = int.Parse(e.CommandArgument.ToString());

                //acceder en el listview el item donde el btn se este precionando
                ListViewItem item = ((Button)sender).NamingContainer as ListViewItem;

                Label lblNombre = item.FindControl("NombreSucursalLabel") as Label;
                Label lblDescripcion = item.FindControl("DescripcionSucursalLabel") as Label;

                claseSESSION.Sucursal_ID = idSucursal;
                claseSESSION.Sucursal_Nombre = lblNombre.Text;
                claseSESSION.Sucursal_Descripcion = lblDescripcion.Text;
            }
        }
    }
}