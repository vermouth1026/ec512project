using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class _Default : System.Web.UI.Page
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
        Load_UpperLeft();
        Load_UpperRight();
        Load_Lower();        
    }

    private void Load_UpperLeft()
    {
        SqlConnection conn = new SqlConnection(connString);
        conn.Open();
        string cmdstr = "select * from COURSE order by Score_Overall desc";
        SqlCommand cmd = new SqlCommand(cmdstr, conn);
        SqlDataReader rdr = cmd.ExecuteReader();
        string[] Output = new string[4];
        string[] Score = new string[4];
        string[] courseCode = new string[4];
        int ii = 0;
        while (rdr.Read() && ii < 4)
        {
            string sl = (string)rdr["Code"] + " " + (string)rdr["Name"];
            courseCode[ii] = (string)rdr["Code"];
            Score[ii] = Convert.ToString(rdr["Score_Overall"]);
            Output[ii] = sl;
            ii++;
        }
        conn.Close();
        hsc1.Text = Output[0];
        hsc2.Text = Output[1];
        hsc3.Text = Output[2];
        hsc4.Text = Output[3];
        hss1.Text = Score[0];
        hss2.Text = Score[1];
        hss3.Text = Score[2];
        hss4.Text = Score[3];
        hsc1.NavigateUrl = coursePage + "?id=" + courseCode[0];
        hsc2.NavigateUrl = coursePage + "?id=" + courseCode[1];
        hsc3.NavigateUrl = coursePage + "?id=" + courseCode[2];
        hsc4.NavigateUrl = coursePage + "?id=" + courseCode[3];
    }


    private void Load_UpperRight()
    {
        SqlConnection conn = new SqlConnection(connString);
        conn.Open();

        string cmdstr = "select * from COURSE order by Comment_Count desc";
        SqlCommand cmd = new SqlCommand(cmdstr, conn);
        SqlDataReader rdr = cmd.ExecuteReader();
        int i = 0;
        string[] s = new string[4];
        string[] links = new string[4];
        int[] num = new int[4];
        while (rdr.Read() && i < 4)
        {
            links[i] = (string)rdr["Code"];
            s[i] = links[i] + " " + (string)rdr["Name"];
            num[i] = (int)rdr["Comment_Count"];
            i++;
        }
        conn.Close();
        
        mcc1.Text = s[0];
        mcc2.Text = s[1];
        mcc3.Text = s[2];
        mcc4.Text = s[3];

        mcc1.NavigateUrl = coursePage + "?id=" + links[0];
        mcc2.NavigateUrl = coursePage + "?id=" + links[1];
        mcc3.NavigateUrl = coursePage + "?id=" + links[2];
        mcc4.NavigateUrl = coursePage + "?id=" + links[3];

        mcs1.Text = Convert.ToString(num[0]);
        mcs2.Text = Convert.ToString(num[1]);
        mcs3.Text = Convert.ToString(num[2]);
        mcs4.Text = Convert.ToString(num[3]);
    }

    private void Load_Lower()
    {
        int dis_num = 3;
        SqlConnection conn = new SqlConnection(connString);
        conn.Open();
        string cmdstr = "select * from RATING order by Datetime desc";
        SqlCommand cmd = new SqlCommand(cmdstr, conn);
        SqlDataReader rdr = cmd.ExecuteReader();
        int i = 0;
        string[] courseCode = new string[dis_num];
        string[] courseName = new string[dis_num];
        string[] text = new string[dis_num];
        string[] score = new string[dis_num];
        string[] username = new string[dis_num];
        string[] email = new string[dis_num];
        object[] profile = new object[dis_num];
        while (rdr.Read() && i < dis_num)
        {
            courseCode[i] = (string)rdr["Code"];
            courseName[i] = (string)rdr["Course_Name"];
            text[i] = (string)rdr["Comments"];
            score[i] = (string)rdr["Score_Overall"];
            username[i] = (string)rdr["User_name"];
            email[i] = (string)rdr["Email"];
        }








    }
}
