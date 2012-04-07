using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ENTDBAS_Final_PRoject
{
    public partial class AddRecord : System.Web.UI.Page
    {
        string conString = "Server=TAFT-CL807;Database=CSDS;UID=sa;PWD=benilde";
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(conString);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            string sqlQuery = "Insert into Subject(SubjectCode,SubjectName) values('" + TextBox1.Text + "','" + TextBox2.Text + "')";
            SqlCommand com = new SqlCommand(sqlQuery, conn);
            com.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Add Subject Successful!')</script>");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            conn.Open();
            string sqlQuery = "Insert into UserAccount(username,password) values('" + TextBox3.Text + "','" + TextBox4.Text + "')";
            SqlCommand com = new SqlCommand(sqlQuery, conn);
            com.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Add user account Successful!')</script>");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            conn.Open();
            string sqlQuery = "Insert into Professor(ProfessorName,Gender,Department) values('" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "')";
            SqlCommand com = new SqlCommand(sqlQuery, conn);
            com.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Add Professor Successful!')</script>");
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            conn.Open();
            string sqlQuery = "Insert into Room(ProfessorName,Gender,Department) values('" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "')";
            SqlCommand com = new SqlCommand(sqlQuery, conn);
            com.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Add Professor Successful!')</script>");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            conn.Open();
            string sqlQuery = "Insert into Section(Section) values('" + TextBox11.Text + "')";
            SqlCommand com = new SqlCommand(sqlQuery, conn);
            com.ExecuteNonQuery();
            conn.Close();
            Response.Write("<script>alert('Add Section Successful!')</script>");
        }
    }
}