using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_ListPersonalDetails : System.Web.UI.Page
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
        String s = "select userId, userName, designation, dateOfHiring, supervisorId, education from personalDetails where status = 1";
        SqlDataAdapter ad = new SqlDataAdapter(s, conn);
        DataTable dt = new DataTable();
        ad.Fill(dt);
        grdvPersonalDetails.DataSource = dt;
        grdvPersonalDetails.DataBind();
    }

    protected void grdvPersonalDetails_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("update personalDetails set status=0 where userId='" + Convert.ToInt32(grdvPersonalDetails.DataKeys[e.RowIndex].Value.ToString()) + "'", conn);
        cmd.ExecuteNonQuery();
        conn.Close();
        bindgrid();
    }

    protected void grdvPersonalDetails_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        if (Session["editPersonalDetailsId"] != null)
            Session["editPersonalDetailsId"] = null;
        Session["editPersonalDetailsId"] = Convert.ToInt32(grdvPersonalDetails.DataKeys[e.RowIndex].Value.ToString());
        Server.Transfer("PersonalDetails.aspx");
    }
}