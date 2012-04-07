using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace ENTDBAS_Final_PRoject
{
    public partial class ViewRecord : System.Web.UI.Page
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
            string select = "Select SubjectCode, SubjectName, RoomID, Day, ProfessorName, Section from Subject inner join Period on Subject.PeriodID = Period.PeriodID Inner join Professor on Subject.ProfessorID = Professor.ProfessorID Inner Join Section on Subject.SectionID = Section.SectionID";
            SqlCommand com = new SqlCommand(select, conn);
            SqlDataReader dr = com.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
            dr.Close();
        }
    }
}