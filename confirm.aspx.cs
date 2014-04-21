using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;

public partial class confirm : System.Web.UI.Page
{
    private const string coursePage = "course.aspx";
    private const string courseListPage = "courselist.aspx";
    private const string loginPage = "login.aspx";
    private const string registerPage = "register.aspx";
    private const string userPage = "user.aspx";
    private const string homePage = "Default.aspx";
    private const string connString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True";
    
    protected void Page_Load(object sender, EventArgs e)
    {
        add_User();
    }

    private void add_User()
    {
        string nameAdd = Request.Form["username"];
        //string pswAdd = Request.Form["psw"];
        string pswAdd = FormsAuthentication.HashPasswordForStoringInConfigFile(Request.Form["psw"], "SHA1");
        string emailAdd = Request.Form["email"];
        string specIdAdd = Request.Form["spec"];
        string seleStr = Request.Form["selection"];
        string imgAdd = "/image/default.png";
        int count = seleStr.Length / 3;
        string [] seleAdd = new string[count];

        

        for ( int i = 0; i < count;i++)
        {
            seleAdd[i] = "EC" + seleStr.Substring(3*i, 3);
        }

        SqlConnection conn = new SqlConnection(connString);
        conn.Open();
        string cmdstr = "insert into PERSON (Name, Password, Email, Image_Url, Specialization_Id) values ('" + nameAdd + "','" + pswAdd + "','" + emailAdd + "','"+ imgAdd +"','" + specIdAdd + "')";
        SqlCommand cmd = new SqlCommand(cmdstr, conn);
        cmd.ExecuteNonQuery();
        conn.Close();

        string person_id = searchPerson_Id(nameAdd);

        for (int i = 0; i < count; i++)
        {
            addCourseToDatabase(person_id, seleAdd[i]);
        }

    }

    private void addCourseToDatabase(string person_Id, string courseCode)
    {
        SqlConnection conn = new SqlConnection(connString);
        conn.Open();
        string cmdstr = "select Id from COURSE where Code='"+courseCode+"'";
        SqlCommand cmd = new SqlCommand(cmdstr, conn);
        SqlDataReader rdr = cmd.ExecuteReader();
        string course_Id = "";
        while(rdr.Read())
        {
            course_Id = Convert.ToString(rdr["Id"]);
        }
        conn.Close();


        conn.Open();
        cmdstr = "insert into SELECTION (Person_Id, Course_Id) values ('"+person_Id+"','"+course_Id+"')";
        SqlCommand cmd1 = new SqlCommand(cmdstr, conn);
        cmd1.ExecuteNonQuery();
        conn.Close();
    }

    private string searchPerson_Id(string username)
    {
        SqlConnection conn = new SqlConnection(connString);
        conn.Open();
        string cmdstr = "select Id from PERSON where NAME='" + username + "'";
        SqlCommand cmd = new SqlCommand(cmdstr, conn);
        SqlDataReader rdr = cmd.ExecuteReader();
        string person_Id = "";
        while (rdr.Read())
        {
            person_Id = Convert.ToString(rdr["Id"]);
        }
        conn.Close();
        return person_Id;
    }

}
