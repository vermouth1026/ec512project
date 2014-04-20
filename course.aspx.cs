using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class course : System.Web.UI.Page
{
    private const string coursePage = "course.aspx";
    private const string courseListPage = "courselist.aspx";
    private const string loginPage = "login.aspx";
    private const string registerPage = "register.aspx";
    private const string userPage = "user.aspx";
    private const string homePage = "Default.aspx";
    private string c_id = "";
    private const string connString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True";

    protected void Page_Load(object sender, EventArgs e)
    {
        this.c_id = Request.QueryString["id"];
        Load_Upper();
        Load_Middle();
        //Load_Bottom();
    }

    private void Load_Upper()
    {
        SqlConnection conn = new SqlConnection(connString);
        conn.Open();
        string cmdstr = "select * from COURSE where COURSE.Code='" + c_id + "'"; 
        SqlCommand cmd = new SqlCommand(cmdstr, conn);
        SqlDataReader rdr = cmd.ExecuteReader();

        string courseCode = c_id;
        string courseID = "";

        while(rdr.Read())
        {
            courseID = Convert.ToString(rdr["Id"]);  // course ID not CODE!!!!

            string courseName = "Name: " + (string)rdr["Name"];
            string professor = "Professor: " + (string)rdr["Professor"];
            string score_o = "TOTAL<br>" + Convert.ToString(rdr["Score_Overall"]);
            string score_p = "Professor: " + Convert.ToString(rdr["Score_Professor"]);
            string score_c = "Contents:" + Convert.ToString(rdr["Score_Contents"]);
            string score_h = "Hardness:" + Convert.ToString(rdr["Score_Hardness"]);

            num.Text = courseCode;
            name.Text = courseName;
            prof.Text = professor;
            score0.Text = score_o;
            score1.Text = score_p;
            score2.Text = score_c;
            score2.Text = score_h;
        }
        
        conn.Close();
        
        conn.Open();
        cmdstr = "select Specialization_Id from COURSE_SPECIALIZATION where Course_Id='" + courseID + "'";
        SqlCommand cmd1 = new SqlCommand(cmdstr, conn);        
        SqlDataReader rdr1 = cmd1.ExecuteReader();
        string specID = "";
        while (rdr1.Read())
        {
            specID = Convert.ToString(rdr1["Specialization_Id"]);
        }
        conn.Close();

        conn.Open();
        cmdstr = "select Name from SPECIALIZATION where Id='" + specID + "'";
        SqlCommand cmd2 = new SqlCommand(cmdstr, conn);
        SqlDataReader rdr2 = cmd2.ExecuteReader();
        string specName = "";
        while (rdr2.Read())
        {
            specName = Convert.ToString(rdr2["Name"]);
        }
        conn.Close();

        spec.Text = "Specialization: " + specName;        
    }

    private void Load_Middle()
    {
        int dis_num = 3;
        SqlConnection conn = new SqlConnection(connString);
        conn.Open();
        string cmdstr = "select c.Comments,c.Email,c.Image_Url,c.Person_Id,c.Name,COURSE.Code,COURSE.Name as Course_Name,COURSE.Score_Overall from ((select a.Course_Id,a.Comments,a.Datetime,a.Person_Id,b.Email,b.Name,b.Image_Url from RATING a inner join PERSON b on a.Person_Id=b.Id ) c inner join COURSE on COURSE.Id=c.Course_Id) where COURSE.Code='" + c_id + "' order by c.Datetime desc";
        SqlCommand cmd = new SqlCommand(cmdstr, conn);
        SqlDataReader rdr = cmd.ExecuteReader();
        int i = 0;
        string[] courseCode = new string[dis_num];
        string[] courseName = new string[dis_num];
        string[] text = new string[dis_num];
        string[] score = new string[dis_num];
        string[] student_name = new string[dis_num];
        string[] email = new string[dis_num];
        string[] profile = new string[dis_num];
        string[] student_id = new string[dis_num];
        string[] name_link = new string[dis_num];
        string[] course_link = new string[dis_num];
        string[] img_pos = new string[dis_num];
        string[] img = new string[dis_num];
        string[] info = new string[dis_num];

        while (rdr.Read() && i < dis_num)
        {
            courseCode[i] = (string)rdr["Code"];
            courseName[i] = (string)rdr["Course_Name"];
            text[i] = (string)rdr["Comments"];
            score[i] = Convert.ToString(rdr["Score_Overall"]);
            student_name[i] = (string)rdr["Name"];
            email[i] = (string)rdr["Email"] + "@bu.edu";
            img_pos[i] = (string)rdr["Image_Url"];
            student_id[i] = Convert.ToString(rdr["Person_Id"]);
            i++;
        }


        for (int j = 0; j < dis_num; j++)
        {
            img[j] = "<img src=\"" + img_pos[j] + "\" alt=\"profile\" width = 150 />";
            name_link[j] = "<a href = \"user.aspx?id=" + student_id[j] + "\" > " + student_name[j] + "</a>";
            course_link[j] = coursePage + "?id=" + courseCode[j];
            info[j] = img[j] + "</br>" + name_link[j] + "</br>" + email[j];
        }

        conn.Close();

        profile1.InnerHtml = info[0];
        rcc1.Text = courseCode[0] + " " + courseName[0];
        rcs1_0.Text = score[0];
        comment1.Text = text[0];


        profile2.InnerHtml = info[1];
        rcc2.Text = courseCode[1] + " " + courseName[1];
        rcs2_0.Text = score[1];
        comment2.Text = text[1];



        profile3.InnerHtml = info[2];
        rcc3.Text = courseCode[2] + " " + courseName[2];
        rcs3_0.Text = score[2];
        comment3.Text = text[2];
    }

    private void Load_Bottom()
    {

    }
}
