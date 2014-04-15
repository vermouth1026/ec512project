using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class _Default : System.Web.UI.Page
{



    private const string connString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(connString);
        conn.Open();
        string cmdstr = "select * from COURSE order by Cmt_Num desc";
        SqlCommand cmd = new SqlCommand(cmdstr, conn);
        SqlDataReader rdr = cmd.ExecuteReader();
        string output = "";
        int i = 0;
        while (rdr.Read() && i < 5)
        {
            string s = "<a href=#>" + (string)rdr["Name"] + "</a>";
            output = output + s + "<br>";
            i++;
        }
        conn.Close();

        logo.InnerHtml = output;
    }
}