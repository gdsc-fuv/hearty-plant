using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.ServiceProcess;
using System.Text;
using System.Threading.Tasks;
using System.Timers;
using System.Drawing;
using ActUtlTypeLib;
using System.Data.SqlClient;
using System.Configuration;

namespace hearty_plant_service
{
    public partial class Service1 : ServiceBase
    {
        Timer timer = new Timer();
        public Service1()
        {
            InitializeComponent();
        }

        //Set up
        public ActUtlType plc = new ActUtlType();
        public string conString = "Data Source=PHANLANKHANH\\SQLEXPRESS;Initial Catalog=Hearty Plant Example;Integrated Security=True";

        protected override void OnStart(string[] args)
        {
            plc.ActLogicalStationNumber = 20;
            plc.Open();
            WriteToFile("Service is started at " + DateTime.Now);
            timer.Elapsed += new ElapsedEventHandler(OnElapsedTime);
            timer.Interval = 5000; //number in milisecinds  
            timer.Enabled = true;
        }

        protected override void OnStop()
        {
            WriteToFile("Service is stopped at " + DateTime.Now);
            plc.Close();
        }
        private void OnElapsedTime(object source, ElapsedEventArgs e)
        {
            WriteToFile("Service is recall at " + DateTime.Now);
            PushToSql();
        }
        public void WriteToFile(string Message)
        {
            string path = AppDomain.CurrentDomain.BaseDirectory + "\\Logs";
            if (!Directory.Exists(path))
            {
                Directory.CreateDirectory(path);
            }
            string filepath = AppDomain.CurrentDomain.BaseDirectory + "\\Logs\\ServiceLog_" + DateTime.Now.Date.ToShortDateString().Replace('/', '_') + ".txt";
            if (!File.Exists(filepath))
            {
                // Create a file to write to.   
                using (StreamWriter sw = File.CreateText(filepath))
                {
                    sw.WriteLine(Message);
                }
            }
            else
            {
                using (StreamWriter sw = File.AppendText(filepath))
                {
                    sw.WriteLine(Message);
                }
            }
        }
        
        public void PushToSql()
        {
            string input = "M1";
            int readInt;
            //plc.ReadDeviceBlock(input, 2, out readInt);
            plc.GetDevice(input, out readInt);

            SqlConnection connection = null;
            SqlCommand command = null;
            try
            {
                connection = new SqlConnection();
                connection = new SqlConnection(conString);
                connection.Open();
                if (connection.State == System.Data.ConnectionState.Open)
                {
                    string q = "INSERT INTO DataRecord VALUES ('" + null + "', '" + input + "', '" + readInt.ToString() + "')";
                    command = new SqlCommand(q, connection);
                    command.ExecuteNonQuery();
                }
            }

            catch (Exception ex)
            {
                WriteToFile("Exception of Insert:" + ex.ToString());
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
    
