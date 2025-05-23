using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TP7_GRUPO_12
{
    public class claseSESSION
    {
        private const string SucursalNombre = "NombreSucursal";
        private const string SucursalID = "Id_Sucursal";
        private const string SucursalDescripcion = "DescripcionSucursal";


        public static string Sucursal_Nombre
        {
            get
            { //lee de la session
                return (string)HttpContext.Current.Session[SucursalNombre];
            }
            set
            { //escribe en la session
                HttpContext.Current.Session[SucursalNombre] = value;
            }
        }

        public static int Sucursal_ID
        {
            get
            {
                return (int)HttpContext.Current.Session[SucursalID];
            }
            set
            {
                HttpContext.Current.Session[SucursalID] = value;
            }
        }

        public static string Sucursal_Descripcion
        {
            get
            {
                return (string)HttpContext.Current.Session[SucursalDescripcion];
            }
            set
            {
                HttpContext.Current.Session[SucursalDescripcion] = value;
            }
        }

    }
}
