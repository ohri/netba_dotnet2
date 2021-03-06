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
using netba;

public partial class Transactions : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["TeamId"] = DBUtilities.GetUsersTeamId(Page.User.Identity.Name);
        DataSet ds = SqlHelper.ExecuteDataset(System.Configuration.ConfigurationSettings.AppSettings["ConnectionString"],
            "spFetchTeamTransactions", Session["TeamId"]);
        dgTransactions.DataSource = ds;
        dgTransactions.DataBind();
    }
}
