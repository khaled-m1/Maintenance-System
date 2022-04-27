using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Maintenance
{
    public partial class WebForm15 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label_date.Text = DateTime.Now.ToShortDateString();
            Label_engid.Text = Session["id"].ToString();
        }

        protected void Button_send_Click(object sender, EventArgs e)
        {
            try
            {
                if (TextBox1.Text == "")
                {
                    Label_err.Text = "Most be add informations";
                }
                else
                {
                    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=\\Mac\Home\Desktop\system\Maintenance\Maintenance\Maintenance\App_Data\maintenanceDB.mdf;Integrated Security=True");
                    con.Open();

                    SqlCommand com = new SqlCommand("insert into Comment values(@a,@date,@b,@c)", con);
                    com.Parameters.AddWithValue("@a", TextBox1.Text);
                    com.Parameters.AddWithValue("@date", DateTime.Parse(Label_date.Text));
                    com.Parameters.AddWithValue("@b", Label_reqid.Text);
                    com.Parameters.AddWithValue("@c", Label_engid.Text);


                    com.ExecuteNonQuery();
                    Label_secc.Text = "The data has been send successfully";
                    con.Close();

                    Label_err.Text = "";
                    Label_engid.Text = "";
                    Label_reqid.Text = "";
                    TextBox1.Text = "";
                }
            }
            catch
            {
                Label_err.Text = "Error!";
            }
        }

        protected void Button_new_Click(object sender, EventArgs e)
        {
            Label_err.Text = "";
            Label_engid.Text = "";
            Label_reqid.Text = "";
            TextBox1.Text = "";
            Label_secc.Text = "";
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Label_reqid.Text = GridView1.SelectedValue.ToString();
        }
    }
}