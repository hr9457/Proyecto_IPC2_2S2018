using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

/// <summary>
/// Descripción breve de clsCliente
/// </summary>
public class clsCliente : clsConexion
{
    //cadena de conexion
    string strConexion = ConfigurationManager.ConnectionStrings["EscuelaSistemasConnectionString"].ConnectionString;//conexion referencia dataset
    //-------------------------------------------------
    string tabla = "Usuario";//nombre de la tabla
    protected int carnetUsuario, cod_tipoUsuario,telefono;
    protected string nombreCompleto,correoElectronico,fechaNacimiento,contraseña,palabraClave;
    public clsCliente(int carnetUsuario, string nombreCompleto,string correoElectronico,
        string fechaNacimiento,int telefono,string contraseña,string palabraClave,int cod_tipoUsuario)
    {
        this.carnetUsuario = carnetUsuario;
        this.nombreCompleto = nombreCompleto;
        this.correoElectronico = correoElectronico;
        this.fechaNacimiento = fechaNacimiento;
        this.telefono = telefono;
        this.contraseña = contraseña;
        this.palabraClave = palabraClave;
        this.cod_tipoUsuario = cod_tipoUsuario;
    }

    //metodos para establecer y recuperar 
    public int CarnetUsuario
    {
        set { carnetUsuario = value; }
        get { return carnetUsuario; }
    }

    public string NombreCompleto
    {
        set { nombreCompleto = value; }
        get { return nombreCompleto; }
    }

    public string CorreoElectronico
    {
        set { correoElectronico = value; }
        get { return correoElectronico; }
    }

    public string FechaNacimiento
    {
        set { fechaNacimiento = value; }
        get { return fechaNacimiento; }
    }

    public int Telefono
    {
        set { telefono = value; }
        get { return telefono; }
    }

    public string Contraseña
    {
        set { contraseña = value; }
        get { return contraseña; }
    }

    public string PalabraCalve
    {
        set { palabraClave = value; }
        get { return palabraClave; }
    }

    public int Cod
    {
        set { cod_tipoUsuario = value; }
        get { return cod_tipoUsuario; }
    }


    //metodo agregar usuario a la palaforma
    public void addUsuario()
    {
        conectar(tabla);//abrea la coneccion
        DataRow fila;//nuevo registro
        fila = Data.Tables[tabla].NewRow();//nueva instacia en la tabla usuario
        fila["carnetUsuario"] = carnetUsuario;
        fila["nombreCompleto"] = nombreCompleto;
        fila["correoElectronico"] = correoElectronico;
        fila["fechaNacimiento"] = fechaNacimiento;
        fila["telefono"] = telefono;
        fila["contraseña"] = contraseña;
        fila["palabraClave"] = palabraClave;
        fila["cod_tipoUsuario"] = cod_tipoUsuario;
        Data.Tables[tabla].Rows.Add(fila);//crear nuevo registro
        AdaptadorDatos.Update(Data,tabla);//actualizar datos
    }

    public bool deletUsuario(int carnet)
    {
        conectar(tabla);
        DataRow fila;
        int registro = Data.Tables[tabla].Rows.Count - 1;
        for (int i=0;i<=registro;i++)
        {
            fila = Data.Tables[tabla].Rows[i];//registro actual econtrado
            if (int.Parse(fila["carnetUsuario"].ToString())==carnet)//condicion valor encontrado
            {
                fila = Data.Tables[tabla].Rows[i];
                fila.Delete();
                DataTable tablaborrados;
                tablaborrados = data.Tables[tabla].GetChanges(DataRowState.Deleted);
                AdaptadorDatos.Update(tablaborrados);//actualizacion de datos
                Data.Tables[tabla].AcceptChanges();//aceptacion de cambio en la tabla
                return true;
            }
        }return false;
    }


    public bool UpDate(int carnetUsuario, string nombreCompleto, string correoElectronico,
        string fechaNacimiento, int telefono, string contrasena,string palabraClave)
    {
        try
        {
            string sql = "update Usuario set nombreCompleto = '"+nombreCompleto+"' correoElectronico = '"+correoElectronico+" "
                +"' fechaNacimiento = '"+fechaNacimiento+"' telefono = '"+telefono+"' contraseña = '"+contrasena+"' "
                 +" palabraClave = '"+palabraClave+"'  where carnetUsuario = "+carnetUsuario;
            SqlCommand cmd = new SqlCommand(sql,getConexion());
            int alteracion = cmd.ExecuteNonQuery();
            return alteracion>0;
        }
        catch
        {
            return false;
        }
    }

    //asignacion a cursos
    public bool Asignacion(int cod_Curso,int carnetUsuario)
    {
        try
        {
            string sql = "insert into Aignacion values ('"+cod_Curso+"','"+carnetUsuario+"')";
            SqlCommand cmd = new SqlCommand(sql, getConexion());
            int alteracion = cmd.ExecuteNonQuery();
            return alteracion > 0;
        }
        catch
        {
            return false;
        }
    }

    //busqueda de usuario dentro de la base de datos
    public bool existe(int valor)
    {
        conectar(tabla);
        DataRow fila;
        int registro = Data.Tables[tabla].Rows.Count - 1;//buscador del registro
        for(int i = 0; i <= registro; i++)
        {
            fila = Data.Tables[tabla].Rows[i];
            if (int.Parse(fila["carnetUSuario"].ToString()) == valor)//validacion valor encontrado
            {
                carnetUsuario = int.Parse(fila["carnetUsuario"].ToString());
                nombreCompleto = fila["nombreCompleto"].ToString();
                correoElectronico = fila["correoElectronico"].ToString();
                fechaNacimiento = fila["fechaNacimiento"].ToString();
                telefono = int.Parse(fila["telefono"].ToString());
                contraseña = fila["contraseña"].ToString();
                palabraClave = fila["palabraClave"].ToString();
                return true;
            }
        }return false;
    }

}