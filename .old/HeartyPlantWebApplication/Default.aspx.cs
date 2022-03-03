using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HeartyPlantWebApplication
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.Page.IsPostBack)
            {
                Label1.Visible= false;
                Label2.Visible=false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (txtkey.Text=="1234")
            {
                Label1.Visible = true;
                Label2.Visible = false;
            }
            else
            {
                Label1.Visible = false;
                Label2.Visible = true;
                grid.Visible = false;
            }
        }
    }
}