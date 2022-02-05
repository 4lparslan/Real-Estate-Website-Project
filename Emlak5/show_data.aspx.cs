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
    public partial class show_data : System.Web.UI.Page
    {

        sql bgl = new sql();

        string prop_id;
        string veri;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlCommand cmdShowData = new SqlCommand("SELECT * FROM Properties",bgl.sqlBaglanti());
            SqlDataReader drShowData = cmdShowData.ExecuteReader();

            RepeaterShowData.DataSource = drShowData;
            RepeaterShowData.DataBind();

            //delete
            prop_id = Request.QueryString["property_id"];
            veri = Request.QueryString["veri"];

            if(veri == "sil")
            {
                SqlCommand cmdDel = new SqlCommand("DELETE FROM Properties WHERE property_id=@pid", bgl.sqlBaglanti());
                cmdDel.Parameters.AddWithValue("pid", prop_id);
                cmdDel.ExecuteNonQuery();
                Response.Redirect("show_data.aspx");
            }

        }
    }
}