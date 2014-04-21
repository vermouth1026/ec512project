using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;

public partial class courselist : System.Web.UI.Page
{

    private const string connString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (User.Identity.IsAuthenticated)
        {
            navi1.Visible = false;
            navi2.Visible = true;
            greeting.Text = "Hello," + User.Identity.Name + "!";
            string personId = getPersonId(User.Identity.Name);
            mypage.NavigateUrl = "user.aspx?id=" + personId;

        }
        else
        {
            navi1.Visible = true;
            navi2.Visible = false;
        }
    }
    protected void logout_Click(object sender, EventArgs e)
    {
        FormsAuthentication.SignOut();
        navi1.Visible = true;
        navi2.Visible = false;
    }

    private string getPersonId(string personName)
    {
        SqlConnection conn = new SqlConnection(connString);
        conn.Open();
        string cmdstr = "select Id from PERSON where Name='" + personName + "'";
        SqlCommand cmd = new SqlCommand(cmdstr, conn);
        SqlDataReader rdr = cmd.ExecuteReader();
        string personId = "";
        while (rdr.Read())
        {
            personId = Convert.ToString(rdr["Id"]);
        }
        conn.Close();
        return personId;
    }
}
