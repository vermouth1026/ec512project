using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class reviews : System.Web.UI.Page
{

    private string c_id = null;
    private int c_page = 1;
    private int total_num = 0;
    private const string connString = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\Database.mdf;Integrated Security=True";
    protected void Page_Load(object sender, EventArgs e)
    {

        c_id = Request.QueryString["id"];
        //c_id="EC500A1_1";
        int a = c_id.IndexOf("_");
        int b = c_id.Length;
        string s = c_id.Substring(c_id.IndexOf("_") + 1, c_id.Length - c_id.IndexOf("_") - 1);
        c_page = Int16.Parse(s);
        //c_page = 1;
        c_id = c_id.Substring(0, c_id.IndexOf("_"));
        pgNum.Value = Convert.ToString(c_page);
        loadp();
        if (3 * (c_page + 1) >= total_num)
        {
            corner.Value = "last";
        }

    }
    private void loadp()
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


        string[] courseCode = new string[total_num];
        string[] courseName = new string[total_num];
        string[] text = new string[total_num];
        string[] score = new string[total_num];
        string[] scorec = new string[total_num];
        string[] scoreh = new string[total_num];
        string[] scorep = new string[total_num];
        string[] student_name = new string[total_num];
        string[] email = new string[total_num];
        string[] profile = new string[total_num];
        string[] student_id = new string[total_num];
        string[] name_link = new string[total_num];
        string[] course_link = new string[total_num];
        string[] img_pos = new string[total_num];
        string[] img = new string[total_num];
        string[] info = new string[total_num];
        int i = 0;
        SqlConnection conn1 = new SqlConnection(connString);
        conn1.Open();
        string cmdstr1 = "select * from (select c.Comment_Count,c.Code,c.Name as Course_Name,r.Person_Id,r.Comments,r.Score_Contents,r.Score_Hardness,r.Score_Overall,r.Score_Professor from RATING r inner join COURSE c on r.Course_Id=c.Id where c.Code='" + c_id + "') c inner join PERSON p on c.Person_Id=p.Id";
        SqlCommand cmd1 = new SqlCommand(cmdstr1, conn1);
        SqlDataReader rdr1 = cmd1.ExecuteReader();

        while (rdr1.Read() && i < total_num)
        {
            courseCode[i] = (string)rdr1["Code"];
            courseName[i] = (string)rdr1["Course_Name"];
            score[i] = Convert.ToString(rdr1["Score_Overall"]);
            scorec[i] = Convert.ToString(rdr1["Score_Contents"]);
            scoreh[i] = Convert.ToString(rdr1["Score_Hardness"]);
            scorep[i] = Convert.ToString(rdr1["Score_Professor"]);
            student_name[i] = (string)rdr1["Name"];
            email[i] = (string)rdr1["Email"] + "@bu.edu";
            img_pos[i] = (string)rdr1["Image_Url"];
            text[i] = (string)rdr1["Comments"];
            i++;

        }

        for (int j = 0; j < total_num; j++)
        {
            img[j] = "<img src=\"" + img_pos[j] + "\" alt=\"profile\" width = 120 />";
            name_link[j] = "<a href = \"user.aspx?id=" + student_id[j] + "\" > " + student_name[j] + "</a>";
            info[j] = img[j] + "</br>" + name_link[j] + "</br>" + email[j];
        }
        if (3 * c_page <= total_num)
        {
            profile1.InnerHtml = info[3 * (c_page - 1)];
            rcc1.Text = courseCode[3 * (c_page - 1)] + " " + courseName[3 * (c_page - 1)] + " ";
            rcs1_0.Text = "&nbsp Total: &nbsp" + score[3 * (c_page - 1)] + " ";
            rcs1_1.Text = "&nbsp Prof: &nbsp" + scorep[3 * (c_page - 1)] + " ";
            rcs1_2.Text = "&nbsp Cont: &nbsp" + scorec[3 * (c_page - 1)] + " ";
            rcs1_3.Text = "&nbsp Hard: &nbsp" + scoreh[3 * (c_page - 1)] + " ";
            comment1.Text = text[3 * (c_page - 1)];


            profile2.InnerHtml = info[3 * (c_page - 1) + 1];
            rcc2.Text = courseCode[3 * (c_page - 1) + 1] + " " + courseName[3 * (c_page - 1) + 1] + " ";
            rcs2_0.Text = "&nbsp Total: &nbsp" + score[3 * (c_page - 1) + 1] + " ";
            rcs2_1.Text = "&nbsp Prof: &nbsp" + scorep[3 * (c_page - 1) + 1] + " ";
            rcs2_2.Text = "&nbsp Cont: &nbsp" + scorec[3 * (c_page - 1) + 1] + " ";
            rcs2_3.Text = "&nbsp Hard: &nbsp" + scoreh[3 * (c_page - 1) + 1] + " ";
            comment2.Text = text[3 * (c_page - 1) + 1];



            profile3.InnerHtml = info[3 * (c_page - 1) + 2];
            rcc3.Text = courseCode[3 * (c_page - 1) + 2] + " " + courseName[3 * (c_page - 1) + 2];
            rcs3_0.Text = "&nbsp Total: &nbsp" + score[3 * (c_page - 1) + 2];
            rcs3_1.Text = "&nbsp Prof: &nbsp" + scorep[3 * (c_page - 1) + 2];
            rcs3_2.Text = "&nbsp Cont: &nbsp" + scorec[3 * (c_page - 1) + 2];
            rcs3_3.Text = "&nbsp Hard: &nbsp" + scoreh[3 * (c_page - 1) + 2];
            comment3.Text = text[3 * (c_page - 1) + 2];
        }
        else if (total_num - 3 * (c_page - 1) == 1)
        {
            profile1.InnerHtml = info[3 * (c_page - 1)];
            rcc1.Text = courseCode[3 * (c_page - 1)] + " " + courseName[3 * (c_page - 1)] + " ";
            rcs1_0.Text = "&nbsp Total: &nbsp" + score[3 * (c_page - 1)] + " ";
            rcs1_1.Text = "&nbsp Prof: &nbsp" + scorep[3 * (c_page - 1)] + " ";
            rcs1_2.Text = "&nbsp Cont: &nbsp" + scorec[3 * (c_page - 1)] + " ";
            rcs1_3.Text = "&nbsp Hard: &nbsp" + scoreh[3 * (c_page - 1)] + " ";
            comment1.Text = text[3 * (c_page - 1)];

            review3.Visible = false;
            review2.Visible = false;
        }
        else
        {
            profile1.InnerHtml = info[3 * (c_page - 1)];
            rcc1.Text = courseCode[3 * (c_page - 1)] + " " + courseName[3 * (c_page - 1)] + " ";
            rcs1_0.Text = "&nbsp Total: &nbsp" + score[3 * (c_page - 1)] + " ";
            rcs1_1.Text = "&nbsp Prof: &nbsp" + scorep[3 * (c_page - 1)] + " ";
            rcs1_2.Text = "&nbsp Cont: &nbsp" + scorec[3 * (c_page - 1)] + " ";
            rcs1_3.Text = "&nbsp Hard: &nbsp" + scoreh[3 * (c_page - 1)] + " ";
            comment1.Text = text[3 * (c_page - 1)];


            profile2.InnerHtml = info[3 * (c_page - 1) + 1];
            rcc2.Text = courseCode[3 * (c_page - 1) + 1] + " " + courseName[3 * (c_page - 1) + 1] + " ";
            rcs2_0.Text = "&nbsp Total: &nbsp" + score[3 * (c_page - 1) + 1] + " ";
            rcs2_1.Text = "&nbsp Prof: &nbsp" + scorep[3 * (c_page - 1) + 1] + " ";
            rcs2_2.Text = "&nbsp Cont: &nbsp" + scorec[3 * (c_page - 1) + 1] + " ";
            rcs2_3.Text = "&nbsp Hard: &nbsp" + scoreh[3 * (c_page - 1) + 1] + " ";
            comment2.Text = text[3 * (c_page - 1) + 1];

            review3.Visible = false;
        }
    }
}
