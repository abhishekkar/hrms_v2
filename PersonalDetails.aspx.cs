using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Teacher_PersonalDetails : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            getRoleList();
            getSupervisorList();

            if (Session["editPersonalDetailsId"] != null)
            {
                string userId = Session["editPersonalDetailsId"].ToString();

                if (userId != "" && Convert.ToInt32(userId) > 0)
                { 
                    conn.Open();
                    String str = "select name, address, mobile, email, education, designation, dateOfHiring, supervisorId, roleId from personalDetails where userId = " + userId;
                    SqlDataAdapter ad = new SqlDataAdapter(str, conn);
                    DataTable dt = new DataTable();
                    ad.Fill(dt);

                    txtName.Text = dt.Rows[0]["name"].ToString();
                    txtAddress.Text = dt.Rows[0]["address"].ToString();
                    txtMobile.Text = dt.Rows[0]["mobile"].ToString();
                    txtEmail.Text = dt.Rows[0]["email"].ToString();
                    txtEducation.Text = dt.Rows[0]["education"].ToString();
                    txtDesignation.Text = dt.Rows[0]["designation"].ToString();
                    txtDateOfHiring.Text = dt.Rows[0]["dateOfHiring"].ToString();
                    //TO - DO
                    //ddlSupervisor.SelectedIndex = Convert.ToInt32(dt.Rows[0]["supervisorId"].ToString());
                    //ddlRole.SelectedIndex = Convert.ToInt32(dt.Rows[0]["roleId"].ToString());

                    btnAddPersonalDetails.Text = "Update Personal Details";
                }
                else
                    btnAddPersonalDetails.Text = "Add Personal Details";
            }
        }
        else
        {
            //clearFields();
        }
    }

    protected void btnAddPersonalDetails_Click(object sender, EventArgs e)
    {
        if (Session["editPersonalDetailsId"] == null)
        {
            SqlCommand cmd = new SqlCommand("addPersonalDetails", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@name", txtName.Text);
            cmd.Parameters.AddWithValue("@address", txtAddress.Text);
            cmd.Parameters.AddWithValue("@mobile", txtMobile.Text);
            cmd.Parameters.AddWithValue("@email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@education", txtEducation.Text);
            cmd.Parameters.AddWithValue("@designation", txtDesignation.Text);
            cmd.Parameters.AddWithValue("@dateOfHiring", System.DateTime.Now);
            cmd.Parameters.AddWithValue("@supervisorId", ddlSupervisor.SelectedValue);
            cmd.Parameters.AddWithValue("@roleId", ddlRole.SelectedValue);
            if (Session["activeUser"] != null && Session["activeUser"].ToString().Split(',')[2] != null)
                cmd.Parameters.AddWithValue("@schoolId", Session["activeUser"].ToString().Split(',')[2]);
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
            updatedPersonalDeatils();
            clearFields();
            Session["editPersonalDetailsId"] = null;
            // TO-DO Show popup dialog
        }
    }

    protected void getRoleList()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);
        conn.Open();
        String strRole = "select roleId, role from roleMaster";
        SqlDataAdapter ad = new SqlDataAdapter(strRole, conn);
        conn.Close();
        DataTable dtRole = new DataTable();
        ad.Fill(dtRole);
        ddlRole.DataSource = dtRole;
        ddlRole.DataTextField = "role";
        ddlRole.DataValueField = "roleId";
        ddlRole.DataBind();
        ddlRole.Items.Insert(0, new ListItem("Select Role", "0"));
    }

    protected void getSupervisorList()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);
        conn.Open();
        String strSupervisor = "select userId, name from personalDetails where roleId = 1";
        SqlDataAdapter ad = new SqlDataAdapter(strSupervisor, conn);
        conn.Close();
        DataTable dt = new DataTable();
        ad.Fill(dt);
        ddlSupervisor.DataSource = dt;
        ddlSupervisor.DataTextField = "name";
        ddlSupervisor.DataValueField = "userId";
        ddlSupervisor.DataBind();
        ddlSupervisor.Items.Insert(0, new ListItem("Select Supervisor", "0"));
    }

    protected void clearFields()
    {
        txtName.Text = "";
        txtAddress.Text = "";
        txtMobile.Text = "";
        txtEmail.Text = "";
        txtEducation.Text = "";
        txtDesignation.Text = "";
        txtDateOfHiring.Text = "";
        ddlSupervisor.SelectedIndex = 0;
        ddlRole.SelectedIndex = 0;
    }

    protected void btnCancel_Click(object sender, EventArgs e)
    {
        Response.Redirect("./ListPersonalDetails.aspx");
    }

    protected void updatedPersonalDeatils ()
    {
        SqlCommand cmd = new SqlCommand("updatePersonalDetails", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.AddWithValue("@name", txtName.Text);
        cmd.Parameters.AddWithValue("@address", txtAddress.Text);
        cmd.Parameters.AddWithValue("@mobile", txtMobile.Text);
        cmd.Parameters.AddWithValue("@email", txtEmail.Text);
        cmd.Parameters.AddWithValue("@education", txtEducation.Text);
        cmd.Parameters.AddWithValue("@designation", txtDesignation.Text);
        cmd.Parameters.AddWithValue("@dateOfHiring", System.DateTime.Now);
        cmd.Parameters.AddWithValue("@supervisorId", ddlSupervisor.SelectedValue);
        cmd.Parameters.AddWithValue("@roleId", ddlRole.SelectedValue);
        if (Session["activeUser"] != null && Session["activeUser"].ToString().Split(',')[2] != null)
            cmd.Parameters.AddWithValue("@schoolId", Session["activeUser"].ToString().Split(',')[2]);
        if (Session["activeUser"] != null && Session["activeUser"].ToString().Split(',')[3] != null)
            cmd.Parameters.AddWithValue("@modifiedBy", Session["activeUser"].ToString().Split(',')[3]);
        cmd.Parameters.AddWithValue("@modifiedDate", System.DateTime.Now);
        string userId = Session["editPersonalDetailsId"].ToString();
        if (userId != "" && Convert.ToInt32(userId) > 0)
        {
            cmd.Parameters.AddWithValue("@userId", userId);
        }
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

        // TO-DO Show popup dialog
    }
}