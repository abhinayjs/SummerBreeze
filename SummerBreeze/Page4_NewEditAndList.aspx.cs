using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SummerBreeze
{
	public partial class Page4_NewEditAndList : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            if (Request.Url.AbsoluteUri.ToLower().Contains("page4_neweditandlist.aspx"))
            {
                btnCreateCustomer.Visible = true;
                btnViewCustomer.Visible = false;
                lblUpdate.Visible = false;
                fvCustomer.Visible = false;
            }
        }

        protected void gv2Customer_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            fvCustomer.ChangeMode(FormViewMode.Edit);
            fvCustomer.Visible = true;
            gv2Customer.Visible = false;
        }

        protected void fvCustomer_ItemUpdated(object sender, FormViewUpdatedEventArgs e)
        {
            lblUpdate.Visible = true;
            fvCustomer.Visible = false;
            gv2Customer.Visible = true;
            gv2Customer.DataBind();
            fvCustomer.ChangeMode(FormViewMode.Insert);
            fvCustomer.DataSource = null;
            fvCustomer.DataBind();
        }

        protected void fvCustomer_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            lblSuccess.Visible = true;
            gv2Customer.DataBind();
            gv2Customer.Visible = true;
            btnCreateCustomer.Visible = true;
            btnViewCustomer.Visible = false;
            fvCustomer.DataSource = null;
            fvCustomer.DataBind();
        }

        protected void fvCustomer_ItemCommand(object sender, FormViewCommandEventArgs e)
        {
            if (e.CommandName == "Cancel")
            {
                fvCustomer.Visible = false;
                gv2Customer.Visible = true;
            }
        }
        protected void btnCreateCustomer_Click(object sender, EventArgs e)
        {
            fvCustomer.ChangeMode(FormViewMode.Insert);
            gv2Customer.Visible = false;
            fvCustomer.Visible = true;
            btnViewCustomer.Visible = true;
            btnCreateCustomer.Visible = false;
            lblUpdate.Visible = false;
            lblSuccess.Visible = false;
        }

        protected void btnViewCustomer_Click(object sender, EventArgs e)
        {
            gv2Customer.Visible = true;
            fvCustomer.Visible = false;
            btnViewCustomer.Visible = false;
            btnCreateCustomer.Visible = true;
            lblUpdate.Visible = false;
            lblSuccess.Visible = false;
        }
    }
}