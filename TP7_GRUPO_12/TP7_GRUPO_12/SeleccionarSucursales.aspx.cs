using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
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
        private string actualQuery;

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                //Carga la lista de provincias al cargar la pagina
                ListViewSucursales.DataSource = conexion.ReaderConexion(gestion.PrincipalQuery, ref actualQuery);
                Session["QueryActual"] = actualQuery;
                ListViewSucursales.DataBind();
            }
        }

        protected void btnProvincia_Command(object sender, CommandEventArgs e) // Llena el listview de sucursales segun la provincia seleccionada
        {
            if (e.CommandName == "cmdProvinciaSelect")
            {
                GestionDeTablas gestion = new GestionDeTablas();
                ListViewSucursales.DataSource = gestion.FiltradoProvincia(e.CommandArgument.ToString(), ref actualQuery);
                Session["QueryActual"] = actualQuery;

                lblMensaje.Text = actualQuery;

                //Acomodamos para que no haya problemas al cargar las provincias desde la pagina 2 o 3 del datalist
                GestionDeTablas.IrAPrimeraPagina(ListViewSucursales, "DPListviewSucursales");

                ListViewSucursales.DataBind();
            }
        }
        
        protected void btnBuscar_Click(object sender, EventArgs e) // llena el listview de sucursales segun el nombre ingresado
        {
            string filtro = txtBuscar.Text.Trim();
            GestionDeTablas gestionNombres = new GestionDeTablas();

            //SI NO ESTA VACIO muestro
            if (!string.IsNullOrEmpty(filtro))
            {
                ListViewSucursales.DataSource = gestionNombres.FiltradoNombre(filtro, ref actualQuery);
                Session["QueryActual"] = actualQuery;
                ListViewSucursales.DataBind();
            }

            else //SI ESTA VACIO muestro todo
            {
                ListViewSucursales.DataSource = conexion.ReaderConexion(gestion.PrincipalQuery, ref actualQuery);
                Session["QueryActual"] = actualQuery;
                ListViewSucursales.DataBind();

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

            //lblMensaje.Text = actualQuery;

        }

        protected void btnOrdenar_Click(object sender, EventArgs e)
        {
            string inOrderQuery = gestion.PrincipalQuery + "ORDER BY NombreSucursal ASC";

            ConexionBDSucursales conexion = new ConexionBDSucursales();

            DataTable tablaSucursalesOrdenada = conexion.ReaderConexion(inOrderQuery, ref actualQuery);

            Session["QueryActual"] = actualQuery;

            ListViewSucursales.DataSource = tablaSucursalesOrdenada;
            ListViewSucursales.DataBind();
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

                DataTable tablita = claseSESSION.ObtenerTablaDesdeSesion(Session);

                if (tablita.Columns.Count == 0)
                {
                    tablita.Columns.Add("ID_SUCURSAL", typeof(int));
                    tablita.Columns.Add("NOMBRE", typeof(string));
                    tablita.Columns.Add("DESCRIPCION", typeof(string));
                }

                bool existe = tablita.AsEnumerable().Any(row => row.Field<int>("ID_SUCURSAL") == idSucursal);
                if (!existe)
                {
                    tablita.Rows.Add(idSucursal, lblNombre.Text, lblDescripcion.Text);
                }

                //guardamos la tabla
                claseSESSION.GuardarTablaEnSesion(tablita,Session);
            }
        }

        protected void ListViewSucursales_PagePropertiesChanging(object sender, PagePropertiesChangingEventArgs e)
        {
            DataPager dataPager = (DataPager)ListViewSucursales.FindControl("DPListviewSucursales");

            dataPager.SetPageProperties(e.StartRowIndex, e.MaximumRows, false);

            ListViewSucursales.DataSource = conexion.ReaderConexion(Session["QueryActual"]?.ToString(), ref actualQuery);
            Session["QueryActual"] = actualQuery;

            ListViewSucursales.DataBind();
        }
    }
} //