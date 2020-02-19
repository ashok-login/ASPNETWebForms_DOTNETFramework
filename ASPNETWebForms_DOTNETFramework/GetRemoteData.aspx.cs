using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ASPNETWebForms_DOTNETFramework
{
    public partial class GetRemoteData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                FillBots();
            }
        }

        private void FillBots()
        {
            var bots = new List<string>
            {
                "Assessment",
                "Education",
                "Traning",
                "Support",
                "HR Operations"
            };
            ddlBot.DataSource = bots;
            ddlBot.DataBind();
        }

        protected void ddlBot_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (ddlBot.SelectedIndex)
            {
                case 0: // Assessment bot

                    break;
                case 1: // Education bot
                    break;
                case 2: // Training bot
                    break;
                case 3: // Support bot
                    break;
                case 4: // HR Operations
                    break;
                default:
                    break;
            }
        }
    }
}
