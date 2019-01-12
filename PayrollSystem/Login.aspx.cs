using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
   
    protected void LoginButton_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UsersConnectionString"].ConnectionString);
        conn.Open();

        string getUser = "select count(*) from Users where Email='"+Email.Text+"'";
        SqlCommand com = new SqlCommand(getUser, conn);

        int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
        conn.Close();

        if (temp == 1)
        {
            conn.Open();
            string checkpw = "select Password from Users where Email='" +Email.Text+ "'";
            SqlCommand com_pass = new SqlCommand(checkpw, conn);
            string pw = com_pass.ExecuteScalar().ToString().Replace(" ","");
            conn.Close();
            if (pw == Password.Text)
            {
                Session["New"] = Email.Text;
                Response.Redirect("UserProfile.aspx");
            }
            else
            {
                Response.Write("Password is incorrect");
            }

        }

        else
        {
            Response.Write("U r not registered");
        }
         
    }
}