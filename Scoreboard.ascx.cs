namespace netba
{
	using System;
	using System.Data;
	using System.Drawing;
	using System.Web;
	using System.Web.UI.WebControls;
	using System.Web.UI.HtmlControls;
	using Microsoft.ApplicationBlocks.Data;

	/// <summary>
	///		Summary description for Scoreboard.
	/// </summary>
	public partial class Scoreboard : System.Web.UI.UserControl
	{

		protected void Page_Load(object sender, System.EventArgs e)
		{
			DataSet scores = SqlHelper.ExecuteDataset( System.Configuration.ConfigurationSettings.AppSettings[ "ConnectionString" ],
				"spGetScores" );
			dlGames.DataSource = scores;
			dlGames.DataBind();
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
