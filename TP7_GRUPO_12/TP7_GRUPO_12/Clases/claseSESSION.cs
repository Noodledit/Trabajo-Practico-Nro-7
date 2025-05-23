using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;

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
        public class Sucursal
        {
            public int Id_Sucursal { get; set; }
            public string NombreSucursal { get; set; }
            public string DescripcionSucursal { get; set; }

            public Sucursal(int id, string nombre, string descripcion)
            {
                Id_Sucursal = id;
                NombreSucursal = nombre;
                DescripcionSucursal = descripcion;
            }
        }

        // Esta clase maneja la seleccion de sucursales
        public static class SeleccionarSucursal
        {
            // Obtenemos la lista de sucursales seleccionadas desde la sesión
            private const string Key = "Seleccionadas";

            // Obtenemos la lista de sucursales seleccionadas
            public static List<Sucursal> ObtenerSeleccionadas(HttpSessionState session)
            {
                // Verificamos si la lista ya existe en la sesión
                if (session[Key] == null)
                    session[Key] = new List<Sucursal>();
                return (List<Sucursal>)session[Key];
            }

            // Agregamos una sucursal a la lista de seleccionadas
            public static bool AgregarSucursal(HttpSessionState session, Sucursal sucursal)
            {
                // Verificamos si la sucursal ya está en la lista
                var lista = ObtenerSeleccionadas(session);
                if (lista.Exists(s => s.Id_Sucursal == sucursal.Id_Sucursal))
                    return false;
                // Si no está, la agregamos
                lista.Add(sucursal);
                session[Key] = lista;
                return true;
            }
        }
    }

}
