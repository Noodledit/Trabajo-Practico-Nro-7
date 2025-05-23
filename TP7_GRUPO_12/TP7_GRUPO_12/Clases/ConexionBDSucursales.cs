using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace TP7_GRUPO_12.Clases
{
    public class ConexionBDSucursales
    {
        private static string connectionString = "Data Source=localhost\\sqlexpress;Initial Catalog=BDSucursales;Integrated Security=True;TrustServerCertificate=True";     

        //SqlDataReader reader;

        public SqlConnection AbrirConexion()
        {
            SqlConnection connection = new SqlConnection(connectionString);
            try
            {
                connection.Open();
            }
            catch (SqlException ex)
            {
                return null;
            }
            return connection;
        }

        public DataTable ReaderConexion(string query, string parametroAAsignar = null) 
        {
            SqlConnection connection = AbrirConexion();

            SqlCommand command = new SqlCommand();
            SqlDataReader reader;
            DataTable tablaSucursales = new DataTable();

            if (connection != null)
            {
                command.Connection = connection;
                command.CommandText = query; //"SELECT [NombreSucursal], [DescripcionSucursal], [URL_Imagen_Sucursal], [Id_Sucursal] FROM Sucursal..."

                if (parametroAAsignar != null)
                {
                    command.Parameters.AddWithValue("IdProvincia", parametroAAsignar);
                }

                reader = command.ExecuteReader();
                tablaSucursales.Load(reader);

                reader.Close();
                connection.Close();
            }
            return tablaSucursales;
        }



    }
}