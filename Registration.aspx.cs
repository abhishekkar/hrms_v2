using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //SqlConnection cn = new SqlConnection(@"Data Source =.;Initial catalog = hrms_beta_v1;Integrated Security = true");
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);
        conn.Open();
        String str = "select distinct schoolCode, schoolId from masterSchool";
        SqlDataAdapter ad = new SqlDataAdapter(str, conn);
        conn.Close();
        DataTable dt = new DataTable();
        ad.Fill(dt);
        ddlSchoolCode.DataSource = dt;
        ddlSchoolCode.DataTextField = "schoolCode";
        ddlSchoolCode.DataValueField = "schoolId";
        ddlSchoolCode.DataBind();
        ddlSchoolCode.Items.Insert(0, new ListItem("Select School Code", "0"));
        //ddlSchool.SelectedIndex = 0;
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("./index.aspx");
    }
}