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

        public string stringQuery
        {
            get { return query; }
        }
        public DataTable FiltradoProvincia(string IdProvincia)
        {
            string queryProvincia = query + "WHERE Id_ProvinciaSucursal = @IdProvincia";

            ConexionBDSucursales conexion = new ConexionBDSucursales();
            SqlConnection connection = conexion.AbrirConexion();
            

            DataTable TablaDeSucursales = new DataTable();
            
            TablaDeSucursales = conexion.ReaderConexion(queryProvincia, IdProvincia);

            return TablaDeSucursales;
        }
    }
}