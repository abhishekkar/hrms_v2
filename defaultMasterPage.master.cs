using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class defaultMasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["activeUser"] != null && Session["activeUser"].ToString().Split(',')[1] != null && Session["activeUser"].ToString().Split(',')[1] != "1")
            restrictAccess();
        else
            grantAccess();
    }

    protected void btnlogout_Click(object sender, EventArgs e)
    {
        Session["activeUser"] = null;
        Response.Redirect("index.aspx");
    }

    public void restrictAccess ()
    {
        lnkHiring.Visible = false;
        lnkTraitManagement.Visible = false;
        lnkAppraisalSystem.Visible = false;
        lnkTeachersPortal.Visible = false;
    }

    public void grantAccess()
    {
        lnkHiring.Visible = true;
        lnkTraitManagement.Visible = true;
        lnkAppraisalSystem.Visible = true;
        lnkTeachersPortal.Visible = true;
    }
}
