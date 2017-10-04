using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SummerBreeze
{
	public partial class Page3_NewAndList : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
            if (!IsPostBack)
            {
                GridView gvCustomer = (GridView)UCCustomerFormView.FindControl("gvCustomer");
                FormView fvCustomer = (FormView)UCCustomerFormView.FindControl("fvCustomer");
                Button btnCreateCustomer = (Button)UCCustomerFormView.FindControl("btnCreateCustomer");
                Button btnViewCustomer = (Button)UCCustomerFormView.FindControl("btnViewCustomer");

                gvCustomer.Visible = false;
                fvCustomer.Visible = true;
                btnCreateCustomer.Visible = false;
                btnViewCustomer.Visible = true;
            }            
        }
        //protected void fvCustomer_ItemInserted(object sender, FormViewInsertedEventArgs e)
        //{
        //    GridView gvCustomer = (GridView)UCCustomerFormView.FindControl("gvCustomer");
        //    FormView fvCustomer = (FormView)UCCustomerFormView.FindControl("fvCustomer");
        //    Button btnCreateCustomer = (Button)UCCustomerFormView.FindControl("btnCreateCustomer");
        //    Button btnViewCustomer = (Button)UCCustomerFormView.FindControl("btnViewCustomer");
        //    Label lblSuccess = (Label)UCCustomerFormView.FindControl("lblSuccess");
        //    lblSuccess.Visible = true;
        //    //gvCustomer.DataBind();
        //    fvCustomer.Visible = false;
        //    gvCustomer.Visible = true;
        //    btnCreateCustomer.Visible = true;
        //    btnViewCustomer.Visible = false;
        //}

        //protected void gvCustomer_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        //{
        //    Label lblSuccess = (Label)UCCustomerFormView.FindControl("lblSuccess");
        //    Label lblUpdate = (Label)UCCustomerFormView.FindControl("lblUpdate");
        //    lblUpdate.Visible = true;
        //    lblSuccess.Visible = false;
        //}

        //protected void gvCustomer_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    Label lblSuccess = (Label)UCCustomerFormView.FindControl("lblSuccess");
        //    lblSuccess.Visible = false;
        //}

        //protected void btnCreateCustomer_Click(object sender, EventArgs e)
        //{
        //    GridView gvCustomer = (GridView)UCCustomerFormView.FindControl("gvCustomer");
        //    FormView fvCustomer = (FormView)UCCustomerFormView.FindControl("fvCustomer");
        //    Button btnCreateCustomer = (Button)UCCustomerFormView.FindControl("btnCreateCustomer");
        //    Button btnViewCustomer = (Button)UCCustomerFormView.FindControl("btnViewCustomer");
        //    Label lblSuccess = (Label)UCCustomerFormView.FindControl("lblSuccess");
        //    Label lblUpdate = (Label)UCCustomerFormView.FindControl("lblUpdate");

        //    gvCustomer.Visible = false;
        //    fvCustomer.Visible = true;
        //    btnViewCustomer.Visible = true;
        //    btnCreateCustomer.Visible = false;
        //    lblUpdate.Visible = false;
        //    lblSuccess.Visible = false;
        //}

        //protected void btnViewCustomer_Click(object sender, EventArgs e)
        //{
        //    GridView gvCustomer = (GridView)UCCustomerFormView.FindControl("gvCustomer");
        //    FormView fvCustomer = (FormView)UCCustomerFormView.FindControl("fvCustomer");
        //    Button btnCreateCustomer = (Button)UCCustomerFormView.FindControl("btnCreateCustomer");
        //    Button btnViewCustomer = (Button)UCCustomerFormView.FindControl("btnViewCustomer");
        //    Label lblSuccess = (Label)UCCustomerFormView.FindControl("lblSuccess");
        //    Label lblUpdate = (Label)UCCustomerFormView.FindControl("lblUpdate");
        //    gvCustomer.Visible = true;
        //    fvCustomer.Visible = false;
        //    btnViewCustomer.Visible = false;
        //    btnCreateCustomer.Visible = true;
        //    lblUpdate.Visible = false;
        //    lblSuccess.Visible = false;
        //}

    }
}