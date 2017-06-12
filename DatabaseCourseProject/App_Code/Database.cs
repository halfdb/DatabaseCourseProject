using System;
using System.Collections.Generic;
using System.Data.SqlClient;

/// <summary>
/// Summary description for Database
/// </summary>

public class Database : IDisposable
{
    public static Database DatabaseInstance = new Database("server=.;database=Jindong;integrated security=SSPI;");

    protected SqlConnection Connection;
    private Database(string connectionString)
    {
        Connection = new SqlConnection(connectionString);
    }

    public SqlDataReader Execute(SqlCommand command)
    {
        if (Connection.State != System.Data.ConnectionState.Open)
        {
            Connection.Open();
        }
        command.Connection = Connection;
        return command.ExecuteReader();
    }

    public IList<object> ExecuteFirstRow(SqlCommand command)
    {
        var result = new List<object>();
        var reader = Execute(command);
        if (reader.Read())
        {
            for (var i = 0; i < reader.FieldCount; i++)
            {
                result.Add(reader[i]);
            }
        }
        reader.Close();
        return result;
    }

    public void Dispose()
    {
        Connection.Dispose();
    }
}