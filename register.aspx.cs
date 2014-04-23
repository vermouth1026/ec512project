using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;

public partial class register : System.Web.UI.Page
{
    private const string connString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True";

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void check_Click(object sender, EventArgs e)
    {
  
    }
    
    private bool checkIfExist(string s)
    {
        SqlConnection conn = new SqlConnection(connString);
        conn.Open();
        string cmdstr = "select * from PERSON where Name = '"+ s +"'";
        SqlCommand cmd = new SqlCommand(cmdstr, conn);
        SqlDataReader rdr = cmd.ExecuteReader();
        if(rdr.Read())
        {
            conn.Close();
            return true;

        }
        else
        {
            conn.Close();
            return false;
        }
    }
}
