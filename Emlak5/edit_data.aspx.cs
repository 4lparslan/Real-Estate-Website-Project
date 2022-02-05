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
    public partial class edit_data : System.Web.UI.Page
    {

        sql bgl = new sql();

        string property_id;
        string veri;

        protected void Page_Load(object sender, EventArgs e)
        {
            property_id = Request.QueryString["property_id"];
            veri = Request.QueryString["veri"];

            if (veri == "duzenle" && !Page.IsPostBack)
            {
                SqlCommand cmdEdit = new SqlCommand("SELECT * FROM Properties WHERE property_id=@pidd", bgl.sqlBaglanti());
                cmdEdit.Parameters.AddWithValue("pidd", property_id);

                SqlDataReader drEditData = cmdEdit.ExecuteReader();
                
                
                
            }

        }

      

        protected void Button1_ClickAddNewData(object sender, EventArgs e)
        {

        }
    }
}