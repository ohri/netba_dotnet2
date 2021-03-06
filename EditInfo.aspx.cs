﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Microsoft.ApplicationBlocks.Data;
using netba;

public partial class EditInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if ( !IsPostBack )
        {
            DataSet owners = SqlHelper.ExecuteDataset( 
                System.Configuration.ConfigurationSettings.AppSettings["ConnectionString"],
                "spGetOwnerInfo",
                Page.User.Identity.Name );

            tbFirstName.Text = owners.Tables[0].Rows[0]["FirstName"].ToString();
            tbLastName.Text = owners.Tables[0].Rows[0]["LastName"].ToString();
            tbEmail.Text = owners.Tables[0].Rows[0]["EmailAddress"].ToString();
            tbIM.Text = owners.Tables[0].Rows[0]["IMInfo"].ToString();
            tbCity.Text = owners.Tables[0].Rows[0]["City"].ToString();
            tbState.Text = owners.Tables[0].Rows[0]["State"].ToString();
        }
    }
    protected void btnCancel_Click( object sender, EventArgs e )
    {
        int teamid = DBUtilities.GetUsersTeamId( Page.User.Identity.Name );

        Response.Redirect( "teampage.aspx?teamid=" + teamid );
    }
    protected void btnSave_Click( object sender, EventArgs e )
    {
        int dc = (int)SqlHelper.ExecuteScalar(
            System.Configuration.ConfigurationSettings.AppSettings["ConnectionString"],
            "spSetOwnerInfo",
            Page.User.Identity.Name,
            tbFirstName.Text,
            tbLastName.Text,
            tbEmail.Text,
            tbIM.Text,
            tbCity.Text,
            tbState.Text );

        int teamid = DBUtilities.GetUsersTeamId( Page.User.Identity.Name );

        Response.Redirect( "teampage.aspx?teamid=" + teamid );
    }
}
