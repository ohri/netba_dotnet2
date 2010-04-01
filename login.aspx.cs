using System;
using System.Collections;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using Encryption;
using Microsoft.ApplicationBlocks.Data;
using System.Web.Security;
using Logger;

namespace netba
{
	/// <summary>
	/// Summary description for login.
	/// </summary>
	public partial class login : System.Web.UI.Page
	{
	
		protected void Page_Load(object sender, System.EventArgs e)
		{
			if( Page.IsPostBack ) 
			{
				if( TextPassword.Text.Length > 0 )
				{
					// get the hashed password from the db
					DataSet ds = null;
//					try
//					{
						ds = SqlHelper.ExecuteDataset( System.Configuration.ConfigurationSettings.AppSettings[ "ConnectionString" ],
							"spGetPassword", TextUsername.Text );
						if( SaltedHash.ValidatePassword( TextPassword.Text, (string)ds.Tables[0].Rows[0][0] ) ) 
						{
							Log.AddLogEntry( Logger.LogEntryTypes.Login, TextUsername.Text, "User successfully logged in" );
							FormsAuthentication.RedirectFromLoginPage( TextUsername.Text, false );
						}
						else 
						{
							Log.AddLogEntry( Logger.LogEntryTypes.FailedLogin, TextUsername.Text, "User failed to log in" );
							lblMessage.Text = "Login attempt failed.";
						}
                    //}
                    //catch( Exception ex )
                    //{
                    //    Log.AddLogEntry( Logger.LogEntryTypes.FailedLogin, TextUsername.Text, "User failed to log in" );
                    //    lblMessage.Text = "Unknown username";
                    //}

				}
				else
				{
					Log.AddLogEntry( Logger.LogEntryTypes.FailedLogin, TextUsername.Text, "User failed to log in" );
					lblMessage.Text = "Login attempt failed.";
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
		
		/// <summary>
		/// Required method for Designer support - do not modify
		/// the contents of this method with the code editor.
		/// </summary>
		private void InitializeComponent()
		{    

		}
		#endregion

	}
}
