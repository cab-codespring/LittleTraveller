<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<LittleTraveller.Models.Customer>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Details</h2>

    <fieldset>
        <legend>Fields</legend>
        
        <div class="display-label">CustomerNum</div>
        <div class="display-field"><%: Model.CustomerNum %></div>
        
        <div class="display-label">CompanyName</div>
        <div class="display-field"><%: Model.CompanyName %></div>
        
        <div class="display-label">BillToAddr1</div>
        <div class="display-field"><%: Model.BillToAddr1 %></div>
        
        <div class="display-label">BillToAddr2</div>
        <div class="display-field"><%: Model.BillToAddr2 %></div>
        
        <div class="display-label">BillToCity</div>
        <div class="display-field"><%: Model.BillToCity %></div>
        
        <div class="display-label">BillToState</div>
        <div class="display-field"><%: Model.BillToState %></div>
        
        <div class="display-label">BillToZip5</div>
        <div class="display-field"><%: Model.BillToZip5 %></div>
        
        <div class="display-label">BillToZip4</div>
        <div class="display-field"><%: Model.BillToZip4 %></div>
        
        <div class="display-label">BillToPhone</div>
        <div class="display-field"><%: Model.BillToPhone %></div>
        
        <div class="display-label">BillToFax</div>
        <div class="display-field"><%: Model.BillToFax %></div>
        
        <div class="display-label">email</div>
        <div class="display-field"><%: Model.email %></div>
        
        <div class="display-label">ShipToAddr1</div>
        <div class="display-field"><%: Model.ShipToAddr1 %></div>
        
        <div class="display-label">ShipToAddr2</div>
        <div class="display-field"><%: Model.ShipToAddr2 %></div>
        
        <div class="display-label">ShipToCity</div>
        <div class="display-field"><%: Model.ShipToCity %></div>
        
        <div class="display-label">ShipToState</div>
        <div class="display-field"><%: Model.ShipToState %></div>
        
        <div class="display-label">ShipToZip5</div>
        <div class="display-field"><%: Model.ShipToZip5 %></div>
        
        <div class="display-label">ShipToZip4</div>
        <div class="display-field"><%: Model.ShipToZip4 %></div>
        
        <div class="display-label">ShipToPhone</div>
        <div class="display-field"><%: Model.ShipToPhone %></div>
        
        <div class="display-label">ShipToFax</div>
        <div class="display-field"><%: Model.ShipToFax %></div>
        
    </fieldset>
    <p>

        <%: Html.ActionLink("Edit", "Edit", new { id=Model.CustomerNum }) %> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>

</asp:Content>

