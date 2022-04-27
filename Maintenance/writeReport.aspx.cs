using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Maintenance
{
    public partial class WebForm10 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label_reqid.Text = GridView1.SelectedValue.ToString();
            Label_date.Text = DateTime.Now.ToShortDateString();
            Label_engid.Text = Session["id"].ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "")
            {
                Label_err.Text = "Write Report!";
            }
            else
            {
                SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=\\Mac\Home\Desktop\system\Maintenance\Maintenance\Maintenance\App_Data\maintenanceDB.mdf;Integrated Security=True");
                con.Open();

                SqlCommand com = new SqlCommand("insert into Report values(@a,@date,@b,@c)", con);
                com.Parameters.AddWithValue("@a", TextBox1.Text);
                com.Parameters.AddWithValue("@date", DateTime.Parse(Label_date.Text));
                com.Parameters.AddWithValue("@b", Label_reqid.Text);
                com.Parameters.AddWithValue("@c", Session["id"].ToString());

                com.ExecuteNonQuery();
                Label_send.Text = "The data has been send successfully";

                TextBox1.Text = "";
                Label_date.Text = "";
                Label_engid.Text = "";
                Label_reqid.Text = "";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            Label_date.Text = "";
            Label_engid.Text = "";
            Label_reqid.Text = "";
            Label_send.Text = "";
            Label_err.Text = "";
        }
    }
}