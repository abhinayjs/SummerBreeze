using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace SummerBreeze.UserControls
{
    public partial class UCCustomerFormView : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Url.AbsoluteUri.ToLower().Contains("page3_list.aspx"))
                {
                    gvCustomer.AutoGenerateEditButton = true;
                }
                //if (Request.Url.AbsoluteUri.ToLower().Contains("page1_new.aspx"))
                //{
                //    gvCustomer.Visible = false;
                //}
                //if (Request.Url.AbsoluteUri.ToLower().Contains("page2_list.aspx"))
                //{
                //    fvCustomer.Visible = false;
                //}
                //if (Request.Url.AbsoluteUri.ToLower().Contains("page3_newandlist.aspx"))
                //{
                //    gvCustomer.Visible = false;
                //    fvCustomer.Visible = true;
                //    btnCreateCustomer.Visible = false;
                //    btnViewCustomer.Visible = true;
                //}
            }
        }
        protected void fvCustomer_ItemInserted(object sender, FormViewInsertedEventArgs e)
        {
            lblSuccess.Visible = true;
            if (Request.Url.AbsoluteUri.ToLower().Contains("page3_newandlist.aspx"))
            {
                gvCustomer.AutoGenerateEditButton = true;
                fvCustomer.Visible = false;
                gvCustomer.Visible = true;
                btnCreateCustomer.Visible = true;
                btnViewCustomer.Visible = false;
            }
            gvCustomer.DataBind();
            fvCustomer.DataSource = null;
            fvCustomer.DataBind();
        }

        protected void gvCustomer_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            lblUpdate.Visible = true;
            lblSuccess.Visible = false;
        }

    protected void gvCustomer_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblSuccess.Visible = false;
        }

        protected void btnCreateCustomer_Click(object sender, EventArgs e)
        {
            gvCustomer.Visible = false;
            fvCustomer.Visible = true;
            btnViewCustomer.Visible = true;
            btnCreateCustomer.Visible = false;
            lblUpdate.Visible = false;
            lblSuccess.Visible = false;
        }

        protected void btnViewCustomer_Click(object sender, EventArgs e)
        {
            if (!Request.Url.AbsoluteUri.ToLower().Contains("page3_list.aspx"))
            {
                gvCustomer.AutoGenerateEditButton = true;
            }
            gvCustomer.Visible = true;
            fvCustomer.Visible = false;
            btnViewCustomer.Visible = false;
            btnCreateCustomer.Visible = true;
            lblUpdate.Visible = false;
            lblSuccess.Visible = false;
        }

    }
}