using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace Emlak5
{
    public class sql
    {
        public SqlConnection sqlBaglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-4G744U2\SQLEXPRESS;Initial Catalog=Emlak_Sitesi;Integrated Security=True");
            baglan.Open();
            SqlConnection.ClearPool(baglan);
            SqlConnection.ClearAllPools();
            return baglan;
        }
    }
}