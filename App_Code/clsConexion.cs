using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


/// <summary>
/// clase conexion del proyecto
/// </summary>
public class clsConexion
{
    protected SqlDataReader reader;//consultar los valores
    protected SqlDataAdapter AdaptadorDatos;
    protected DataSet data;
    protected SqlConnection onConeccion = new SqlConnection();//conexion
    string strConexion = ConfigurationManager.ConnectionStrings["EscuelaSistemasConnectionString"].ConnectionString;//conexion referencia dataset
    

    public clsConexion()
    {
        //
        // TODO: Agregar aquí la lógica del constructor
        //
    }

    //cadena coneccion
    public SqlConnection getConexion()
    {
        try
        {
            string cadena = @"Data Source=DESKTOP-NPOAUA5\SQLEXPRESS;Initial Catalog=EscuelaSistemas;Integrated Security=True ";
            SqlConnection cone = new SqlConnection(cadena);
            cone.Open();
            return cone;
        }
        catch (Exception)
        {
            return null;//algun fallo o caida en la conexion con la base de datos
        }
    }


    
    private DataSet ds;
    public void conectar(String tabla)
    {
        onConeccion.ConnectionString = strConexion;
        onConeccion.Open();//apertura de coneccion
        AdaptadorDatos = new SqlDataAdapter("select * from "+tabla,onConeccion);
        SqlCommandBuilder ejecutadorcomandos = new SqlCommandBuilder(AdaptadorDatos);
        Data = new DataSet();
        AdaptadorDatos.Fill(Data,tabla);
        onConeccion.Close();
    }

    public DataSet Data
    {
        set { data = value; }
        get { return data; }
    }

    public SqlDataReader DataReader
    {
        set { reader = value; }
        get { return reader; }
    }


}