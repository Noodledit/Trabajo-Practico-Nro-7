using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TP7_GRUPO_12
{
    public partial class ListadoSucursalesSeleccionados : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack) 
            {
                DataTable tablita = claseSESSION.ObtenerTablaDesdeSesion(Session);

                if (tablita != null && tablita.Rows.Count>0)
                {
                    gvSucursalesSeleccionadas.DataSource = tablita;
                    gvSucursalesSeleccionadas.DataBind();
                }

                

               // Response.Write("Filas en sesión: " + tablita.Rows.Count);
            }


        }
    }
}