using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Maintenance
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=\\Mac\Home\Desktop\system\Maintenance\Maintenance\Maintenance\App_Data\maintenanceDB.mdf;Integrated Security=True");
            con.Open();
            SqlCommand com;
            if (DropDownList1.Text == "-- Select --")
            {
                Label1.Text = "Select your position!";
            }
            else 
            {
                if (DropDownList1.Text == "Admin")
                {
                    com = new SqlCommand("select * from Admin where id='" + TextBox1.Text + "' and pwd='" + TextBox2.Text + "' ", con);
                    SqlDataReader r = com.ExecuteReader();
                    if (r.Read() == true)
                    {
                        Session["id"] = TextBox1.Text;
                        Response.Redirect("adminPage.aspx");
                    }
                    else
                    {
                        Label1.Text = "Error passord or user name !";
                    }

                }
                else if (DropDownList1.Text == "Engneer")
                {
                    com = new SqlCommand("select * from Engineer where Id_eng='" + TextBox1.Text + "' and pwd='" + TextBox2.Text + "' ", con);
                    SqlDataReader r = com.ExecuteReader();
                    if (r.Read() == true)
                    {
                        Session["id"] = TextBox1.Text;
                        Response.Redirect("engneerPage.aspx");
                    }
                    else
                    {
                        Label1.Text = "Error passord or user name !";
                    }
                }
                else if (DropDownList1.Text == "Staff")
                {
                    com = new SqlCommand("select * from Staff where Id_staff='" + TextBox1.Text + "' and pwd='" + TextBox2.Text + "' ", con);
                    SqlDataReader r = com.ExecuteReader();
                    if (r.Read() == true)
                    {
                        Session["id"] = TextBox1.Text;
                        Response.Redirect("staffPage.aspx");
                    }
                    else
                    {
                        Label1.Text = "Error passord or user name !";
                    }
                }

            }


        }
    }
}