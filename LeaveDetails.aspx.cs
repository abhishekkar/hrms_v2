using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Teacher_LeaveDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void btnAddLeaveDetails_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);
        SqlCommand cmd = new SqlCommand("addLeaveDetails", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@maternityLeave", txtMaternityLeave.Text);
        cmd.Parameters.AddWithValue("@paidSickLeave", txtPaidSickLeave.Text);
        cmd.Parameters.AddWithValue("@paternityLeave", txtPaternityLeave.Text);
        cmd.Parameters.AddWithValue("@paidLeavesRemaining", txtPaidLeavesRemaining.Text);
        cmd.Parameters.AddWithValue("@leaveApplied", txtLeavesApplied.Text);
        conn.Open();
        cmd.ExecuteNonQuery();
        
        conn.Close();
    }
}