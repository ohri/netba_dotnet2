using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Microsoft.ApplicationBlocks.Data;

public partial class RealTeamView : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataSet roster = SqlHelper.ExecuteDataset(System.Configuration.ConfigurationSettings.AppSettings["ConnectionString"],
            "spGetNBARoster", Request.QueryString["RealTeamId"]);
        dgRoster.DataSource = roster;
        dgRoster.DataBind();

        lblPageTitle.Text = roster.Tables[0].Rows[0]["TeamName"].ToString();
    }
}
