using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class SalaryDetails : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        //if (Session["activeUser"] == null || Session["activeUser"].ToString().Split(',')[1] == null)
        //    Response.Redirect("./Login.aspx");

        //if (Session["activeUser"].ToString().Split(',')[1] == "1")
        //    notReadyOnlyView();
        //else
        //    readyOnlyView();

        if (!IsPostBack)        
        {
            if (Session["editSalaryDetailsId"] != null)
            {
                string salaryId = Session["editSalaryDetailsId"].ToString();

                if (salaryId != "" && Convert.ToInt32(salaryId) > 0)
                {
                    conn.Open();
                    String str = "select salaryBasic, salaryVariable, salaryTaxDeducted, salaryPension, salaryGratuityNumber, salaryGratuitySum, salaryPFNumber, salaryPFSum from salaryDetails where salaryId = " + salaryId;
                    SqlDataAdapter ad = new SqlDataAdapter(str, conn);
                    DataTable dt = new DataTable();
                    ad.Fill(dt);

                    txtBasic.Text = dt.Rows[0]["salaryBasic"].ToString();
                    txtVariable.Text = dt.Rows[0]["salaryVariable"].ToString();
                    txtTaxDeducted.Text = dt.Rows[0]["salaryTaxDeducted"].ToString();
                    txtPension.Text = dt.Rows[0]["salaryPension"].ToString();
                    txtGratuityNumber.Text = dt.Rows[0]["salaryGratuityNumber"].ToString();
                    txtGratuitySum.Text = dt.Rows[0]["salaryGratuitySum"].ToString();
                    txtPFNumber.Text = dt.Rows[0]["salaryPFNumber"].ToString();
                    txtPFSum.Text = dt.Rows[0]["salaryPFSum"].ToString();
                    //TO - DO
                    // Add User to associate salary details

                    btnAddSalaryDetails.Text = "Update Salary Details";
                }
                else
                    btnAddSalaryDetails.Text = "Add Salary Details";
            }
        }
        else
        {
            //clearFields();
        }
    }
    
    protected void btnAddSalaryDetails_Click(object sender, EventArgs e)
    {
        if (Session["editSalaryDetailsId"] == null)
        {
            SqlCommand cmd = new SqlCommand("addSalaryDetails", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@salaryBasic", txtBasic.Text);
            cmd.Parameters.AddWithValue("@salaryVariable", txtVariable.Text);
            cmd.Parameters.AddWithValue("@salaryTaxDeducted", txtTaxDeducted.Text);
            cmd.Parameters.AddWithValue("@salaryPension", txtPension.Text);
            cmd.Parameters.AddWithValue("@salaryGratuityNumber", txtGratuityNumber.Text);
            cmd.Parameters.AddWithValue("@salaryGratuitySum", txtGratuitySum.Text);
            cmd.Parameters.AddWithValue("@salaryPFNumber", txtPFNumber.Text);
            cmd.Parameters.AddWithValue("@salaryPFSum", txtPFSum.Text);
            if (Session["activeUser"] != null && Session["activeUser"].ToString().Split(',')[3] != null)
                cmd.Parameters.AddWithValue("@createdBy", Session["activeUser"].ToString().Split(',')[3]);
            cmd.Parameters.AddWithValue("@createdDate", System.DateTime.Now);
            conn.Open();
            cmd.ExecuteNonQuery();

            conn.Close();

            // TO-DO Show popup dialog
        }
        else
        {
            updatedSalaryDeatils();
            clearFields();
            Session["editSalaryDetailsId"] = null;
            // TO-DO Show popup dialog
        }
    }

    public void readyOnlyView()
    {
        //lblBasic.Visible = true;
        //lblVariable.Visible = true;
        //lblTaxDeducted.Visible = true;
        //lblGratuityNumber.Visible = true;
        //lblGratuitySum.Visible = true;
        //lblPFNumber.Visible = true;
        //lblPFSum.Visible = true;
        //lblPension.Visible = true;

        //txtBasic.Visible = false;
        //txtVariable.Visible = false;
        //txtTaxDeducted.Visible = false;
        //txtGratuityNumber.Visible = false;
        //txtGratuitySum.Visible = false;
        //txtPFNumber.Visible = false;
        //txtPFSum.Visible = false;
        //txtPension.Visible = false;
    }

    public void notReadyOnlyView()
    {
        //lblBasic.Visible = false;
        //lblVariable.Visible = false;
        //lblTaxDeducted.Visible = false;
        //lblGratuityNumber.Visible = false;
        //lblGratuitySum.Visible = false;
        //lblPFNumber.Visible = false;
        //lblPFSum.Visible = false;
        //lblPension.Visible = false;

        //txtBasic.Visible = true;
        //txtVariable.Visible = true;
        //txtTaxDeducted.Visible = true;
        //txtGratuityNumber.Visible = true;
        //txtGratuitySum.Visible = true;
        //txtPFNumber.Visible = true;
        //txtPFSum.Visible = true;
        //txtPension.Visible = true;
    }

    protected void clearFields()
    {
        txtBasic.Text = "";
        txtVariable.Text = "";
        txtTaxDeducted.Text = "";
        txtPension.Text = "";
        txtGratuityNumber.Text = "";
        txtGratuitySum.Text = "";
        txtPFNumber.Text = "";
        txtPFSum.Text = "";
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("./ListSalaryDetails.aspx");
    }
    
    protected void updatedSalaryDeatils()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);
        SqlCommand cmd = new SqlCommand("updatePersonalDetails", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@salaryBasic", txtBasic.Text);
        cmd.Parameters.AddWithValue("@salaryVariable", txtVariable.Text);
        cmd.Parameters.AddWithValue("@salaryTaxDeducted", txtTaxDeducted.Text);
        cmd.Parameters.AddWithValue("@salaryPension", txtPension.Text);
        cmd.Parameters.AddWithValue("@salaryGratuityNumber", txtGratuityNumber.Text);
        cmd.Parameters.AddWithValue("@salaryGratuitySum", txtGratuitySum.Text);
        cmd.Parameters.AddWithValue("@salaryPFNumber", txtPFNumber.Text);
        cmd.Parameters.AddWithValue("@salaryPFSum", txtPFSum.Text);
        if (Session["activeUser"] != null && Session["activeUser"].ToString().Split(',')[3] != null)
            cmd.Parameters.AddWithValue("@modifiedBy", Session["activeUser"].ToString().Split(',')[3]);
        cmd.Parameters.AddWithValue("@modifiedDate", System.DateTime.Now);
        string salaryId = Session["editsalaryDetailsId"].ToString();
        if (salaryId != "" && Convert.ToInt32(salaryId) > 0)
        {
            cmd.Parameters.AddWithValue("@salaryId", salaryId);
        }
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        // TO-DO Show popup dialog
    }
}