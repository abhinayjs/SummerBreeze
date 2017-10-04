<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UCCustomerFormView.ascx.cs" Inherits="SummerBreeze.UserControls.UCCustomerFormView" %>
<style>
    .col-md-12{
        padding-right : 0 !important;
        margin-top : 5px;
    }
    .control-label{
        text-align : end;
    }
</style>
<div>
    <div>
        <div>
            <asp:Button ID="btnCreateCustomer" runat="server" Text="Create Customer" Visible="false" CssClass="btn btn-primary" OnClick="btnCreateCustomer_Click" OnClientClick="this.fvCustomer.reset();return false;"/>
            <asp:Button ID="btnViewCustomer" runat="server" Text="View Customer" CssClass="btn btn-primary" Visible="false" OnClick="btnViewCustomer_Click" />
            <asp:Label class="label label-success" ID="lblSuccess" Font-Size="Medium" Text="Registration Successful" Visible="false" runat="server" />
            <asp:Label class="label label-success" ID="lblUpdate" Font-Size="Medium" Text="Details Updated Successfully" Visible="false" runat="server" />
        </div>
    </div>
    <div>
        <asp:FormView ID="fvCustomer" runat="server" DataKeyNames="CustomerID" DataSourceID="dsFormView" DefaultMode="Insert" OnItemInserted="fvCustomer_ItemInserted">
            <%--<EditItemTemplate>
                <div class="row">
                    <div class="form-group">
                        <label for="customerName">CustomerName:</label>
                        <asp:TextBox class="form-control" ID="CustomerNameTextBox" placeholder="Customer Name" runat="server" Text='<%# Bind("CustomerName") %>' />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="CustomerNameTextBox" ValidationGroup="formviewInsert" ForeColor="Red" ErrorMessage="Customer Name is Required" />
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
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="CustomerNameTextBox" ValidationGroup="formviewInsert" ForeColor="Red" ErrorMessage="City is Required" />
                    </div>
                    <div class="form-group">
                        <label for="StateIDTextBox">State:</label>
                        <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" Text='<%# Bind("StateID") %>' DataSourceID="dsState" DataTextField="StateName" DataValueField="StateID" />
                        <asp:SqlDataSource ID="dsState" runat="server" ConnectionString="<%$ ConnectionStrings:SummerBreezeConnectionString %>" SelectCommand="adn_State_SELECT" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </div>
                    <div class="form-group">
                        <label for="PostalCodeTextBox">PostalCode:</label>
                        <asp:TextBox class="form-control" ID="PostalCodeTextBox" placeholder="Postal Code" runat="server" Text='<%# Bind("PostalCode") %>' />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="CustomerNameTextBox" ValidationGroup="formviewInsert" ForeColor="Red" ErrorMessage="Postal Code is Required" />
                    </div>
                    <div class="form-group">
                        <label for="CountryIDTextBox">Country:</label>
                        <asp:DropDownList class="form-control" ID="CountryIDTextBox" runat="server" Text='<%# Bind("CountryID") %>' DataSourceID="dsCountry" DataTextField="CountryName" DataValueField="CountryID" />
                        <asp:SqlDataSource ID="dsCountry" runat="server" ConnectionString="<%$ ConnectionStrings:SummerBreezeConnectionString %>" SelectCommand="adn_Country_SELECT" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </div>

                    <div class="form-group">
                        <label for="EmailTextBox">Email:</label>
                        <asp:TextBox class="form-control" ID="TextBox1" placeholder="Enter email" runat="server" Text='<%# Bind("Email") %>' />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="EmailTextBox" ValidationGroup="formviewInsert" ForeColor="Red" ErrorMessage="Email is Required" />
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ValidationGroup="formviewInsert" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="EmailTextBox" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group">
                        <label for="ModifyByTextBox">Modified By:</label>
                        <asp:TextBox class="form-control" ID="ModifyByTextBox" runat="server" Text='<%# Bind("ModifyBy") %>' />
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ModifyByTextBox" ValidationGroup="formviewUpdate" ForeColor="Red" ErrorMessage="This Field is Required" />
                    </div>
                    <div class="control-group">
                        <div class="controls">
                            <asp:Button CssClass="btn btn-success" ID="UpdateButton" runat="server" CausesValidation="True" ValidationGroup="formviewUpdate"
                                CommandName="Update" Text="Update" />
                            &nbsp;<asp:Button ID="UpdateCancelButton" runat="server" CausesValidation="False" CssClass="submitButton" CommandName="Cancel" Text="Cancel" />
                        </div>
                    </div>
                </div>
            </EditItemTemplate>--%>
            <InsertItemTemplate>
                <div>
                    <div class="col-md-12">
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
                    <div class="col-md-12">
                        <label class="col-md-4 control-label" for="customerTitle">Title:</label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                                <asp:TextBox class="form-control" ID="CustomerTitleTextBox" placeholder="Title" runat="server" Text='<%# Bind("CustomerTitle") %>' />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <label class="col-md-4 control-label" for="Address1TextBox">Address:</label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                                <asp:TextBox class="form-control" ID="Address1TextBox" TextMode="multiline" Columns="50" Rows="5" runat="server" Text='<%# Bind("Address1") %>' />
                            </div>
                        </div>
                    </div>
                    <div class="col-md-12">
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
                    <div class="col-md-12">
                        <label class="col-md-4 control-label" for="StateIDTextBox">State:</label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-list"></i></span>
                                <asp:DropDownList class="form-control" ID="DropDownList1" runat="server" Text='<%# Bind("StateID") %>' DataSourceID="dsState" DataTextField="StateName" DataValueField="StateID" />
                            </div>
                        </div>
                        <asp:SqlDataSource ID="dsState" runat="server" ConnectionString="<%$ ConnectionStrings:SummerBreezeConnectionString %>" SelectCommand="adn_State_SELECT" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </div>
                    <div class="col-md-12">
                        <label class="col-md-4 control-label" for="CountryIDTextBox">Country:</label>
                        <div class="col-md-4 inputGroupContainer">
                            <div class="input-group">
                                <span class="input-group-addon"><i class="glyphicon glyphicon-globe"></i></span>
                                <asp:DropDownList class="form-control" ID="CountryIDTextBox" runat="server" Text='<%# Bind("CountryID") %>' DataSourceID="dsCountry" DataTextField="CountryName" DataValueField="CountryID" />
                            </div>
                        </div>
                        <asp:SqlDataSource ID="dsCountry" runat="server" ConnectionString="<%$ ConnectionStrings:SummerBreezeConnectionString %>" SelectCommand="adn_Country_SELECT" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                    </div>
                    <div class="col-md-12">
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
                    <div class="col-md-12">
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
                    <div class="col-md-12">
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
                </div>
                <div class="col-md-12">
                    <label class="col-md-4 control-label"></label>
                        <div class="col-md-4">
                            <asp:Button ID="InsertButton1" runat="server" ValidationGroup="formviewInsert" CausesValidation="True" CssClass="btn btn-primary" CommandName="Insert" Text="Insert" />
                            <asp:Button ID="InsertCancelButton" runat="server" CausesValidation="False" CssClass="btn btn-cancel" CommandName="Cancel" Text="Cancel" />
                        </div>
                </div>
            </InsertItemTemplate>
            <%--<ItemTemplate>
        CustomerID:
        <asp:Label ID="CustomerIDLabel" runat="server" Text='<%# Eval("CustomerID") %>' />
        <br />
        CustomerName:
        <asp:Label ID="CustomerNameLabel" runat="server" Text='<%# Bind("CustomerName") %>' />
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
        PostalCode:
        <asp:Label ID="PostalCodeLabel" runat="server" Text='<%# Bind("PostalCode") %>' />
        <br />
        CountryID:
        <asp:Label ID="CountryIDLabel" runat="server" Text='<%# Bind("CountryID") %>' />
        <br />
        Email:
        <asp:Label ID="EmailLabel" runat="server" Text='<%# Bind("Email") %>' />
        <br />
        IsActive:
        <asp:CheckBox ID="IsActiveCheckBox" runat="server" Checked='<%# Bind("IsActive") %>' Enabled="false" />
        <br />
        CreateBy:
        <asp:Label ID="CreateByLabel" runat="server" Text='<%# Bind("CreateBy") %>' />
        <br />
        CreateDate:
        <asp:Label ID="CreateDateLabel" runat="server" Text='<%# Bind("CreateDate") %>' />
        <br />
        ModifyBy:
        <asp:Label ID="ModifyByLabel" runat="server" Text='<%# Bind("ModifyBy") %>' />
        <br />
        ModifyDate:
        <asp:Label ID="ModifyDateLabel" runat="server" Text='<%# Bind("ModifyDate") %>' />
        <br />
        StateName:
        <asp:Label ID="StateNameLabel" runat="server" Text='<%# Bind("StateName") %>' />
        <br />
        CountryName:
        <asp:Label ID="CountryNameLabel" runat="server" Text='<%# Bind("CountryName") %>' />
        <br />
        <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
        &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
        &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
    </ItemTemplate>--%>
        </asp:FormView>
        <br />
        <asp:SqlDataSource ID="dsFormView" runat="server" ConnectionString="<%$ ConnectionStrings:SummerBreezeConnectionString %>" DeleteCommand="adn_Customer_DELETE" DeleteCommandType="StoredProcedure" InsertCommand="adn_Customer_INSERT" InsertCommandType="StoredProcedure" SelectCommand="adn_Customer_SELECT" SelectCommandType="StoredProcedure" UpdateCommand="adn_Customer_UPDATE" UpdateCommandType="StoredProcedure">
            <DeleteParameters>
                <asp:Parameter Name="CustomerID" Type="Int32" />
                <asp:Parameter Name="ModifyBy" Type="String" />
            </DeleteParameters>
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

    <div id="popup" style="max-width: 100%; overflow-y: scroll;">
        <asp:GridView CssClass="table table-hover table-striped" ID="gvCustomer" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerID" DataSourceID="gvDataSource" OnRowUpdated="gvCustomer_RowUpdated" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanged="gvCustomer_SelectedIndexChanged">
            <Columns>
                <asp:CommandField ShowEditButton="false" ValidationGroup="update" />
                <asp:TemplateField HeaderText="Name" SortExpression="Name">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxName" runat="server" Text='<%# Bind("CustomerName") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBoxName" ValidationGroup="update" ForeColor="Red" ErrorMessage="First Name is Required" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblName" runat="server" Text='<%# Bind("CustomerName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="CustomerTitle" HeaderText="Title" SortExpression="Title" />
                <asp:BoundField DataField="Address1" HeaderText="Address" SortExpression="Address1" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:TemplateField HeaderText="State" SortExpression="StateName">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlBoxStateID" runat="server" Text='<%# Bind("StateID") %>' DataSourceID="dsState" DataTextField="StateName" DataValueField="StateID" ></asp:DropDownList>
                   <asp:SqlDataSource ID="dsState" runat="server" ConnectionString="<%$ ConnectionStrings:SummerBreezeConnectionString %>" SelectCommand="adn_State_SELECT" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                     </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblStateID" runat="server" Text='<%# Bind("StateName") %>'></asp:Label>
                        </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="PostalCode" HeaderText="PostalCode" SortExpression="PostalCode" />
                <asp:TemplateField HeaderText="Country" SortExpression="CountryName">
                    <EditItemTemplate>
                        <asp:DropDownList ID="ddlCountryID" runat="server" Text='<%# Bind("CountryID") %>' DataSourceID="dsCountry" DataTextField="CountryName" DataValueField="CountryID"></asp:DropDownList>
                        <asp:SqlDataSource ID="dsCountry" runat="server" ConnectionString="<%$ ConnectionStrings:SummerBreezeConnectionString %>" SelectCommand="adn_Country_SELECT" SelectCommandType="StoredProcedure"></asp:SqlDataSource>

                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblCOuntryID" runat="server" Text='<%# Bind("CountryName") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Email" SortExpression="Email">
                    <EditItemTemplate>
                        <asp:TextBox ID="TextBoxEmail" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                        <asp:RequiredFieldValidator runat="server" ControlToValidate="TextBoxEmail" ValidationGroup="update" ForeColor="Red" ErrorMessage="Email is Required" />
                        <asp:RegularExpressionValidator ID="regexEmailValid" runat="server" ValidationGroup="update" ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="TextBoxEmail" ForeColor="Red" ErrorMessage="Invalid Email Format"></asp:RegularExpressionValidator>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Label ID="lblEmail" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="ModifyBy" HeaderText="ModifyBy" SortExpression="ModifyBy" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="gvDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:SummerBreezeConnectionString %>" SelectCommand="adn_Customer_SELECT" SelectCommandType="StoredProcedure" UpdateCommand="adn_Customer_UPDATE" UpdateCommandType="StoredProcedure">
            <UpdateParameters>

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
    <div>
        <br />
    </div>
</div>

