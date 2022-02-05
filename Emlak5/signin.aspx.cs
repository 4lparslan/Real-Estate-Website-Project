using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Emlak5
{
    public partial class signin : System.Web.UI.Page
    {
        sql bgl = new sql();
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_ClickSignIn(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("SELECT * FROM Admin WHERE name=@p1 and password=@p2",bgl.sqlBaglanti());

            cmd.Parameters.AddWithValue("p1", uName.Text);
            cmd.Parameters.AddWithValue("p2", PassWord.Text);

            SqlDataReader dr = cmd.ExecuteReader();

            if (dr.Read())
                Response.Redirect("show_data.aspx");
            else
                failedSignIn.Text = "HATALI GİRİŞ";
        }
    }
}