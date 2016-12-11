using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class ListSalaryDeatils : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindgrid();
        }
    }

    public void bindgrid()
    {
        conn.Open();
        String s = "select salaryId, salaryBasic, salaryVariable, salaryTaxDeducted, salaryPension, salaryGratuitySum, salaryPFSum from salaryDetails where status = 1 ";
        SqlDataAdapter ad = new SqlDataAdapter(s, conn);
        DataTable dt = new DataTable();
        ad.Fill(dt);
        grdvSalaryDetails.DataSource = dt;
        grdvSalaryDetails.DataBind();
    }

    protected void grdvSalaryDetails_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("update salaryDetails set status=0 where salaryId='" + Convert.ToInt32(grdvSalaryDetails.DataKeys[e.RowIndex].Value.ToString()) + "'", conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        bindgrid();
    }

    protected void grdvSalaryDetails_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        if (Session["editSalaryDetailsId"] != null)
            Session["editSalaryDetailsId"] = null;
        Session["editSalaryDetailsId"] = Convert.ToInt32(grdvSalaryDetails.DataKeys[e.RowIndex].Value.ToString());
        Server.Transfer("SalaryDetails.aspx");
    }
}