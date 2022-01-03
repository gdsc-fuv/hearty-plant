using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ActUtlTypeLib;
using System.Data.SqlClient;
using System.Configuration;

namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }
        public ActUtlType plc = new ActUtlType();
        private void Form1_Load(object sender, EventArgs e)
        {

        }

        public string conString = "Data Source=PHANLANKHANH\\SQLEXPRESS;Initial Catalog=Hearty Plant Example;Integrated Security=True";

        //Connect button
        private void button3_Click(object sender, EventArgs e)
        {
            plc.ActLogicalStationNumber = 20;
            plc.Open();

        }

        //Disconnect button
        private void button4_Click(object sender, EventArgs e)
        {
            plc.Close();
        }

        //Read button
        private void button1_Click(object sender, EventArgs e)
        {
            int readInt;
            //plc.ReadDeviceBlock(textAddress.Text, 2, out readInt);
            plc.GetDevice("M1", out readInt);
            textValue.Text = readInt.ToString();
        }

        //Write button
        private void button2_Click(object sender, EventArgs e)
        {
            plc.SetDevice(textAddress.Text, Convert.ToInt16(textValue.Text));
        }

        // SQL button
        private void button5_Click(object sender, EventArgs e)
        {
            SqlConnection connection = null;
            SqlCommand command = null;
            try
            {
                connection = new SqlConnection();
                int n = 0;
                connection = new SqlConnection(conString);
                connection.Open();
                if (connection.State == System.Data.ConnectionState.Open)
                {
                    string q = "INSERT INTO DataRecord VALUES ('" + null + "', '" + textAddress.Text.ToString() + "', '" + textValue.Text.ToString() + "')";
                    command = new SqlCommand(q, connection);
                    command.ExecuteNonQuery();
                    MessageBox.Show("Connect made Successfully!");
                }
            }

            catch (Exception ex)
            {
                //WriteToFile("Exception of Insert:" + ex.ToString());
                throw ex;
            }
            finally
            {
                command.Dispose();
                connection.Dispose();
            }

        }
    }
}
