using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace Maintenance
{
    public partial class WebForm16 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_send_Click(object sender, EventArgs e)
        {
            try
            {
                if (TextBox_id.Text == "" && TextBox_name.Text == "")
                {
                    Label_err.Text = "Most be add informations";
                }
                else
                {
                    SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=\\Mac\Home\Desktop\system\Maintenance\Maintenance\Maintenance\App_Data\maintenanceDB.mdf;Integrated Security=True");
                    con.Open();

                    SqlCommand com = new SqlCommand("insert into Staff values(@a,@b,@c,@d,@j,@e)", con);
                    com.Parameters.AddWithValue("@a", TextBox_id.Text);
                    com.Parameters.AddWithValue("@b", TextBox_name.Text);
                    com.Parameters.AddWithValue("@c", TextBox_pwd.Text);
                    com.Parameters.AddWithValue("@d", TextBox_email.Text);
                    com.Parameters.AddWithValue("@j", DropDownList1.Text);
                    com.Parameters.AddWithValue("@e", TextBox_mopile.Text);


                    com.ExecuteNonQuery();
                    Label_secc.Text = "The data has been send successfully";
                    con.Close();

                    Label_err.Text = "";
                    TextBox_id.Text = "";
                    TextBox_name.Text = "";
                    TextBox_pwd.Text = "";
                    TextBox_email.Text = "";
                    TextBox_mopile.Text = "";
                }
            }
            catch
            {
                Label_err.Text = "Error Id is repeated!";
            }
        }

        protected void Button_clear_Click(object sender, EventArgs e)
        {
            Label_secc.Text = "";
            Label_err.Text = "";
            TextBox_id.Text = "";
            TextBox_name.Text = "";
            TextBox_pwd.Text = "";
            TextBox_email.Text = "";
            TextBox_mopile.Text = "";
        }
    }
}