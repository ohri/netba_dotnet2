using System;
using System.Data;
using Microsoft.ApplicationBlocks.Data;

namespace netba
{
	/// <summary>
	/// Summary description for DBUtilities.
	/// </summary>
	public class DBUtilities
	{
        static public string Connection
        {
            get
            {
                return System.Configuration.ConfigurationSettings.AppSettings[ "ConnectionString" ];
            }
        }

        public DBUtilities()
		{
		}

		public static bool IsUserAdmin( string username )
		{
			DataSet ownerinfo = SqlHelper.ExecuteDataset( System.Configuration.ConfigurationSettings.AppSettings[ "ConnectionString" ],
				"spGetOwnerInfo", username );
			return (bool)ownerinfo.Tables[0].Rows[0]["IsAdmin"];
		}

		public static int GetUsersTeamId( string username )
		{
			DataSet ownerinfo = SqlHelper.ExecuteDataset( System.Configuration.ConfigurationSettings.AppSettings[ "ConnectionString" ],
				"spGetOwnerInfo", username );
			return (int)ownerinfo.Tables[0].Rows[0]["TeamId"];
		}

		public static int GetCurrentWeekId()
		{
			return (int) SqlHelper.ExecuteScalar( System.Configuration.ConfigurationSettings.AppSettings[ "ConnectionString" ],
				"spGetCurrentWeekId" );
		}

		public static int GetLineupWeekId()
		{
            int retval;
            object x = SqlHelper.ExecuteScalar( System.Configuration.ConfigurationSettings.AppSettings[ "ConnectionString" ],
				"spGetNextWeekId" );
            try
            {
                retval = (int)x;
            }
            catch( InvalidCastException e )
            {
                retval = -1;
            }
            return retval;
		}

		public static int GetCurrentSeasonId()
		{
			return (int) SqlHelper.ExecuteScalar( System.Configuration.ConfigurationSettings.AppSettings[ "ConnectionString" ],
				"spFetchCurrentSeason" );
		}

		public static int GetStatSeasonId()
		{
			return (int) SqlHelper.ExecuteScalar( System.Configuration.ConfigurationSettings.AppSettings[ "ConnectionString" ],
				"spFetchStatSeasonId" );
		}

		public static bool DraftIsOpen()
		{
			return (bool) SqlHelper.ExecuteScalar( System.Configuration.ConfigurationSettings.AppSettings[ "ConnectionString" ],
				"spIsDraftOpen" );
		}

	}
}
