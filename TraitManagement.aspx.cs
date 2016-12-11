using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Admin_TraitManagement : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["activeUser"] == null || Session["activeUser"].ToString().Split(',')[1] == null)
            Response.Redirect("Login.aspx");

        getTraitList();
        getEmployeeList();
    }
    protected void btnAddTraitDetails_Click(object sender, EventArgs e)
    {
        Response.Write(ddlEmployee.SelectedValue);
        Response.Write("\n" + ddlTraits.SelectedValue);
    }

    protected void getTraitList()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);
        conn.Open();
        String strTrait = "select traitId, traitName from traitMaster";
        SqlDataAdapter ad = new SqlDataAdapter(strTrait, conn);
        conn.Close();
        DataTable dtTraits = new DataTable();
        ad.Fill(dtTraits);
        ddlTraits.DataSource = dtTraits;
        ddlTraits.DataTextField = "traitName";
        ddlTraits.DataValueField = "traitId";
        ddlTraits.DataBind();
        ddlTraits.Items.Insert(0, new ListItem("Select Trait", "0"));
        ddlTraits.SelectedIndex = 0;
    }

    protected void getEmployeeList()
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["MyConnection"].ConnectionString);
        conn.Open();
        String strEmployee = "select userId, userName from personaldetails where roleId != 1";
        SqlDataAdapter ad = new SqlDataAdapter(strEmployee, conn);
        conn.Close();
        DataTable dtEmployee = new DataTable();
        ad.Fill(dtEmployee);
        ddlEmployee.DataSource = dtEmployee;
        ddlEmployee.DataTextField = "userName";
        ddlEmployee.DataValueField = "userId";
        ddlEmployee.DataBind();
        ddlEmployee.Items.Insert(0, new ListItem("Select Employee", "0"));
        ddlEmployee.SelectedIndex = 0;
    }
}