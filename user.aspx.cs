using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.SqlClient;

public partial class user : System.Web.UI.Page
{
    private const string coursePage = "course.aspx";
    private const string courseListPage = "courselist.aspx";
    private const string loginPage = "login.aspx";
    private const string registerPage = "register.aspx";
    private const string userPage = "user.aspx";
    private const string homePage = "Default.aspx";

    private string userId = "0";

    private const string connString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True";

    protected void Page_Load(object sender, EventArgs e)
    {
        this.userId = Request.QueryString["id"];

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


        Load_UpperLeft();
        Load_UpperRight();
        Load_Middle();
        Load_Bottom();
    }

    private void Load_UpperLeft()
    {
        SqlConnection conn = new SqlConnection(connString);
        conn.Open();
        string cmdstr = "select p.Name, p.Email, p.Image_Url,s.Name as specialization from PERSON p inner join SPECIALIZATION s on p.Specialization_Id=s.Id where p.Id='" + userId + "'"; 
        SqlCommand cmd = new SqlCommand(cmdstr, conn);
        SqlDataReader rdr = cmd.ExecuteReader();

        string imgPos = "/image/default.png";
        string nameDisplay = "";
        string emailDisplay = "";
        string specDisplay = "";
        while (rdr.Read())
        {
            imgPos = (string)rdr["Image_Url"];
            nameDisplay = (string)rdr["Name"];
            emailDisplay = (string)rdr["Email"];
            specDisplay = (string)rdr["specialization"];
        }

        myimg.ImageUrl = imgPos;
        name.Text = nameDisplay;
        email.Text = emailDisplay + "@bu.edu";
        spec.Text = specDisplay;
    }

    private void Load_UpperRight()
    {

        SqlConnection conn = new SqlConnection(connString);
        conn.Open();
        string cmdstr = "select Code, Name from COURSE c inner join SELECTION s on c.Id=s.Course_Id where s.Person_Id='" + userId + "'";
        SqlCommand cmd = new SqlCommand(cmdstr, conn);
        SqlDataReader rdr = cmd.ExecuteReader();

        int courseDis = 10;
        string[] codeSelection = new string[courseDis];
        string[] nameSelection = new string[courseDis];

        int i = 0;
        while (rdr.Read())
        {
            codeSelection[i] = (string)rdr["Code"];
            nameSelection[i] = (string)rdr["Name"];
            i++;
        }

        string courseTitle = "<h3>My Courses:</h3><br>";
        string courseSelection = null;
        for(int j = 0 ; j < courseDis; j ++)
        {
            if (codeSelection[j] != null)
            {
                string link = "<a href = \"course.aspx?id=" + codeSelection[j] + "\" > " + codeSelection[j] +": " + nameSelection[j] + "</a>";
                courseSelection = courseSelection + link + "<br>";
            }
            else break;
        }
        mycourse.InnerHtml = courseTitle + courseSelection;
    }

    private void Load_Middle()
    {

       if (userId != getPersonId(User.Identity.Name))
       {
           recommend.Visible = false;
           edit.Visible = false;
       }
       else
       {

       }


    }

    private void Load_Bottom()
    {
        int dis_num = 8;
        SqlConnection conn = new SqlConnection(connString);
        conn.Open();
        string cmdstr = "select c.Comments,c.Email,c.Image_Url,c.Person_Id,c.Name,COURSE.Code,COURSE.Name as Course_Name,COURSE.Score_Overall, COURSE.Score_Contents, COURSE.Score_Hardness, COURSE.Score_Professor from ((select a.Course_Id,a.Comments,a.Datetime,a.Person_Id,b.Email,b.Name,b.Image_Url from RATING a inner join PERSON b on a.Person_Id=b.Id ) c inner join COURSE on COURSE.Id=c.Course_Id) where c.Person_Id='"+userId+"'";
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

        switch (i)
        {
            case 0:
                rr1.Visible = false; rr2.Visible = false; rr3.Visible = false; rr4.Visible = false; rr5.Visible = false; rr6.Visible = false; rr7.Visible = false; rr8.Visible = false; break;
            case 1:
                rr2.Visible = false; rr3.Visible = false; rr4.Visible = false; rr5.Visible = false; rr6.Visible = false; rr7.Visible = false; rr8.Visible = false; break;
            case 2:
                rr3.Visible = false; rr4.Visible = false; rr5.Visible = false; rr6.Visible = false; rr7.Visible = false; rr8.Visible = false; break;
            case 3:
                rr4.Visible = false; rr5.Visible = false; rr6.Visible = false; rr7.Visible = false; rr8.Visible = false; break;
            case 4:
                rr5.Visible = false; rr6.Visible = false; rr7.Visible = false; rr8.Visible = false; break;
            case 5:
                rr6.Visible = false; rr7.Visible = false; rr8.Visible = false; break;
            case 6:
                rr7.Visible = false; rr8.Visible = false; break;
            case 7:
                rr8.Visible = false; break;
            default: break;
        }

        for (int j = 0; j < dis_num; j++)
        {
            img[j] = "<img src=\"" + img_pos[j] + "\" alt=\"profile\" width = 120 />";
            //img[j] = "<p>" + img_pos[j] + "</p>";
            //name_link[j] = "<a href = \"user.aspx?id=" + student_id[j] + "\" > " + student_name[j] + "</a>";
            course_link[j] = coursePage + "?id=" + courseCode[j];
            info[j] = img[j] + "</br>" + student_name[j] + "</br>" + email[j];
        }

        conn.Close();

        profile1.InnerHtml = info[0];
        rcc1.Text = courseCode[0] + " " + courseName[0];
        rcc1.NavigateUrl = course_link[0];
        rcs1_0.Text = "&nbsp Total: " + score0[0] + " &nbsp";
        rcs1_1.Text = "&nbsp Prof: " + score1[0] + " &nbsp";
        rcs1_2.Text = "&nbsp Cont: " + score2[0] + " &nbsp";
        rcs1_3.Text = "&nbsp Hard: " + score3[0] + " &nbsp";
        comment1.Text = text[0];

        profile2.InnerHtml = info[1];
        rcc2.Text = courseCode[1] + " " + courseName[1];
        rcc2.NavigateUrl = course_link[1];
        rcs2_0.Text = "&nbsp Total: " + score0[1] + " &nbsp";
        rcs2_1.Text = "&nbsp Prof: " + score1[1] + " &nbsp";
        rcs2_2.Text = "&nbsp Cont: " + score2[1] + " &nbsp";
        rcs2_3.Text = "&nbsp Hard: " + score3[1] + " &nbsp";
        comment2.Text = text[1];

        profile3.InnerHtml = info[2];
        rcc3.Text = courseCode[2] + " " + courseName[2];
        rcc3.NavigateUrl = course_link[2];
        rcs3_0.Text = "&nbsp Total: " + score0[2] + " &nbsp";
        rcs3_1.Text = "&nbsp Prof: " + score1[2] + " &nbsp";
        rcs3_2.Text = "&nbsp Cont: " + score2[2] + " &nbsp";
        rcs3_3.Text = "&nbsp Hard: " + score3[2] + " &nbsp";
        comment3.Text = text[2];

        profile4.InnerHtml = info[3];
        rcc4.Text = courseCode[3] + " " + courseName[3];
        rcc4.NavigateUrl = course_link[3];
        rcs4_0.Text = "&nbsp Total: " + score0[3] + " &nbsp";
        rcs4_1.Text = "&nbsp Prof: " + score1[3] + " &nbsp";
        rcs4_2.Text = "&nbsp Cont: " + score2[3] + " &nbsp";
        rcs4_3.Text = "&nbsp Hard: " + score3[3] + " &nbsp";
        comment4.Text = text[3];

        profile5.InnerHtml = info[4];
        rcc5.Text = courseCode[4] + " " + courseName[4];
        rcc5.NavigateUrl = course_link[4];
        rcs5_0.Text = "&nbsp Total: " + score0[4] + " &nbsp";
        rcs5_1.Text = "&nbsp Prof: " + score1[4] + " &nbsp";
        rcs5_2.Text = "&nbsp Total: " + score2[4] + " &nbsp";
        rcs5_3.Text = "&nbsp Total: " + score3[4] + " &nbsp";
        comment5.Text = text[4];

        profile6.InnerHtml = info[5];
        rcc6.Text = courseCode[5] + " " + courseName[5];
        rcc6.NavigateUrl = course_link[5];
        rcs6_0.Text = "&nbsp Total: " + score0[5] + " &nbsp";
        rcs6_1.Text = "&nbsp Prof: " + score1[5] + " &nbsp";
        rcs6_2.Text = "&nbsp Cont: " + score2[5] + " &nbsp";
        rcs6_3.Text = "&nbsp Hard: " + score3[5] + " &nbsp";
        comment6.Text = text[5];

        profile7.InnerHtml = info[6];
        rcc7.Text = courseCode[6] + " " + courseName[6];
        rcc7.NavigateUrl = course_link[6];
        rcs7_0.Text = "&nbsp Total: " + score0[6] + " &nbsp";
        rcs7_1.Text = "&nbsp Prof: " + score1[6] + " &nbsp";
        rcs7_2.Text = "&nbsp Cont: " + score2[6] + " &nbsp";
        rcs7_3.Text = "&nbsp Hard: " + score3[6] + " &nbsp";
        comment5.Text = text[6];

        profile8.InnerHtml = info[7];
        rcc8.Text = courseCode[7] + " " + courseName[7];
        rcc8.NavigateUrl = course_link[7];
        rcs8_0.Text = "&nbsp Total: " + score0[7] + " &nbsp";
        rcs8_1.Text = "&nbsp Prof: " + score1[7] + " &nbsp";
        rcs8_2.Text = "&nbsp Total: " + score2[7] + " &nbsp";
        rcs8_3.Text = "&nbsp Total: " + score3[7] + " &nbsp";
        comment8.Text = text[7]; 
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
