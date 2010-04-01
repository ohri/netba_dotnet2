using System.Data.SqlClient;
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
	///		Summary description for navbar.
	/// </summary>
	public partial  class navbar : System.Web.UI.UserControl
	{

        protected void Page_Load(object sender, System.EventArgs e)
        {
            // Put user code to initialize the page here
            if( !IsPostBack )
            {
				DataSet dsteams = SqlHelper.ExecuteDataset( 
                    System.Configuration.ConfigurationSettings.AppSettings[ "ConnectionString" ], 
                    @"spGetAllTeams" );
				
                ddlTeams.DataSource = dsteams;
                ddlTeams.DataTextField = "TeamAbbrev";
                ddlTeams.DataValueField = "TeamId";
                ddlTeams.DataBind();
				ddlTeams.Items.Insert( 0, "Team Pages" );

                int TradeCount = (int)SqlHelper.ExecuteScalar(
                    System.Configuration.ConfigurationSettings.AppSettings["ConnectionString"],
                    @"spGetTradeCount",
                    Page.User.Identity.Name );

                if ( TradeCount > 0 )
                {
                    lblTrades.Text = "Trades (" + TradeCount.ToString() + ")";
                }
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
		
		///		Required method for Designer support - do not modify
		///		the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{

		}
		#endregion

        protected void ddlTeams_SelectedIndexChanged(object sender, System.EventArgs e)
        {
			if( ddlTeams.SelectedIndex != 0 )
			{
				Response.Redirect( "TeamPage.aspx?TeamId=" + ddlTeams.SelectedItem.Value.ToString() );
			}
        }

		protected void ButtonSearch_Click(object sender, System.EventArgs e)
		{
			Session["SearchString"] = txtPlayerSearch.Text;
			Response.Redirect( "PlayerSearch.aspx" );
		}
	}
}
