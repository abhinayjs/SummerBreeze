using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SummerBreeze
{
	public partial class Page5_OOP : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
        }

        protected void btnRandomString_Click(object sender, EventArgs e)
        {
            SomeObject obj = new SomeObject();
            txtString.Text= obj.RandomString();
        }

        protected void btnRandomIndex_Click(object sender, EventArgs e)
        {
            SomeObject obj = new SomeObject();
            ddlRandomIndex.SelectedIndex= obj.RandomNumber();
        }
	}
}