namespace netba
{
	using System;
	using System.Data;
	using System.Drawing;
	using System.Web;
	using System.Web.UI.WebControls;
	using System.Web.UI.HtmlControls;
    using Microsoft.ApplicationBlocks.Data;
    using netba;

	/// <summary>
	///		Summary description for alerts.
	/// </summary>
	public partial class alerts : System.Web.UI.UserControl
	{

		protected void Page_Load(object sender, System.EventArgs e)
		{
            DataSet alerts = SqlHelper.ExecuteDataset( System.Configuration.ConfigurationSettings.AppSettings["ConnectionString"],
                "spFetchAlerts", DBUtilities.GetUsersTeamId( Page.User.Identity.Name ) );

            if( alerts.Tables[0].Rows.Count == 0 )
            {
                DataRow noAlerts = alerts.Tables[0].NewRow();
                noAlerts["message"] = "No alerts at this time.";
                alerts.Tables[0].Rows.Add( noAlerts );

                dlAlerts.ItemStyle.ForeColor = System.Drawing.Color.Black;
            }

            dlAlerts.DataSource = alerts;
            dlAlerts.DataBind();
        }

		#region Web Form Designer generated code
		override protected void OnInit(EventArgs e)
		{
			//
			// CODEGEN: This call is required by the ASP.NET Web Form Designer.
			//
			InitializeComponent();
			base.OnInit(e);
		}
		
		/// <summary>
		///		Required method for Designer support - do not modify
		///		the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{

		}
		#endregion
	}
}
