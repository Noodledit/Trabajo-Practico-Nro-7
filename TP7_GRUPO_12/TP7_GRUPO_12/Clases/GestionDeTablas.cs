using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace TP7_GRUPO_12.Clases
{
    public class GestionDeTablas
    {
        private static string query = "SELECT [NombreSucursal], [DescripcionSucursal], [URL_Imagen_Sucursal], [Id_Sucursal] FROM Sucursal ";

        public GestionDeTablas() { }

        public string PrincipalQuery
        {
            get { return query; }
        }

        //FILTRAR PROVINCIA
        public DataTable FiltradoProvincia(string IdProvincia, ref string actualQuery)
        {
            string provinciaQuery = query + "WHERE Id_ProvinciaSucursal = @ParametroComparado";
            ConexionBDSucursales conexion = new ConexionBDSucursales();
            SqlConnection connection = conexion.AbrirConexion();

            return conexion.ReaderConexion(provinciaQuery ,ref actualQuery, IdProvincia);
        }

        //FILTRAR NOMBRE
        public DataTable FiltradoNombre(string nombre, ref string actualQuery)
        {
            string QueryNombre = query + " WHERE LOWER(NombreSucursal) LIKE '%' + LOWER(@ParametroComparado) + '%'";
            ConexionBDSucursales conexion = new ConexionBDSucursales();
            SqlConnection connection = conexion.AbrirConexion();

            return conexion.ReaderConexion(QueryNombre, ref actualQuery, nombre);
        }
    }
}