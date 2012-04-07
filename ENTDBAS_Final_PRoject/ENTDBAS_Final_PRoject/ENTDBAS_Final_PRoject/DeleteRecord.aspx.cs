using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ENTDBAS_Final_PRoject
{
    public partial class DeleteRecord : System.Web.UI.Page
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
            string select = "Select * from Subject ";
            SqlCommand com = new SqlCommand(select, conn);
            SqlDataReader dr = com.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string sqlQuery = "Delete from Subject where SubjectCode = '" + TextBox1.Text + "'";
            SqlCommand com = new SqlCommand(sqlQuery, conn);
            com.ExecuteNonQuery();
            refreshgrid();
            conn.Close();
            Response.Write("<script>alert('Delete Successful!')</script>");
        }
    }
}