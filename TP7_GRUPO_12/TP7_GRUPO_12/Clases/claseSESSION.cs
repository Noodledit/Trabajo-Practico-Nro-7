using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TP7_GRUPO_12
{
    public class claseSESSION
    {
        private const string SucursalID = "Nombre Sucursal";
        public static string SucursalNombre {
            get { //lee de la session
                return (string)HttpContext.Current.Session[SucursalID];
            } 
            set { //escribe en la session
                HttpContext.Current.Session[SucursalID] = value;
            }
        }
           
    }
}
