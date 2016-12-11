using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
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
    }

    protected void btnSignup_Click(object sender, EventArgs e)
    {
        Response.Redirect("./Registration.aspx");
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        
        // get role  = 1 

        // get menue's for role = 1 from databse

        // pass those menu items to construct master page

        if (textUsername.Text != "" && textUsername.Text != "Username")
        {
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);
            conn.Open();
            string checkuser = "select count(*) from personalDetails where userName ='" + textUsername.Text + "'";
            SqlCommand comm = new SqlCommand(checkuser, conn);
            int count = Convert.ToInt32(comm.ExecuteScalar().ToString());
            conn.Close();

            if (count == 1)
            {
                if (txtPassword.Text != "" && txtPassword.Text != "Password")
                {
                    conn.Open();
                    string checkPasswordQuery = "select userPassword from personalDetails where userName ='" + textUsername.Text + "'";
                    SqlCommand passComm = new SqlCommand(checkPasswordQuery, conn);
                    string password = passComm.ExecuteScalar().ToString().Replace(" ", "");
                    conn.Close();
                    if (password == txtPassword.Text)
                    {                        
                        SqlCommand cmd = new SqlCommand("authenticateUser", conn);
                        // Create parameter with Direction as Output (and correct name and type)
                        SqlParameter outputRoleId = new SqlParameter("@RoleId", SqlDbType.Int)
                        {
                            Direction = ParameterDirection.Output
                        };
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@userName", textUsername.Text);
                        cmd.Parameters.AddWithValue("@userPassword", txtPassword.Text);
                        cmd.Parameters.AddWithValue("@schooldId", ddlSchoolCode.SelectedValue);
                        cmd.Parameters.Add(outputRoleId);
                        
                        conn.Open();
                        cmd.ExecuteNonQuery();

                        if (outputRoleId.Value != DBNull.Value) {
                            int roleId = 0;
                            roleId = int.Parse(outputRoleId.Value.ToString());
                            conn.Close();

                            //Name, RoleId, SchoolId
                            if (Session["activeUser"] == null)
                                Session["activeUser"] = textUsername.Text + "," + roleId + "," + ddlSchoolCode.SelectedValue + "," + 1; //concatenate it with school code

                            Server.Transfer("LandingPage.aspx");
                        }
                        else
                        {
                            lblError.Text = "Please enter valid input/s";
                        }
                    }
                    else
                    {
                        lblError.Text = "Please enter valid Username and Password";
                    }
                }
                else
                {
                    lblError.Text = "Please enter Password";
                }
            }
        }
        else
        {
            lblError.Text = "Please enter valid Username";
        }
    }    
}