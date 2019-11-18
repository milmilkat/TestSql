using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TestSql
{
    public partial class Form1 : Form
    {
        private string connectionString = @"Data Source=(localdb)\MSSQLLocalDB;Initial Catalog = TestDataBase; Integrated Security = True; Connect Timeout = 30; Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
        SqlConnection Con = new SqlConnection();
        DataTable TestTable = new DataTable();

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
        }


        private void loaddb()
        {
            //load datatable columns          
            datatablecolumns();

            using (SqlConnection connection = new SqlConnection(connectionString))
            { 
                //Ask a question
                string QueryString = @"SELECT * FROM TestTable order by ID";
                //Open your connection      
                connection.Open();        
                SqlCommand Command = new SqlCommand(QueryString, connection); 
                //Start your DB reader      
                SqlDataReader reader = Command.ExecuteReader();        
                while (reader.Read())      
                {
                    //add in each row to the datatable          
                    TestTable.Rows.Add(
                        reader["ID"],
                        reader["Name"]);   
                }  
                //Close your DB reader      
                reader.Close(); 
                //Close your connection       
                connection.Close();      
                //add the datatable to the Data Grid View      
                dataGridView1.DataSource = TestTable; }
            }

        public void datatablecolumns()
        {
            //clear the old data            
            TestTable.Clear();
            //add in the column titles to the datatable            
            try
            {
                TestTable.Columns.Add("ID");
                TestTable.Columns.Add("Name");
                TestTable.Columns.Add("Firstname");
                TestTable.Columns.Add("Surname");
                TestTable.Columns.Add("Gender");
                TestTable.Columns.Add("DOB");
                TestTable.Columns.Add("Street");
                TestTable.Columns.Add("Suburb");
                TestTable.Columns.Add("City");
                TestTable.Columns.Add("Available week days");
                TestTable.Columns.Add("Handicap");
            }
            catch(Exception e)
            {
                MessageBox.Show(e.Message);
            }

        }

        private void button1_Click(object sender, EventArgs e)
        {
            loaddb();
        }
    }
}
