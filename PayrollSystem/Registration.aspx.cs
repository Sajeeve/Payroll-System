using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{ 
  
    protected void Page_Load(object sender, EventArgs e)
    {
        if(IsPostBack)
        { 
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UsersConnectionString"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from Users where Email='"+ Email.Text +"'";
            SqlCommand com = new SqlCommand(checkuser,conn);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            conn.Close();
            if (temp == 1)
            {
                Response.Write("User already exists");
            }
        }
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            try
            {
                Guid newGUID = Guid.NewGuid();

                SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["UsersConnectionString"].ConnectionString);
                conn.Open();
                   
                    string adduser = "insert into Users (ID,UserName,Email,Password,Country) values (@id,@Uname,@email,@pw,@country)";
                    SqlCommand com = new SqlCommand(adduser, conn);

                    com.Parameters.AddWithValue("@id ", newGUID.ToString());
                    com.Parameters.AddWithValue("@Uname", UserName.Text);
                    com.Parameters.AddWithValue("@email", Email.Text);
                    com.Parameters.AddWithValue("@pw", Password.Text);
                    com.Parameters.AddWithValue("@country", Country.SelectedItem.ToString());

                    com.ExecuteNonQuery();
                    //Response.Write("Registration is successful !");
                    Response.Redirect("Login.aspx");
                    conn.Close();
                
            }
            catch (Exception ex)
            {
                Response.Write("Error:" + ex.ToString());
            }
        }
}