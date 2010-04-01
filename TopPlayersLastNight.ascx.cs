using Microsoft.ApplicationBlocks.Data;

namespace netba
{
	using System;
	using System.Data;
	using System.Drawing;
	using System.Web;
	using System.Web.UI.WebControls;
	using System.Web.UI.HtmlControls;

	/// <summary>
	///		Summary description for TopPlayersLastNight.
	/// </summary>
	public partial class TopPlayersLastNight : System.Web.UI.UserControl
	{

		protected void Page_Load(object sender, System.EventArgs e)
		{
			if( !IsPostBack )
			{
				DataSet dsTopPerformances = SqlHelper.ExecuteDataset( System.Configuration.ConfigurationSettings.AppSettings[ "ConnectionString" ], 
					@"spGetBestRecentPerformances" );
				dgTopPerformances.DataSource = dsTopPerformances;
				dgTopPerformances.DataBind();		

				lblDate.Text = ((DateTime)dsTopPerformances.Tables[0].Rows[0]["GameDate"]).ToString( "d" );
			}		
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
