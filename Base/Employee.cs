using System;

namespace Staff.Base
{
    public class Employee
    {
        public int Id { get; set; }
        public int OrgId { get; set; }
        public string LastName { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public DateTime? BirthDate { get; set; }
        public string PassSerial { get; set; }
        public string PassNum { get; set; }
        public string Info { get; set; }
    }
}