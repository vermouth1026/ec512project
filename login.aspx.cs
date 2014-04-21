using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;



public partial class login : System.Web.UI.Page
{

    private const string connString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True";


    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void submit_Click(object sender, EventArgs e)
    {
        try  //catches blank User name
        {
            string existId = null;
            string existPsw = null;
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            string cmdstr = "select * from PERSON where Name='" + username.Text + "'";
            SqlCommand cmd = new SqlCommand(cmdstr, conn);
            SqlDataReader rdr = cmd.ExecuteReader();
            if(!rdr.Read())
            {
                error.Text = "Username doesn't exist!";
            }
            else
            {
                existId = Convert.ToString(rdr["Id"]);
                existPsw = (string)(rdr["Password"]);
            }

            string hashpass = FormsAuthentication.HashPasswordForStoringInConfigFile(password.Text, "SHA1");

            if(hashpass.Equals(existPsw))
            {
                FormsAuthentication.RedirectFromLoginPage(username.Text, false);
                error.Text = "Login OK.";
                return;
            }
        }
        catch
        {
            //Not authenticated
        }
        error.Text = "Login failed.";
    }
}
