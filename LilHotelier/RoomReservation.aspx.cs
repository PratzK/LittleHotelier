using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LilHotelier
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Go Button click event
        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        //user define get name event

        void getCustomerName()
        {

        }




        //Save Reservation event
        protected void SaveReservation_Click(object sender, EventArgs e)
        {

        }
    }
}