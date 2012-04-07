using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace ENTDBAS_Final_PRoject
{
    public partial class Login : System.Web.UI.Page
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
            string sqlQuery = "Select username, password from Useraccount where username = '" + txt_username.Text + "' and password = '" + txt_password.Text + "'" ;
            SqlCommand com = new SqlCommand(sqlQuery, conn);
            SqlDataReader dr = com.ExecuteReader();
            if (dr.HasRows)
            {
                dr.Read();
                conn.Close();
                Response.Redirect("Main_panel.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid Username or Password')</script>");
            }
        }
    }
}