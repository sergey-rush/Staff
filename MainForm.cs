using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CsvHelper;
using Staff.Base;
using Staff.Data;

namespace Staff
{
    public partial class MainForm : Form
    {
        private List<Org> orgs;
        private Org selectedOrg;
        private List<Employee> employees;
        public MainForm()
        {
            InitializeComponent();
        }

        private void btnLoad_Click(object sender, EventArgs e)
        {
            orgs = DataProvider.GetOrgs();
            dgvOrgs.DataSource = orgs;
        }

        private void btnImport_Click(object sender, EventArgs e)
        {
            if(selectedOrg is null)
                return;

            OpenFileDialog ofd = new OpenFileDialog
            {
                InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments),
                Title = "Browse Text Files",
                CheckFileExists = true,
                CheckPathExists = true,
                DefaultExt = "csv",
                Filter = "Text files (*.csv)|*.csv|All files (*.*)|*.*",
                RestoreDirectory = true
            };

            if (ofd.ShowDialog() == DialogResult.OK)
            {
                using (var reader = new StreamReader(ofd.FileName))
                using (var csv = new CsvReader(reader, CultureInfo.InvariantCulture))
                {
                    
                    var records = csv.GetRecords<Employee>().ToList();

                    foreach (Employee employee in records)
                    {
                        employee.OrgId = selectedOrg.Id;
                        DataProvider.InsertEmployee(employee);
                    }

                    UpdateEmployees();
                    var count = records.Count();
                    string msg = $"{count} строк успешно импортировано";
                    MessageBox.Show(msg, "Информация", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
        }

        private void btnExport_Click(object sender, EventArgs e)
        {
            var sfg = new SaveFileDialog();
            sfg.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.MyDocuments);
            sfg.FileName = "employees.csv";
            sfg.Filter = "Text files (*.csv)|*.txt|All files (*.*)|*.*";

            if (sfg.ShowDialog() == DialogResult.OK)
            {
                using (var writer = new StreamWriter(sfg.FileName))
                using (var csv = new CsvWriter(writer, CultureInfo.InvariantCulture))
                {
                    csv.WriteRecords(employees);
                }
            }
        }

        private void dgvOrgs_SelectionChanged(object sender, EventArgs e)
        {
            selectedOrg = (Org) dgvOrgs.CurrentRow?.DataBoundItem;

            UpdateEmployees();
        }

        private void UpdateEmployees()
        {
            if (selectedOrg != null)
            {
                employees = DataProvider.GetEmployeesByOrgId(selectedOrg.Id);

                if (employees != null && employees.Count > 0)
                {
                    dgvEmployees.DataSource = employees;
                    btnExport.Enabled = true;
                    btnImport.Enabled = true;
                }
            }
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }
    }
}
