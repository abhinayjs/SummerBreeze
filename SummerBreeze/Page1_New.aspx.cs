﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SummerBreeze
{
	public partial class Page1_New : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            if (!IsPostBack)
            {
                GridView gvCustomer = (GridView)UCCustomerFormView1.FindControl("gvCustomer");
                gvCustomer.Visible = false;
            }
            
		}
	}
}