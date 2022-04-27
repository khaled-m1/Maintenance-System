using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Maintenance
{
    public partial class WebForm13 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label_date.Text = DateTime.Now.ToShortDateString();
            Label_staff.Text = Session["id"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.Text == "-- Select --")
            {
                Label_error.Text = "Error! Select Type of Request";
            }
            else {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=\\Mac\Home\Desktop\system\Maintenance\Maintenance\Maintenance\App_Data\maintenanceDB.mdf;Integrated Security=True");
                con.Open();

                SqlCommand com = new SqlCommand("insert into Request values(@t,@d,@date,'New',@sf)", con);
                com.Parameters.AddWithValue("@t", DropDownList1.Text);
                com.Parameters.AddWithValue("@d", TextBox1.Text);
                com.Parameters.AddWithValue("@date", DateTime.Parse(Label_date.Text));
                com.Parameters.AddWithValue("@sf", Session["id"].ToString());

                com.ExecuteNonQuery();
                Label_secc.Text = "The data has been send successfully";
                Clear();
            }
        }
        protected void Clear()
        {
            DropDownList1.Text = "-- Select --";
            TextBox1.Text = "";
            Label_error.Text = "";

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Clear();
            Label_secc.Text = "";
            Label_error.Text = "";
        }
    }
}