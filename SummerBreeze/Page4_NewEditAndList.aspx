<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Page4_NewEditAndList.aspx.cs" Inherits="SummerBreeze.Page4_NewEditAndList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="CurrentPage" runat="server">
    New, Edit, and List
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="Instructions" runat="server">
    This page is just like page 3 (new and list) except that you will not do inline
  editing. when you click on edit, you will load the item in the formview (which should
  then be put into edit/update mode).
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div>
        <div>
            <asp:Button ID="btnCreateCustomer" runat="server" Text="Create Customer" Visible="false" CssClass="btn btn-primary" OnClick="btnCreateCustomer_Click" />
            <asp:Button ID="btnViewCustomer" runat="server" Text="View Customer" CssClass="btn btn-primary" Visible="false" OnClick="btnViewCustomer_Click" />
            <asp:Label ID="lblSuccess" class="label label-success" Font-Size="Medium" Text="Registration Successful" Visible="false" runat="server" />
            <asp:Label ID="lblUpdate" class="label label-success" Font-Size="Medium" Text="Details Updated Successfully" Visible="false" runat="server" />
        </div>
        <br />
        <asp:FormView ID="fvCustomer" runat="server" DataKeyNames="CustomerID" DataSourceID="fvDataSource" DefaultMode="Insert" OnItemInserted="fvCustomer_ItemInserted" OnItemUpdated="fvCustomer_ItemUpdated" OnItemCommand="fvCustomer_ItemCommand">
            <EditItemTemplate>
                <div>
                    <%--<div class="form-group">
                        <label for="firstName">First Name:</label>
                        <asp:TextBox class="form-control" ID="FirstNameTextBox" placeholder="First Name" runat="server" Text='<%# Bind("FirstName") %>' />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="FirstNameTextBox" ValidationGroup="update" ForeColor="Red" ErrorMessage="First Name is Required" />
                    </div>
                    <div class="form-group">
                        <label for="middleName">Middle Name:</label>
                        <asp:TextBox class="form-control" ID="MiddleNameTextBox" placeholder="Middle Name" runat="server" Text='<%# Bind("MiddleName") %>' />
                    </div>
                    <div class="form-group">
                        <label for="lastName">Last Name:</label>
                        <asp:TextBox class="form-control" ID="LastNameTextBox" placeholder="Last Name" runat="server" Text='<%# Bind("LastName") %>' />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="LastNameTextBox" ValidationGroup="update" ForeColor="Red" ErrorMessage="Last Name is Required" />
                    </div>
                    <div class="form-group">
                        <label for="customerTitle">Title:</label>
                        <asp:TextBox class="form-control" ID="CustomerTitleTextBox" placeholder="Customer Title" runat="server" Text='<%# Bind("CustomerTitle") %>' />
                    </div>
                    <div class="form-group">
                        <label for="Address1TextBox">Address:</label>
                        <asp:TextBox class="form-control" ID="Address1TextBox" TextMode="multiline" Columns="50" Rows="5" runat="server" Text='<%# Bind("Address1") %>' />
                    </div>
                    <div class="form-group">
                        <label for="CityTextBox">City:</label>
                        <asp:TextBox class="form-control" ID="CityTextBox" placeholder="City" runat="server" Text='<%# Bind("City") %>' />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="CityTextBox" ValidationGroup="update" ForeColor="Red" ErrorMessage="City is Required" />
                    </div>
                    <div class="form-group">
                        <label for="StateIDTextBox">State:</label>
                        <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" Text='<%# Bind("StateID") %>' DataSourceID="dsState" DataTextField="StateName" DataValueField="StateID" />
                        <asp:SqlDataSource ID="dsState" runat="server" ConnectionString="<%$ ConnectionStrings:SummerBreezeConnectionString %>" SelectCommand="adn_State_SELECT" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </div>
                    <div class="form-group">
                        <label for="CountryIDTextBox">Country:</label>
                        <asp:DropDownList class="form-control" ID="CountryIDTextBox" runat="server" Text='<%# Bind("CountryID") %>' DataSourceID="dsCountry" DataTextField="CountryName" DataValueField="CountryID" />
                        <asp:SqlDataSource ID="dsCountry" runat="server" ConnectionString="<%$ ConnectionStrings:SummerBreezeConnectionString %>" SelectCommand="adn_Country_SELECT" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </div>
                    <div class="form-group">
                        <label for="PostalCodeTextBox">PostalCode:</label>
                        <asp:TextBox class="form-control" ID="PostalCodeTextBox" placeholder="Postal Code" runat="server" Text='<%# Bind("PostalCode") %>' />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="PostalCodeTextBox" ValidationGroup="update" ForeColor="Red" ErrorMessage="Postal Code is Required" />
                    </div>
                    <div class="form-group">
                        <label for="EmailTextBox">Email:</label>
                        <asp:TextBox class="form-control" ID="EmailTextBox" placeholder="Enter email" runat="server" Text='<%# Bind("Email") %>' />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="EmailTextBox" ValidationGroup="update" ForeColor="Red" ErrorMessage="Email is Required" />
                        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationGroup="update" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="EmailTextBox" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                        <small class="text-muted">We'll never share your email with anyone else.</small>
                    </div>--%>
                    <div class="col-md-12" style="padding-right : 0 !important; margin-top : 5px;">
                        <label class="col-md-4 control-label" for="Name">Name:</label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox class="form-control" ID="NameTextBox" placeholder="Name" runat="server" Text='<%# Bind("CustomerName") %>' />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="NameTextBox" ValidationGroup="update" ForeColor="Red" ErrorMessage="Name is Required" />
                        </div>
                        
                    </div>
                    <div class="col-md-12" style="padding-right : 0 !important; margin-top : 5px;">
                        <label class="col-md-4 control-label" for="customerTitle">Title:</label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox class="form-control" ID="CustomerTitleTextBox" placeholder="Title" runat="server" Text='<%# Bind("CustomerTitle") %>' />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12" style="padding-right : 0 !important; margin-top : 5px;">
                        <label class="col-md-4 control-label" for="Address1TextBox">Address:</label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                <asp:TextBox class="form-control" ID="Address1TextBox" TextMode="multiline" Columns="50" Rows="5" runat="server" Text='<%# Bind("Address1") %>' />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12" style="padding-right : 0 !important; margin-top : 5px;">
                        <label class="col-md-4 control-label" for="CityTextBox">City:</label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                <asp:TextBox class="form-control" ID="CityTextBox" placeholder="City" runat="server" Text='<%# Bind("City") %>' />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="CityTextBox" ValidationGroup="update" ForeColor="Red" ErrorMessage="City is Required" />
                        </div>
                    </div>
                    <div class="col-md-12" style="padding-right : 0 !important; margin-top : 5px;">
                        <label class="col-md-4 control-label" for="StateIDTextBox">State:</label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                                <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" Text='<%# Bind("StateID") %>' DataSourceID="dsState" DataTextField="StateName" DataValueField="StateID" />
                            </div>
                        </div>
                        <asp:SqlDataSource ID="dsState" runat="server" ConnectionString="<%$ ConnectionStrings:SummerBreezeConnectionString %>" SelectCommand="adn_State_SELECT" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </div>
                    <div class="col-md-12" style="padding-right : 0 !important; margin-top : 5px;">
                        <label class="col-md-4 control-label" for="CountryIDTextBox">Country:</label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-globe"></i></span>
                                <asp:DropDownList class="form-control" ID="CountryIDTextBox" runat="server" Text='<%# Bind("CountryID") %>' DataSourceID="dsCountry" DataTextField="CountryName" DataValueField="CountryID" />
                            </div>
                        </div>
                        <asp:SqlDataSource ID="dsCountry" runat="server" ConnectionString="<%$ ConnectionStrings:SummerBreezeConnectionString %>" SelectCommand="adn_Country_SELECT" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </div>
                    <div class="col-md-12" style="padding-right : 0 !important; margin-top : 5px;">
                        <label class="col-md-4 control-label" for="PostalCodeTextBox">PostalCode:</label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                <asp:TextBox class="form-control" ID="PostalCodeTextBox" placeholder="Postal Code" runat="server" Text='<%# Bind("PostalCode") %>' />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="PostalCodeTextBox" ValidationGroup="update" ForeColor="Red" ErrorMessage="Postal Code is Required" />
                        </div>
                    </div>
                    <div class="col-md-12" style="padding-right : 0 !important; margin-top : 5px;">
                        <label class="col-md-4 control-label" for="EmailTextBox">Email:</label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                <asp:TextBox class="form-control" ID="EmailTextBox" placeholder="Enter email" runat="server" Text='<%# Bind("Email") %>' />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="EmailTextBox" ValidationGroup="update" ForeColor="Red" ErrorMessage="Email is Required" />
                            <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationGroup="update" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ControlToValidate="EmailTextBox" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="col-md-12" style="padding-right : 0 !important; margin-top : 5px;">
                        <label class="col-md-4 control-label" for="ModifyByTextBox">Modified By:</label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                <asp:TextBox class="form-control" ID="ModifyByTextBox" runat="server" Text='<%# Bind("ModifyBy") %>' />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="ModifyByTextBox" ValidationGroup="update" ForeColor="Red" ErrorMessage="This Field is Required" />
                        </div>
                    </div>
                </div>
                <div class="col-md-12" style="padding-right : 0 !important; margin-top : 5px;">
                    <label class="col-md-4 control-label"></label>
                        <div class="col-md-4">
                            <asp:Button ID="UpdateButton" runat="server" CausesValidation="True" CssClass="btn btn-primary" CommandName="Update" ValidationGroup="update" Text="Update" />
                            <asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" CssClass="btn btn-cancel" CommandName="Cancel" Text="Cancel" />
                        </div>
                </div>
            </EditItemTemplate>
            <InsertItemTemplate>
                <%--<div class="form-group">
                    <label for="firstName">First Name:</label>
                    <asp:TextBox class="form-control" ID="FirstNameTextBox" placeholder="First Name" runat="server" Text='<%# Bind("FirstName") %>' />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="FirstNameTextBox" ValidationGroup="formviewInsert" ForeColor="Red" ErrorMessage="First Name is Required" />
                </div>
                <div class="form-group">
                    <label for="middleName">Middle Name:</label>
                    <asp:TextBox class="form-control" ID="MiddleNameTextBox" placeholder="Middle Name" runat="server" Text='<%# Bind("MiddleName") %>' />
                </div>
                <div class="form-group">
                    <label for="lastName">Last Name:</label>
                    <asp:TextBox class="form-control" ID="LastNameTextBox" placeholder="Last Name" runat="server" Text='<%# Bind("LastName") %>' />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="LastNameTextBox" ValidationGroup="formviewInsert" ForeColor="Red" ErrorMessage="Last Name is Required" />
                </div>
                <div class="form-group">
                    <label for="customerTitle">CustomerTitle:</label>
                    <asp:TextBox class="form-control" ID="CustomerTitleTextBox" placeholder="Customer Title" runat="server" Text='<%# Bind("CustomerTitle") %>' />
                </div>
                <div class="form-group">
                    <label for="Address1TextBox">Address:</label>
                    <asp:TextBox class="form-control" ID="Address1TextBox" TextMode="multiline" Columns="50" Rows="5" runat="server" Text='<%# Bind("Address1") %>' />
                </div>
                <div class="form-group">
                    <label for="CityTextBox">City:</label>
                    <asp:TextBox class="form-control" ID="CityTextBox" placeholder="City" runat="server" Text='<%# Bind("City") %>' />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="CityTextBox" ValidationGroup="formviewInsert" ForeColor="Red" ErrorMessage="City is Required" />
                </div>
                <div class="form-group">
                    <label for="StateIDTextBox">State:</label>
                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" Text='<%# Bind("StateID") %>' DataSourceID="dsState" DataTextField="StateName" DataValueField="StateID" />
                    <asp:SqlDataSource ID="dsState" runat="server" ConnectionString="<%$ ConnectionStrings:SummerBreezeConnectionString %>" SelectCommand="adn_State_SELECT" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </div>
                <div class="form-group">
                    <label for="CountryIDTextBox">Country:</label>
                    <asp:DropDownList class="form-control" ID="CountryIDTextBox" runat="server" Text='<%# Bind("CountryID") %>' DataSourceID="dsCountry" DataTextField="CountryName" DataValueField="CountryID" />
                    <asp:SqlDataSource ID="dsCountry" runat="server" ConnectionString="<%$ ConnectionStrings:SummerBreezeConnectionString %>" SelectCommand="adn_Country_SELECT" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                </div>
                <div class="form-group">
                    <label for="PostalCodeTextBox">PostalCode:</label>
                    <asp:TextBox class="form-control" ID="PostalCodeTextBox" placeholder="Postal Code" runat="server" Text='<%# Bind("PostalCode") %>' />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="PostalCodeTextBox" ValidationGroup="formviewInsert" ForeColor="Red" ErrorMessage="Postal Code is Required" />
                </div>
                <div class="form-group">
                    <label for="EmailTextBox">Email:</label>
                    <asp:TextBox class="form-control" ID="EmailTextBox" placeholder="Enter email" runat="server" Text='<%# Bind("Email") %>' />
                    <asp:RequiredFieldValidator runat="server" ControlToValidate="EmailTextBox" ValidationGroup="formviewInsert" ForeColor="Red" ErrorMessage="Email is Required" />
                    <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationGroup="formviewInsert" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="EmailTextBox" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                </div>
                </div>
            <div class="form-group">
                <label for="CreateByTextBox">Created By:</label>
                <asp:TextBox class="form-control" ID="CreateByTextBox" runat="server" Text='<%# Bind("CreateBy") %>' />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="CreateByTextBox" ValidationGroup="formviewInsert" ForeColor="Red" ErrorMessage="This Field is Required" />
            </div>--%>
                <%--IsActive:
        <asp:CheckBox ID="IsActiveCheckBox" runat="server" Checked='<%# Bind("IsActive") %>' />
        <br />--%>
                <%-- CreateDate:
        <asp:TextBox ID="CreateDateTextBox" runat="server" Text='<%# Bind("CreateDate") %>' />
        <br />
        ModifyBy:
        <asp:TextBox ID="ModifyByTextBox" runat="server" Text='<%# Bind("ModifyBy") %>' />
        <br />
        ModifyDate:
        <asp:TextBox ID="ModifyDateTextBox" runat="server" Text='<%# Bind("ModifyDate") %>' />
        <br />
        StateName:
        <asp:TextBox ID="StateNameTextBox" runat="server" Text='<%# Bind("StateName") %>' />
        <br />
        CountryName:
        <asp:TextBox ID="CountryNameTextBox" runat="server" Text='<%# Bind("CountryName") %>' />
        <br />--%>
                <div class="col-md-12" style="padding-right : 0 !important; margin-top : 5px;">
                        <label class="col-md-4 control-label" for="Name">Name:</label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox class="form-control" ID="NameTextBox" placeholder="Name" runat="server" Text='<%# Bind("CustomerName") %>' />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="NameTextBox" ValidationGroup="formviewInsert" ForeColor="Red" ErrorMessage="Name is Required" />
                        </div>
                        
                    </div>
                    <div class="col-md-12" style="padding-right : 0 !important; margin-top : 5px;">
                        <label class="col-md-4 control-label" for="customerTitle">Title:</label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox class="form-control" ID="CustomerTitleTextBox" placeholder="Title" runat="server" Text='<%# Bind("CustomerTitle") %>' />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12" style="padding-right : 0 !important; margin-top : 5px;">
                        <label class="col-md-4 control-label" for="Address1TextBox">Address:</label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                <asp:TextBox class="form-control" ID="Address1TextBox" TextMode="multiline" Columns="50" Rows="5" runat="server" Text='<%# Bind("Address1") %>' />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12" style="padding-right : 0 !important; margin-top : 5px;">
                        <label class="col-md-4 control-label" for="CityTextBox">City:</label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                <asp:TextBox class="form-control" ID="CityTextBox" placeholder="City" runat="server" Text='<%# Bind("City") %>' />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="CityTextBox" ValidationGroup="formviewInsert" ForeColor="Red" ErrorMessage="City is Required" />
                        </div>
                    </div>
                    <div class="col-md-12" style="padding-right : 0 !important; margin-top : 5px;">
                        <label class="col-md-4 control-label" for="StateIDTextBox">State:</label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                                <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" Text='<%# Bind("StateID") %>' DataSourceID="dsState" DataTextField="StateName" DataValueField="StateID" />
                            </div>
                        </div>
                        <asp:SqlDataSource ID="dsState" runat="server" ConnectionString="<%$ ConnectionStrings:SummerBreezeConnectionString %>" SelectCommand="adn_State_SELECT" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </div>
                    <div class="col-md-12" style="padding-right : 0 !important; margin-top : 5px;">
                        <label class="col-md-4 control-label" for="CountryIDTextBox">Country:</label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-globe"></i></span>
                                <asp:DropDownList class="form-control" ID="CountryIDTextBox" runat="server" Text='<%# Bind("CountryID") %>' DataSourceID="dsCountry" DataTextField="CountryName" DataValueField="CountryID" />
                            </div>
                        </div>
                        <asp:SqlDataSource ID="dsCountry" runat="server" ConnectionString="<%$ ConnectionStrings:SummerBreezeConnectionString %>" SelectCommand="adn_Country_SELECT" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </div>
                    <div class="col-md-12" style="padding-right : 0 !important; margin-top : 5px;">
                        <label class="col-md-4 control-label" for="PostalCodeTextBox">PostalCode:</label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                <asp:TextBox class="form-control" ID="PostalCodeTextBox" placeholder="Postal Code" runat="server" Text='<%# Bind("PostalCode") %>' />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="PostalCodeTextBox" ValidationGroup="formviewInsert" ForeColor="Red" ErrorMessage="Postal Code is Required" />
                        </div>
                    </div>
                    <div class="col-md-12" style="padding-right : 0 !important; margin-top : 5px;">
                        <label class="col-md-4 control-label" for="EmailTextBox">Email:</label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
                                <asp:TextBox class="form-control" ID="EmailTextBox" placeholder="Enter email" runat="server" Text='<%# Bind("Email") %>' />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="EmailTextBox" ValidationGroup="formviewInsert" ForeColor="Red" ErrorMessage="Email is Required" />
                            <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationGroup="formviewInsert" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="Red" ControlToValidate="EmailTextBox" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                        </div>
                    </div>
                    <div class="col-md-12" style="padding-right : 0 !important; margin-top : 5px;">
                        <label class="col-md-4 control-label" for="CreateByTextBox">Created By:</label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox class="form-control" ID="CreateByTextBox" runat="server" Text='<%# Bind("CreateBy") %>' />
                            </div>
                        </div>
                        <div class="col-md-4">
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="CreateByTextBox" ValidationGroup="formviewInsert" ForeColor="Red" ErrorMessage="This Field is Required" />
                        </div>
                    </div>
                <div class="col-md-12" style="padding-right : 0 !important; margin-top : 5px;">
                    <label class="col-md-4 control-label"></label>
                        <div class="col-md-4">
                            <asp:Button ID="InsertButton1" runat="server" ValidationGroup="formviewInsert" CausesValidation="True" CssClass="btn btn-primary" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CssClass="btn btn-cancel" CommandName="Cancel" Text="Cancel" />
                        </div>
                </div>
            </InsertItemTemplate>
            <ItemTemplate>
                CustomerID:
                <asp:Label ID="CustomerIDLabel" runat="server" Text='<%# Eval("CustomerID") %>' />
                <br />
                Name:
                <asp:Label ID="NameLabel" runat="server" Text='<%# Bind("CustomerName") %>' />
                <br />
                CustomerTitle:
                <asp:Label ID="CustomerTitleLabel" runat="server" Text='<%# Bind("CustomerTitle") %>' />
                <br />
                Address1:
                <asp:Label ID="Address1Label" runat="server" Text='<%# Bind("Address1") %>' />
                <br />
                City:
                <asp:Label ID="CityLabel" runat="server" Text='<%# Bind("City") %>' />
                <br />
                StateID:
                <asp:Label ID="StateIDLabel" runat="server" Text='<%# Bind("StateID") %>' />
                <br />
                CountryID:
                <asp:Label ID="CountryIDLabel" runat="server" Text='<%# Bind("CountryID") %>' />
                <br />
                PostalCode:
                <asp:Label ID="PostalCodeLabel" runat="server" Text='<%# Bind("PostalCode") %>' />
                <br />
                Email:
                <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
                <br />
                IsActive:
                <asp:CheckBox ID="IsActiveCheckBox" runat="server" Checked='<%# Bind("IsActive") %>' Enabled="false" />
                <br />
                ModifyBy:
                <asp:Label ID="ModifyByLabel" runat="server" Text='<%# Bind("ModifyBy") %>' />
                <br />
                ModifyDate:
                <asp:Label ID="ModifyDateLabel" runat="server" Text='<%# Bind("ModifyDate") %>' />
                <br />
                CreateBy:
                <asp:Label ID="CreateByLabel" runat="server" Text='<%# Bind("CreateBy") %>' />
                <br />
                CreateDate:
                <asp:Label ID="CreateDateLabel" runat="server" Text='<%# Bind("CreateDate") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="fvDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:SummerBreezeConnectionString %>" SelectCommand="Select *from Customer where CustomerID =@CustomerID
"
            UpdateCommand="adn_Customer_UPDATE" UpdateCommandType="StoredProcedure" InsertCommand="adn_Customer_INSERT" InsertCommandType="StoredProcedure">
            <SelectParameters>
                <asp:ControlParameter ControlID="gv2Customer" Name="CustomerID" PropertyName="SelectedValue" />
            </SelectParameters>
            <InsertParameters>
                <asp:Parameter Name="CustomerName" Type="String" />
                <asp:Parameter Name="CustomerTitle" Type="String" />
                <asp:Parameter Name="Address1" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="StateID" Type="Int32" />
                <asp:Parameter Name="PostalCode" Type="String" />
                <asp:Parameter Name="CountryID" Type="Int32" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="CreateBy" Type="String" />
  
                <asp:Parameter Direction="InputOutput" Name="CustomerID" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="CustomerID" Type="Int32" />
                <asp:Parameter Name="CustomerName" Type="String" />
                <asp:Parameter Name="CustomerTitle" Type="String" />
                <asp:Parameter Name="Address1" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="StateID" Type="Int32" />
                <asp:Parameter Name="PostalCode" Type="String" />
                <asp:Parameter Name="CountryID" Type="Int32" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="ModifyBy" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    <div style="max-width: 100%; overflow-y: scroll;">
        <asp:GridView CssClass="table table-hover table-striped" ID="gv2Customer" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="gv2DataSource" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanging="gv2Customer_SelectedIndexChanging">
            <Columns>
                <asp:CommandField ShowSelectButton="True" />
                <asp:BoundField DataField="CustomerName" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="CustomerTitle" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Address1" HeaderText="Address" SortExpression="Address1" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:TemplateField HeaderText="State" SortExpression="StateID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("StateID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label1" runat="server" Text='<%# Bind("StateName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
                <asp:TemplateField HeaderText="Country" SortExpression="CountryID">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("CountryID") %>'></asp:TextBox>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="Label2" runat="server" Text='<%# Bind("CountryName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="ModifyBy" HeaderText="ModifyBy" SortExpression="ModifyBy" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="gv2DataSource" runat="server" ConnectionString="<%$ ConnectionStrings:SummerBreezeConnectionString %>" SelectCommand="adn_Customer_SELECT" SelectCommandType="StoredProcedure" UpdateCommand="adn_Customer_UPDATE" UpdateCommandType="StoredProcedure">
            <UpdateParameters>
                <asp:Parameter Name="CustomerID" Type="Int32" />
                <asp:Parameter Name="CustomerName" Type="String" />
                <asp:Parameter Name="CustomerTitle" Type="String" />
                <asp:Parameter Name="Address1" Type="String" />
                <asp:Parameter Name="City" Type="String" />
                <asp:Parameter Name="StateID" Type="Int32" />
                <asp:Parameter Name="PostalCode" Type="String" />
                <asp:Parameter Name="CountryID" Type="Int32" />
                <asp:Parameter Name="Email" Type="String" />
                <asp:Parameter Name="ModifyBy" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
</asp:Content>
