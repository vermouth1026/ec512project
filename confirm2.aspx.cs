using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;

public partial class confirm2 : System.Web.UI.Page
{

    private string c_id = null;
    private string usern = "";
    private const string connString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True";

    protected void Page_Load(object sender, EventArgs e)
    {

        usern = User.Identity.Name;

        if (Request.Form["rate0"] != null)
        {
            c_id = Request.Form["cnum"];
            Info_Insert();   //data insert
        }
        dashuibi.HRef = "course.aspx?id=" + c_id;
    }

    private void Info_Insert()
    {
        SqlConnection conn = new SqlConnection(connString);
        conn.Open();

        string cmdstr = "select Id from COURSE where Code='" + c_id + "'";
        SqlCommand cmd = new SqlCommand(cmdstr, conn);
        SqlDataReader rdr = cmd.ExecuteReader();
        string courseId = "";   //"course_id"        
        while (rdr.Read())
        {
            courseId = Convert.ToString(rdr["Id"]);
        }
        conn.Close();

        conn.Open();
        cmdstr = "select Id from PERSON where Name='" + usern + "'";
        SqlCommand cmd1 = new SqlCommand(cmdstr, conn);
        SqlDataReader rdr1 = cmd1.ExecuteReader();
        string personId = "";   //"person_id"
        while (rdr1.Read())
        {
            personId = Convert.ToString(rdr1["Id"]);
        }
        conn.Close();

        string comments = Request.Form["review"];
        string score0 = Request.Form["rate0"];
        string score1 = Request.Form["rate1"];
        string score2 = Request.Form["rate2"];
        string score3 = Request.Form["rate3"];



        conn.Open();
        cmdstr = "insert into RATING (Person_id, Course_id, Comments, Score_Overall, Score_Professor, Score_Contents, Score_Hardness) " +
 "values ('" + personId + "', '" + courseId + "', '" + comments + "', '" + score0 + "','" + score1 + "','" + score2 + "','" + score3 + "')";
        SqlCommand cmd2 = new SqlCommand(cmdstr, conn);
        cmd2.ExecuteNonQuery();
        conn.Close();

        conn.Open();
        cmdstr = "update COURSE set Score_Overall = (Score_Overall*Comment_Count+'" + score0 + "')/(Comment_Count+1),   Score_Professor = (Score_Professor*Comment_Count+'" + score1 + "')/(Comment_Count+1),   Score_Contents = (Score_Contents*Comment_Count+'" + score2 + "')/(Comment_Count+1),   Score_Hardness = (Score_Hardness*Comment_Count+'" + score3 + "')/(Comment_Count+1), Comment_Count = Comment_Count+1 where Id='" + courseId + "'";

        //cmdstr = "update COURSE set Comment_Count = Comment_Count+1 where Id='" + courseId + "'";
        SqlCommand cmd3 = new SqlCommand(cmdstr, conn);
        cmd3.ExecuteNonQuery();
        conn.Close();

    }
}
