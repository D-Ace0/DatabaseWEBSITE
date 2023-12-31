﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace eLibrary
{
    public partial class roomAv : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adminid"] ==null && Session["userid"] == null)
            {
                Response.Redirect("homepage.aspx");
            }
        }

        protected void RoomAvailability(object sender, EventArgs e)
        {
            string connStr = WebConfigurationManager.ConnectionStrings["HomeSync"].ToString();
            SqlConnection conn = new SqlConnection(connStr);

            SqlCommand RoomAvailability = new SqlCommand("RoomAvailability", conn);
            RoomAvailability.CommandType = CommandType.StoredProcedure;
            if(string.IsNullOrEmpty(location.Text) || string.IsNullOrEmpty(status.Text))
            {
                errorLabel.Text = "Please provide all parameters.";
                errorLabel.Visible = true;
                return;
            }

            RoomAvailability.Parameters.Add("@location", SqlDbType.Int).Value = int.Parse(location.Text);
            RoomAvailability.Parameters.Add("@status", SqlDbType.VarChar).Value = status.Text;

            try
            {
                conn.Open();
                RoomAvailability.ExecuteNonQuery();
                conn.Close();
                LabelVal.Text = "The room with id "+ location.Text +", is "+status.Text;
                errorLabel.Visible = false;
            }catch (Exception ex)
            {
                errorLabel.Text = ex.Message;
                errorLabel.Visible = true;
                return;
            }
        }
    }
}