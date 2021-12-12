using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;
using System.Data;

namespace examflight
{
    public class filemanagementsystem
    {
        private MySqlConnection con = null;
        public filemanagementsystem()
        {
            con = new MySqlConnection("server=localhost;userid=root;password=lucky2256;database=newappdb");
        }
        public bool addFlight(flight f)
        {
            bool chk = false;
            try
            {
                con.Open();
                MySqlCommand prdCmd = new MySqlCommand("insert into flight(flightid,source, destination, noofseats,flightfare) values(@fid, @src, @des, @nos,@ff)", con);
                prdCmd.Parameters.AddWithValue("@fid", f.Flightid);
                prdCmd.Parameters.AddWithValue("@src",f.Source);
                prdCmd.Parameters.AddWithValue("@des", f.Dest);
                prdCmd.Parameters.AddWithValue("@nos", f.Seat);
                prdCmd.Parameters.AddWithValue("@ff", f.Flightfare);
                prdCmd.ExecuteNonQuery();
                con.Close();
                chk = true;
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
            return chk;
        }

        public DataSet GetData()
        {
            MySqlDataAdapter ada = new MySqlDataAdapter("Select * from flight order by flightid Desc", con);
            DataSet dsPrd = new DataSet();
            ada.Fill(dsPrd, "flght");
            return dsPrd;
        }

    }
    
}