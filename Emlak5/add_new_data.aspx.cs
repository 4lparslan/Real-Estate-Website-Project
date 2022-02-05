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
    public partial class add_new_data : System.Web.UI.Page
    {
        sql bgl = new sql();
        string img_path = "img\\ev\\ana\\";

        protected void Page_Load(object sender, EventArgs e)
        {
                success.Visible = false;
                fail.Visible = false;
            
        }

        protected void Button1_ClickAddNewData(object sender, EventArgs e)
        {
            SqlCommand cmdAddData = new SqlCommand("INSERT INTO Properties(category_id,agent_id,onSale,city,address,price," +
                "square_meter,number_of_floor,floor,bedroom,bathroom,garage,balcony,garden,air_condition,image) " +
                "values(@category,@agent,@onSale,@city,@address,@price,@sqm,@numFloor,@floor,@bedroom,@bathroom,@garage,@balcony," +
                "@garden,@airCon,@image) ", bgl.sqlBaglanti());


            switch (addCategory.Text)
            {
                case "Flat":
                    cmdAddData.Parameters.AddWithValue("category", 1);
                    break;
                case "Commercial":
                    cmdAddData.Parameters.AddWithValue("category", 2);
                    break;
                case "Apartment":
                    cmdAddData.Parameters.AddWithValue("category", 3);
                    break;
                case "House":
                    cmdAddData.Parameters.AddWithValue("category", 4);
                    break;
                case "Villa":
                    cmdAddData.Parameters.AddWithValue("category", 5);
                    break;
                case "Duplex":
                    cmdAddData.Parameters.AddWithValue("category", 6);
                    break;
            }

            switch (addAgent.Text)
            {
                case "Ali Başak":
                    cmdAddData.Parameters.AddWithValue("agent", 1);
                    break;
                case "Nazlı Sudan":
                    cmdAddData.Parameters.AddWithValue("agent", 2);
                    break;
                case "Alper Soyasız":
                    cmdAddData.Parameters.AddWithValue("agent", 3);
                    break;
                case "Görkem Kara":
                    cmdAddData.Parameters.AddWithValue("agent", 4);
                    break;
            }

            switch (addSituation.Text)
            {
                case "Sold Out (0)":
                    cmdAddData.Parameters.AddWithValue("onSale", 0);
                    break;
                case "For Rent (1)":
                    cmdAddData.Parameters.AddWithValue("onSale", 1);
                    break;
                case "On Sale (2)":
                    cmdAddData.Parameters.AddWithValue("onSale", 2);
                    break;
            }

            switch (addGarage.Checked)
            {
                case false:
                    cmdAddData.Parameters.AddWithValue("garage", 0);
                    break;
                case true:
                    cmdAddData.Parameters.AddWithValue("garage", 1);
                    break;
            }

            switch (addBalcony.Checked)
            {
                case false:
                    cmdAddData.Parameters.AddWithValue("balcony", 0);
                    break;
                case true:
                    cmdAddData.Parameters.AddWithValue("balcony", 1);
                    break;
            }

            switch (addGarden.Checked)
            {
                case false:
                    cmdAddData.Parameters.AddWithValue("garden", 0);
                    break;
                case true:
                    cmdAddData.Parameters.AddWithValue("garden", 1);
                    break;
            }

            switch (addAirCon.Checked)
            {
                case false:
                    cmdAddData.Parameters.AddWithValue("airCon", 0);
                    break;
                case true:
                    cmdAddData.Parameters.AddWithValue("airCon", 1);
                    break;
            }

            cmdAddData.Parameters.AddWithValue("city", addCity.Text);
            cmdAddData.Parameters.AddWithValue("address", addAddress.Text);
            cmdAddData.Parameters.AddWithValue("price", addPrice.Text);
            cmdAddData.Parameters.AddWithValue("sqm", addSqMeter.Text);
            cmdAddData.Parameters.AddWithValue("numFloor", addNumFloor.Text);
            cmdAddData.Parameters.AddWithValue("floor", addFloor.Text);
            cmdAddData.Parameters.AddWithValue("bedroom", addBedroom.Text);
            cmdAddData.Parameters.AddWithValue("bathroom", addBathroom.Text);
            cmdAddData.Parameters.AddWithValue("image", img_path + addImage.Text);

            cmdAddData.ExecuteNonQuery();
            Response.Redirect("add_new_data.aspx");
            /*
            if (dr.Read())
            {
                success.Visible = true;
                Response.Redirect("show_data.aspx");
            }
            else {
                fail.Visible = true;
            }
            */
        }

    }
}