using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using Staff.Base;

namespace Staff.Data
{
    public class DataProvider
    {
        private static readonly string ConnectionString = ConfigurationManager.ConnectionStrings["SqlServerConnectionString"].ToString();

        #region Org

        public static List<Org> GetOrgs()
        {
            List<Org> orgs = new List<Org>();
            using (SqlConnection cn = new SqlConnection(ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("SELECT Id, Name, TaxNum, LegalAddress, RealAddress, Info FROM Orgs",
                    cn);
                cmd.CommandType = CommandType.Text;
                cn.Open();
                using (IDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Org org = new Org()
                        {
                            Id = (int) reader["Id"],
                            Name = reader["Name"].ToString(),
                            TaxNum = reader["TaxNum"].ToString(),
                            LegalAddress = reader["LegalAddress"].ToString(),
                            RealAddress = reader["RealAddress"].ToString(),
                            Info = reader["Info"].ToString()
                        };
                        orgs.Add(org);
                    }
                }
            }

            return orgs;
        }

        public static void InsertOrg(Org org)
        {
            using (SqlConnection cn = new SqlConnection(ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Orgs (Name, TaxNum, LegalAddress, RealAddress, Info)VALUES(@Name, @TaxNum, @LegalAddress, @RealAddress, @Info)", cn);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.Add("@Name", SqlDbType.NVarChar).Value = org.Name;
                cmd.Parameters.Add("@TaxNum", SqlDbType.NVarChar).Value = org.TaxNum;
                cmd.Parameters.Add("@LegalAddress", SqlDbType.NVarChar).Value = org.LegalAddress;
                cmd.Parameters.Add("@RealAddress", SqlDbType.NVarChar).Value = org.RealAddress;
                cmd.Parameters.Add("@Info", SqlDbType.NVarChar).Value = org.Info;
                cn.Open();
                cmd.ExecuteNonQuery();

            }
        }

        #endregion

        #region Employee
        public static List<Employee> GetEmployeesByOrgId(int orgId)
        {
            List<Employee> employees = new List<Employee>();
            using (SqlConnection cn = new SqlConnection(ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("SELECT Id, OrgId, LastName, FirstName, MiddleName, BirthDate, PassSerial, PassNum, Info FROM Employees WHERE OrgId = @OrgId", cn);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.Add("@OrgId", SqlDbType.Int).Value = orgId;
                cn.Open();
                IDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Employee employee = new Employee()
                    {
                        Id = (int)reader["Id"],
                        OrgId = (int)reader["OrgId"],
                    };

                    employee.LastName = reader.Read("LastName", employee.LastName);
                    employee.FirstName = reader.Read("FirstName", employee.FirstName);
                    employee.MiddleName = reader.Read("MiddleName", employee.MiddleName);
                    employee.BirthDate = reader.Read("BirthDate", employee.BirthDate);
                    employee.PassSerial = reader.Read("PassSerial", employee.PassSerial);
                    employee.PassNum = reader.Read("PassNum", employee.PassNum);
                    employee.Info = reader.Read("Info", employee.Info);
                    employees.Add(employee);
                }

                reader.Close();
                cn.Close();
            }
            return employees;
        }

        public static void InsertEmployee(Employee employee)
        {
            using (SqlConnection cn = new SqlConnection(ConnectionString))
            {
                SqlCommand cmd = new SqlCommand("INSERT INTO Employees (OrgId, LastName, FirstName, MiddleName, BirthDate, PassSerial, PassNum, Info)VALUES(@OrgId, @LastName, @FirstName, @MiddleName, @BirthDate, @PassSerial, @PassNum, @Info)", cn);
                cmd.CommandType = CommandType.Text;
                cmd.Parameters.Add("@OrgId", SqlDbType.Int).Value = employee.OrgId;
                cmd.AddNullableParameter("@LastName", SqlDbType.NVarChar, employee.LastName);
                cmd.AddNullableParameter("@FirstName", SqlDbType.NVarChar, employee.FirstName);
                cmd.AddNullableParameter("@MiddleName", SqlDbType.NVarChar, employee.MiddleName);
                cmd.AddNullableParameter("@BirthDate", SqlDbType.Date, employee.BirthDate);
                cmd.AddNullableParameter("@PassSerial", SqlDbType.NVarChar, employee.PassSerial);
                cmd.AddNullableParameter("@PassNum", SqlDbType.NVarChar, employee.PassNum);
                cmd.AddNullableParameter("@Info", SqlDbType.NVarChar, employee.Info);
                cn.Open();
                int ret = cmd.ExecuteNonQuery();

            }
        }

        #endregion
    }
}