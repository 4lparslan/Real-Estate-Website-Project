using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Web.Configuration;
using System.Data.SqlClient;


namespace Emlak5
{
    public partial class index : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-4G744U2\SQLEXPRESS;Initial Catalog=Emlak_Sitesi;Integrated Security=True");

        protected void Button1_Click1(object sender, EventArgs e)
        {
            
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
    }
}