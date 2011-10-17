<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<LittleTraveller.Models.Customer>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Edit</h2>

    <% using (Html.BeginForm()) {%>
        <%: Html.ValidationSummary(true) %>
        
        <fieldset>
            <legend>Fields</legend>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.CustomerNum) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.CustomerNum) %>
                <%: Html.ValidationMessageFor(model => model.CustomerNum) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.CompanyName) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.CompanyName) %>
                <%: Html.ValidationMessageFor(model => model.CompanyName) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.BillToAddr1) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.BillToAddr1) %>
                <%: Html.ValidationMessageFor(model => model.BillToAddr1) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.BillToAddr2) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.BillToAddr2) %>
                <%: Html.ValidationMessageFor(model => model.BillToAddr2) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.BillToCity) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.BillToCity) %>
                <%: Html.ValidationMessageFor(model => model.BillToCity) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.BillToState) %>
            </div>
            <div class="editor-field">
                <%: Html.DropDownListFor(c => c.BillToState, (SelectList)ViewData["states"]) %>
                <%: Html.ValidationMessageFor(model => model.BillToState) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.BillToZip5) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.BillToZip5) %>
                <%: Html.ValidationMessageFor(model => model.BillToZip5) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.BillToZip4) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.BillToZip4) %>
                <%: Html.ValidationMessageFor(model => model.BillToZip4) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.BillToPhone) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.BillToPhone) %>
                <%: Html.ValidationMessageFor(model => model.BillToPhone) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.BillToFax) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.BillToFax) %>
                <%: Html.ValidationMessageFor(model => model.BillToFax) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.email) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.email) %>
                <%: Html.ValidationMessageFor(model => model.email) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.ShipToAddr1) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.ShipToAddr1) %>
                <%: Html.ValidationMessageFor(model => model.ShipToAddr1) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.ShipToAddr2) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.ShipToAddr2) %>
                <%: Html.ValidationMessageFor(model => model.ShipToAddr2) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.ShipToCity) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.ShipToCity) %>
                <%: Html.ValidationMessageFor(model => model.ShipToCity) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.ShipToState) %>
            </div>
            <div class="editor-field">
                <%: Html.DropDownListFor(c => c.ShipToState, (SelectList)ViewData["states"]) %>
                <%: Html.ValidationMessageFor(model => model.ShipToState) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.ShipToZip5) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.ShipToZip5) %>
                <%: Html.ValidationMessageFor(model => model.ShipToZip5) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.ShipToZip4) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.ShipToZip4) %>
                <%: Html.ValidationMessageFor(model => model.ShipToZip4) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.ShipToPhone) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.ShipToPhone) %>
                <%: Html.ValidationMessageFor(model => model.ShipToPhone) %>
            </div>
            
            <div class="editor-label">
                <%: Html.LabelFor(model => model.ShipToFax) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.ShipToFax) %>
                <%: Html.ValidationMessageFor(model => model.ShipToFax) %>
            </div>
            
            <p>
                <input type="submit" value="Save" />
            </p>
        </fieldset>

    <% } %>

    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>

</asp:Content>

