using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;

public partial class course : System.Web.UI.Page
{
    private const string coursePage = "course.aspx";
    private const string courseListPage = "courselist.aspx";
    private const string loginPage = "login.aspx";
    private const string registerPage = "register.aspx";
    private const string userPage = "user.aspx";
    private const string homePage = "Default.aspx";
    private string c_id = null;
    private int total_num = 0;

    private bool cmted = false;
    private bool auth = false;
    private string usern = "";

    private const string connString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True";

    protected void Page_Load(object sender, EventArgs e)
    {
        this.c_id = Request.QueryString["id"];
        usern = User.Identity.Name;

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



       
        decidepag_num();
        /*if (Request.Form["rate0"] != null)
        {
            c_id = Request.Form["cnum"];
            Info_Insert();   //data insert
        }*/
        check_comt();
        auth = User.Identity.IsAuthenticated;
        if (cmted || !auth)
        {
            myReview.Visible = false;
        }
        else
        {
            Load_Bottom();
        }
        Load_Upper();
        Load_Middle();
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

        while (rdr.Read())
        {
            courseID = Convert.ToString(rdr["Id"]);  // course ID not CODE!!!!

            string courseName = "Name: " + (string)rdr["Name"];
            string professor = "Professor: " + (string)rdr["Professor"];
            string score_o = "TOTAL<br>" + Convert.ToString(rdr["Score_Overall"]);
            string score_p = "Professor: " + Convert.ToString(rdr["Score_Professor"]);
            string score_c = "Contents:" + Convert.ToString(rdr["Score_Contents"]);
            string score_h = "Hardness:" + Convert.ToString(rdr["Score_Hardness"]);
            string disp = (string)rdr["Abstract"];

            num.Text = courseCode.ToUpper();
            name.Text = courseName;
            prof.Text = professor;
            score0.Text = score_o;
            score1.Text = score_p;
            score2.Text = score_c;
            score3.Text = score_h;
            description.InnerText = disp;
        }

        conn.Close();

        conn.Open();
        cmdstr = "select Specialization_Id from COURSE_SPECIALIZATION where Course_Id='" + courseID + "'";
        SqlCommand cmd1 = new SqlCommand(cmdstr, conn);
        SqlDataReader rdr1 = cmd1.ExecuteReader();
        string specID = "";
        while (rdr1.Read())
        {
            specID = specID + Convert.ToString(rdr1["Specialization_Id"]);
        }
        conn.Close();

        string specName = "";
        string specText = "";
        for (int i = 0; i < specID.Length; i++)
        {
            conn.Open();
            cmdstr = "select Name from SPECIALIZATION where Id='" + specID[i] + "'";
            SqlCommand cmd2 = new SqlCommand(cmdstr, conn);
            SqlDataReader rdr2 = cmd2.ExecuteReader();
            while (rdr2.Read())
            {
                specName = Convert.ToString(rdr2["Name"]);
            }
            conn.Close();
            specText = specText + specName + " &nbsp &nbsp &nbsp";
        }
        spec.Text = "Specialization: " + specText;
    }

    private void Load_Middle()
    {
        int dis_num = 3;
        SqlConnection conn = new SqlConnection(connString);
        conn.Open();
        string cmdstr = "select c.Comments,c.Email,c.Image_Url,c.Person_Id,c.Name,COURSE.Code,COURSE.Name as Course_Name,COURSE.Score_Overall,COURSE.Score_Professor,COURSE.Score_Contents,COURSE.Score_Hardness from ((select a.Course_Id,a.Comments,a.Datetime,a.Person_Id,b.Email,b.Name,b.Image_Url from RATING a inner join PERSON b on a.Person_Id=b.Id ) c inner join COURSE on COURSE.Id=c.Course_Id) where COURSE.Code='" + c_id + "' order by c.Datetime desc";
        SqlCommand cmd = new SqlCommand(cmdstr, conn);
        SqlDataReader rdr = cmd.ExecuteReader();
        int i = 0;
        string[] courseCode = new string[dis_num];
        string[] courseName = new string[dis_num];
        string[] text = new string[dis_num];
        string[] score0 = new string[dis_num];
        string[] score1 = new string[dis_num];
        string[] score2 = new string[dis_num];
        string[] score3 = new string[dis_num];
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
            score0[i] = Convert.ToString(rdr["Score_Overall"]).Substring(0, 1);
            score1[i] = Convert.ToString(rdr["Score_Professor"]).Substring(0, 1);
            score2[i] = Convert.ToString(rdr["Score_Contents"]).Substring(0, 1);
            score3[i] = Convert.ToString(rdr["Score_Hardness"]).Substring(0, 1);

            student_name[i] = (string)rdr["Name"];
            email[i] = (string)rdr["Email"] + "@bu.edu";
            img_pos[i] = (string)rdr["Image_Url"];
            student_id[i] = Convert.ToString(rdr["Person_Id"]);
            i++;
        }


        for (int j = 0; j < dis_num; j++)
        {
            img[j] = "<img src=\"" + img_pos[j] + "\" alt=\"profile\" width = 120 />";
            name_link[j] = "<a href = \"user.aspx?id=" + student_id[j] + "\" > " + student_name[j] + "</a>";
            course_link[j] = coursePage + "?id=" + courseCode[j];
            info[j] = img[j] + "</br>" + name_link[j] + "</br>" + email[j];
        }

        conn.Close();

        switch (i)
        {
            case 0: { review1.Visible = false; review2.Visible = false; review3.Visible = false; break; }
            case 1: { review2.Visible = false; review3.Visible = false; break; }
            case 2: { review3.Visible = false; break; }
            default: break;
        }


        profile1.InnerHtml = info[0];
        rcc1.Text = courseCode[0] + " " + courseName[0];
        rcs1_0.Text = "&nbsp Total: " + score0[0] + " &nbsp";
        rcs1_1.Text = "&nbsp Prof: " + score1[0] + " &nbsp";
        rcs1_2.Text = "&nbsp Cont: " + score2[0] + " &nbsp";
        rcs1_3.Text = "&nbsp Hard: " + score3[0] + " &nbsp";
        comment1.Text = text[0];

        profile2.InnerHtml = info[1];
        rcc2.Text = courseCode[1] + " " + courseName[1];
        rcs2_0.Text = "&nbsp Total: " + score0[1] + " &nbsp";
        rcs2_1.Text = "&nbsp Prof: " + score1[1] + " &nbsp";
        rcs2_2.Text = "&nbsp Cont: " + score2[1] + " &nbsp";
        rcs2_3.Text = "&nbsp Hard: " + score3[1] + " &nbsp";
        comment2.Text = text[1];

        profile3.InnerHtml = info[2];
        rcc3.Text = courseCode[2] + " " + courseName[2];
        rcs3_0.Text = "&nbsp Total: " + score0[2] + " &nbsp";
        rcs3_1.Text = "&nbsp Prof: " + score1[2] + " &nbsp";
        rcs3_2.Text = "&nbsp Cont: " + score2[2] + " &nbsp";
        rcs3_3.Text = "&nbsp Hard: " + score3[2] + " &nbsp";
        comment3.Text = text[2];
    }

    private void Load_Bottom()
    {

        SqlConnection conn = new SqlConnection(connString);
        conn.Open();
        string cmdstr = "select * from PERSON where Name='" + usern + "'";
        SqlCommand cmd = new SqlCommand(cmdstr, conn);
        SqlDataReader rdr = cmd.ExecuteReader();
        string img = null;
        string name_link = null;
        string email = null;
        while (rdr.Read())
        {
            img = "<img src=\"" + (string)rdr["Image_Url"] + "\" alt=\"profile\" width = 120 />";
            name_link = (string)rdr["Name"];
            email = (string)rdr["Email"];
        }
        conn.Close();
        profile0.InnerHtml = img + "<br>" + name_link + "<br>" + email + "@bu.edu";
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

    private void decidepag_num()
    {
        SqlConnection conn = new SqlConnection(connString);
        conn.Open();
        string cmdstr = "select Distinct Comment_Count from (select c.Comment_Count,r.Person_Id,r.Comments,r.Score_Contents,r.Score_Hardness,r.Score_Overall,r.Score_Professor from RATING r inner join COURSE c on r.Course_Id=c.Id where c.Code='" + c_id + "') c inner join PERSON p on c.Person_Id=p.Id";
        SqlCommand cmd = new SqlCommand(cmdstr, conn);
        SqlDataReader rdr = cmd.ExecuteReader();
        while (rdr.Read())
        {
            total_num = (int)rdr["Comment_Count"];
        }
        conn.Close();

        if (total_num <= 3)
        {
            buttons.Visible = false;
        } if (total_num > 3 && total_num <= 6)
        {
            corner.Value = "last";
        }

    }

    private void check_comt()
    {
        SqlConnection conn = new SqlConnection(connString);
        conn.Open();
        string cmdstr = "select *from (select r.Person_Id from RATING r inner join COURSE c on r.Course_Id=c.Id where c.Code='" + c_id + "') a inner join PERSON p on a.Person_Id=p.Id where p.Name='" + usern + "'";
        SqlCommand cmd = new SqlCommand(cmdstr, conn);
        SqlDataReader rdr = cmd.ExecuteReader();
        string check = "";
        while (rdr.Read())
        {
            check = (string)rdr["Name"];
        }
        if (check != "")
        {
            cmted = true;
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
