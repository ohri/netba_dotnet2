namespace netba
{
	using System;
	using System.Data;
	using System.Drawing;
	using System.Web;
	using System.Web.UI.WebControls;
	using System.Web.UI.HtmlControls;

	/// <summary>
	///		Summary description for header.
	/// </summary>
	public partial  class header : System.Web.UI.UserControl
	{
        protected System.Web.UI.WebControls.ImageButton ImageButton1;

		protected void Page_Load(object sender, System.EventArgs e)
		{
			// Put user code to initialize the page here
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

        private void ImageButton1_Click(object sender, System.Web.UI.ImageClickEventArgs e)
        {
        
        }

        /// <summary>
        /// Sets the titel of the page that will appear in the html.
        /// </summary>
        public string Title
        {
            set
            {
                lblPageTitle.Text = value;
            }
        }
	}
}
