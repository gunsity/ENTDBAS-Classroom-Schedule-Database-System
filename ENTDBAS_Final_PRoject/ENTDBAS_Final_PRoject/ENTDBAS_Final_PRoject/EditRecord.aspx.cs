using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ENTDBAS_Final_PRoject
{
    public partial class EditRecord : System.Web.UI.Page
    {
        string conString = "Server=TAFT-CL807;Database=CSDS;UID=sa;PWD=benilde";
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            conn = new SqlConnection(conString);
            conn.Open();
            refreshgrid();
        }

        void refreshgrid()
        {
            //conn.Open();
            string select = "Select * from Subject ";
            SqlCommand com = new SqlCommand(select, conn);
            SqlDataReader dr = com.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            TextBox1.Text = GridView1.SelectedRow.Cells[5].Text;
            TextBox2.Text = GridView1.SelectedRow.Cells[6].Text;
            TextBox3.Text = GridView1.SelectedRow.Cells[7].Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sqlQuery = "Update Subject set ProfessorID = '" + int.Parse(TextBox1.Text) + "', RoomID = '" + TextBox2.Text + "' ,SectionID = '" + TextBox3.Text + "', PeriodID = '" + TextBox4.Text + "' where SubjectCode = '" + TextBox5.Text + "'";
            SqlCommand com = new SqlCommand(sqlQuery, conn);
            com.ExecuteNonQuery();
            refreshgrid();
            conn.Close();
            Response.Write("<script>alert('Update Successful!')</script>");
        }
    }
}