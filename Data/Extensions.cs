using System;
using System.Data;
using System.Data.SqlClient;

namespace Staff.Data
{
    public static class Extensions
    {
        public static void AddNullableParameter<T>(this SqlCommand cmd, string name, SqlDbType type, T value)
        {
            if (value == null)
            {
                cmd.Parameters.Add(name, type).Value = DBNull.Value;
            }
            else
            {
                cmd.Parameters.Add(name, type).Value = value;
            }
        }

        public static T Read<T>(this IDataReader reader, string name, T value)
        {
            if (name == null) throw new ArgumentNullException(nameof(name));

            if (reader[name] != DBNull.Value)
            {
                value = (T)reader[name];
            }

            return value;
        }
    }
}